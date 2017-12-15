package com.huateng.ebank.framework.web.struts;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author abudula add at 2010-07-22
 */
public class QueryExportForm {

	public String getEveryPage() {
		return everyPage;
	}

	public void setEveryPage(String everyPage) {
		this.everyPage = everyPage;
	}

	public static final String P_EXP_TYPE = "expType";
	public static final String P_ENCODE = "encoding";
	public static final String P_FILE_NAME = "fileName";
	public static final String P_COL_SORT_NAME = "expElements";
	public static final String P_ZIP_FLAG = "complex";//1 0
	public static final String P_START_PAGE = "startPage";
	public static final String P_END_PAGE = "endPage";
	public static final String P_ALL_PAGE = "allPage";
	public static final String P_PAGE_COUNT= "pageCount";
	public static final String P_EXP_ALL = "expAll";
	public static final String P_EXP_DESC = "desc";
	
	
	

	/**
	 * request,response
	 * @param request
	 * @param response
	 */
	public QueryExportForm(HttpServletRequest request,HttpServletResponse response){
		this.setRequest(request);
		this.setResponse(response);
	}
	
	/**
	 * XML ID
	 */
	private String cqId;

	/**
	 * export type
	 * CVS,EXL,PDF
	 */
	private String exportType;

	/**
	 * encoding
	 * default GBK
	 */
	private String fileEnCode;

	/**
	 * file name
	 */
	private String fileName;

	/**
	 * file head
	 */
	private String[] fileHead;

	/**
	 *
	 * eg: keyparam Map<number,desc>;
	 */
//	private Map<String, Map<String,String>> relationshop;

	/**
	 * sorted file names
	 */
	private String columnSort;

	/**
	 * file data
	 *
	 */
	private List fileBody;

	/**
	 * file tail data
	 */
	private String[] fileTail;

	/**
	 * default false
	 */
	private boolean zipFlag;

	/**
	 * HTTP RESPONSE
	 */
	private HttpServletResponse response;

	/**
	 * 
	 */
	private HttpServletRequest request;
	/**
	 * start page
	 */
	private String startPage;
	/** page element every page. */
	public String everyPage;
	public String getStartPage() {
		return startPage;
	}

	public void setStartPage(String startPage) {
		this.startPage = startPage;
	}

	public String getEndPage() {
		return endPage;
	}

	public void setEndPage(String endPage) {
		this.endPage = endPage;
	}

	public boolean isExpAll() {
		return expAll;
	}

	public void setExpAll(boolean expAll) {
		this.expAll = expAll;
	}

	private String endPage;
	/**
	 * ??
	 */
	private boolean expAll;


	public String getExportType() {
		return exportType;
	}

	public void setExportType(String exportType) {
		this.exportType = exportType;
	}

	public String getFileEnCode() {
		return fileEnCode;
	}

	public void setFileEnCode(String fileEnCode) {
		this.fileEnCode = fileEnCode;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String[] getFileHead() {
		return fileHead;
	}

	public void setFileHead(String[] fileHead) {
		this.fileHead = fileHead;
	}

	public String getColumnSort() {
		return columnSort;
	}

	public void setColumnSort(String columnSort) {
		this.columnSort = columnSort;
	}

	public List getFileBody() {
		return fileBody;
	}

	public void setFileBody(List fileBody) {
		this.fileBody = fileBody;
	}

	public String[] getFileTail() {
		return fileTail;
	}

	public void setFileTail(String[] fileTail) {
		this.fileTail = fileTail;
	}

	public boolean isZipFlag() {
		return zipFlag;
	}

	public void setZipFlag(boolean zipFlag) {
		this.zipFlag = zipFlag;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getCqId() {
		return cqId;
	}

	public void setCqId(String cqId) {
		this.cqId = cqId;
	}

	
	private String maxpage;
	private String perfetch;

	public String getMaxpage() {
		return maxpage;
	}

	public void setMaxpage(String maxpage) {
		this.maxpage = maxpage;
	}

	public String getPerfetch() {
		return perfetch;
	}

	public void setPerfetch(String perfetch) {
		this.perfetch = perfetch;
	}
	
	
}
