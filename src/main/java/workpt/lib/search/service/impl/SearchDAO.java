package workpt.lib.search.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import workpt.lib.search.service.SearchVO;

@Repository("SearchDAO")
public class SearchDAO extends EgovComAbstractDAO{


    /**
     * 조건에 맞는 도서 목록을 조회 한다.
     *
     * @param 
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
	public List<SearchVO> SelectlibList(String lib_name) {
    	return (List<SearchVO>) list("SearchDAO.SelectlibList", lib_name);
    }
}
