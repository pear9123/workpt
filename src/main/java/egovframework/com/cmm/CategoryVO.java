package egovframework.com.cmm;

public class CategoryVO {

	private int uid;
	private String cate_title;
	private int parent_id;
	private int depth;
	private int sort;
	private int sort2;
	private String naviInfo1;
	private String naviInfo2;
	private String naviInfo3;
	private String flag;
	private String urls;
	private String lv;
	private String c_nm;
	private String lg_title;
	private String md_title;
	private String sm_title;
	/** 1이면 new 2이면 best **/
	private int NewBestcheck;
	/** 1이면 new 2이면 best **/
	private String NewBestName;
	/** 정렬 순서 **/
	private String orderby;
	/** 임시 아이디 저장소 **/
	private String id;
	/** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** 첫페이지 인덱스 */
    private int firstIndex = 1;

    /** 마지막페이지 인덱스 */
    private int lastIndex = 1;

    /** 페이지당 레코드 개수 */
    private int recordCountPerPage = 10;

    /** 레코드 번호 */
    private int rowNo = 0;
	
	
	
	
    
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	public String getLg_title() {
		return lg_title;
	}
	public void setLg_title(String lg_title) {
		this.lg_title = lg_title;
	}
	public String getMd_title() {
		return md_title;
	}
	public void setMd_title(String md_title) {
		this.md_title = md_title;
	}
	public String getSm_title() {
		return sm_title;
	}
	public void setSm_title(String sm_title) {
		this.sm_title = sm_title;
	}
	public int getNewBestcheck() {
		return NewBestcheck;
	}
	public void setNewBestcheck(int newBestcheck) {
		NewBestcheck = newBestcheck;
	}
	public String getNewBestName() {
		return NewBestName;
	}
	public void setNewBestName(String newBestName) {
		NewBestName = newBestName;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getFirstIndex() {
		return firstIndex;
	}
	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}
	public int getLastIndex() {
		return lastIndex;
	}
	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}
	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}
	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}
	public int getRowNo() {
		return rowNo;
	}
	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}
	public String getC_nm() {
		return c_nm;
	}
	public void setC_nm(String c_nm) {
		this.c_nm = c_nm;
	}
	public int getSort2() {
		return sort2;
	}
	public void setSort2(int sort2) {
		this.sort2 = sort2;
	}
	public String getNaviInfo1() {
		return naviInfo1;
	}
	public void setNaviInfo1(String naviInfo1) {
		this.naviInfo1 = naviInfo1;
	}
	public String getNaviInfo2() {
		return naviInfo2;
	}
	public void setNaviInfo2(String naviInfo2) {
		this.naviInfo2 = naviInfo2;
	}
	public String getNaviInfo3() {
		return naviInfo3;
	}
	public void setNaviInfo3(String naviInfo3) {
		this.naviInfo3 = naviInfo3;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getCate_title() {
		return cate_title;
	}
	public void setCate_title(String cate_title) {
		this.cate_title = cate_title;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getUrls() {
		return urls;
	}
	public void setUrls(String urls) {
		this.urls = urls;
	}
	public String getLv() {
		return lv;
	}
	public void setLv(String lv) {
		this.lv = lv;
	}
	
	
	
	
}
