package egovframework.lib.kakao.search;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringEscapeUtils;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.JsonParseException;

@Controller
public class isbnsearch {
	
	@RequestMapping(value = "/kakao/api.do")
	public String main(String[] args, HttpServletRequest request, ModelMap model ) throws ParseException {
		String text2  = request.getParameter("text");
		String booklist = null;
		System.out.println(text2);
        String clientId = "8c4491d6abb54faa9a4448b3744a254c";//애플리케이션 클라이언트 아이디값";
        try {
            String text = URLEncoder.encode(text2, "UTF-8");
            String apiURL = "https://dapi.kakao.com/v3/search/book?target=title&query="+ text; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", "KakaoAK "+clientId);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            booklist = response.toString();
            
            List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();
            JSONParser parser = new JSONParser();
            JSONObject univ = (JSONObject)parser.parse(booklist);
            //System.out.println("=="+univ.toJSONString());
            JSONArray arr = (JSONArray)univ.get("documents");
            data = utils.getListMapFromJsonArray(arr);
            
            System.out.println("=="+data);
            model.addAttribute("items", data);
        } catch (Exception e) {
            System.out.println(e);
        }
        
//        List<Map<String, Object>> data = new ArrayList<Map<String, Object>>();
//        JSONParser parser = new JSONParser();
//        try {
//			JSONObject obj = (JSONObject)parser.parse(booklist);
//			JSONArray ja = (JSONArray)obj.get("document");
//			System.out.println(ja.size());
//			for(int i=0; i<ja.size(); i++){
//				JSONObject tmp = (JSONObject)ja.get(i);
//				String title = (String)tmp.get("title");
//				System.out.println(ja.get(i));
//			}
//		} catch (ParseException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
        
        
       
        return "kakao/list";
    }
	
	
	
}
