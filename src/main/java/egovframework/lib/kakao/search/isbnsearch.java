package egovframework.lib.kakao.search;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.CategoryVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;



@Controller
public class isbnsearch {
	
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertyService;
	
	@RequestMapping(value = "/kakao/api.do")
	public String main(String[] args, HttpServletRequest request, ModelMap model ) throws ParseException {
		String text2  = request.getParameter("text");
		String pageIndex_string = request.getParameter("pageIndex");
		int pageIndex = 0;
		System.out.println("pageIndex_string="+pageIndex_string);
		if(pageIndex_string == null || pageIndex_string.equals("")){
			pageIndex = 1;
		} else {
			pageIndex = Integer.parseInt(pageIndex_string);
		}
		String booklist = null;
		int total_count = 0;
		System.out.println(text2);
        String clientId = "8c4491d6abb54faa9a4448b3744a254c";//애플리케이션 클라이언트 아이디값";
        try {
            String text = URLEncoder.encode(text2, "UTF-8");
            String apiURL = "https://dapi.kakao.com/v3/search/book?target=title&query="+text+"&page="+pageIndex; // json 결과
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
            HashMap<String, String> map = new HashMap<String, String>();
            JSONParser parser = new JSONParser();
            JSONObject univ = (JSONObject)parser.parse(booklist);
//            System.out.println("=="+univ.toJSONString());
            JSONArray arr = (JSONArray)univ.get("documents");
            map = (HashMap<String, String>) univ.get("meta");
            String total_count_string = String.valueOf(map.get("total_count"));
            System.out.println("==="+total_count_string);
            total_count = Integer.parseInt(total_count_string);
//            String page_arr = (String)univ.get("total_count");
            System.out.println("=="+map);
            data = utils.getListMapFromJsonArray(arr);
            
            System.out.println(data);
            model.addAttribute("items", data);
            model.addAttribute("search_text", text2);
            
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
      //*  페이징 설정
        CategoryVO categoryVO = new CategoryVO();
	    categoryVO.setPageUnit(propertyService.getInt("pageUnit")); // 한페이지에서 보여지는 갯수
	    categoryVO.setPageSize(propertyService.getInt("pageSize")); // 한페에지에서 보여지는 페이지수
	    
		PaginationInfo paginationInfo = new PaginationInfo();
		
		paginationInfo.setCurrentPageNo(categoryVO.getPageIndex()); // 현재 페이지
		paginationInfo.setRecordCountPerPage(categoryVO.getPageUnit()); // 한 페이지당 게시되는 게시물 수
		paginationInfo.setPageSize(categoryVO.getPageSize()); // 페이지 리스트에 게시되는 페이지 건수
		
		categoryVO.setFirstIndex(paginationInfo.getFirstRecordIndex()); // 첫번째 페이지 번호
		categoryVO.setLastIndex(paginationInfo.getLastRecordIndex()); // 마지막 페이지 번호
		categoryVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		// 도서 페이지
	    model.addAttribute("pageIndex", categoryVO.getPageIndex());
		paginationInfo.setTotalRecordCount(total_count); // 총 게시물 수
	    model.addAttribute("paginationInfo", paginationInfo);
        
        return "kakao/list";
    }
	
	
	
}
