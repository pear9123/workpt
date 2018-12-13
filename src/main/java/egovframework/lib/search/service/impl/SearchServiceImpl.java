/**
 * 
 *
 */
package egovframework.lib.search.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.lib.search.service.SearchService;
import egovframework.lib.search.service.SearchVO;
import egovframework.lib.search.service.impl.SearchDAO;

@Service("SearchService")
public class SearchServiceImpl implements SearchService{
	
	@Resource(name = "SearchDAO")
    private SearchDAO SearchDAO;

	/**
	 * 통합 검색
	 * @param 
	 * @return List(메인 VIEW)
	 * @throws Exception
	 */
	@Override
	public Map<String, Object> SelectlibList(String lib_name) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		List<SearchVO> slist = SearchDAO.SelectlibList(lib_name);
		map.put("SearchList", slist);
		return map;
	}
	
	/**
	 * 상세 검색
	 * @param 
	 * @return List(메인 VIEW)
	 * @throws Exception
	 */
	@Override
	public SearchVO SelectDetail(String uid) throws Exception {
		return SearchDAO.SelectDetail(uid);
	}
	
}