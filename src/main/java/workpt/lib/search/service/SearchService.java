package workpt.lib.search.service;

import java.util.Map;

/**
	 *
	 * @author 공통서비스 개발팀 이중호
	 * @since 2009.04.01
	 * @version 1.0
	 * @see
	 *
	 * <pre>
	 * << 개정이력(Modification Information) >>
	 *
	 *   수정일      수정자           수정내용
	 *  -------    --------    ---------------------------
	 *   2009.04.01  이중호          최초 생성
	 *   2018.05.09  배충한     메인 생성
	 *
	 * </pre>
	 */
	public interface SearchService {
		/**
		 * @param lectureVO
		 * @return List(메인 VIEW)
		 * @throws Exception
		 */
		public Map<String, Object> SelectlibList(String lib_name) throws Exception;
	}
	
