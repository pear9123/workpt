package egovframework.lib.search.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.lib.search.service.SearchVO;

@Repository("SearchDAO")
public class SearchDAO extends EgovComAbstractDAO{


    /**
     * 목록을 조회 한다.
     *
     * @param 
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
	public List<SearchVO> SelectlibList(String lib_name) {
    	return (List<SearchVO>) list("SearchDAO.SelectlibList", lib_name);
    }
    
    /**
     * 조건 목록을 조회 한다.
     *
     * @param 
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
	public SearchVO SelectDetail(String uid) {
    	return (SearchVO)select("SearchDAO.SelectDetail", uid);
    }
}
