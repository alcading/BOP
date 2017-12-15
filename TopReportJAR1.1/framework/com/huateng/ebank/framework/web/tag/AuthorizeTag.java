/**
 *
 * Copyright (c) 2003 ShangHai Huateng Software System Limited.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of
 * ShangHai Huateng Software Limited. ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use
 * it only in accordance with the terms of the license agreement you
 * entered into with Huateng.
 */
package com.huateng.ebank.framework.web.tag;import java.util.Hashtable;import javax.servlet.http.HttpSession;import javax.servlet.jsp.JspException;import javax.servlet.jsp.tagext.TagSupport;import com.huateng.ebank.business.common.UserSessionInfo;

/**
 * Tag used to judge whether a user is authorized or not with the specified
 * fucntion id.
 * @author James wu
 * @version
 */
public class AuthorizeTag extends TagSupport {

	private String menulevel;

	private String menuid;

	public AuthorizeTag() {
	}


	public String getMenulevel() {
		return menulevel;
	}
	public void setMenulevel(String menulevel) {
		this.menulevel = menulevel;
	}
	public String getMenuid() {
		return menuid;
	}
	public void setMenuid(String newMenuid) {
		menuid = newMenuid;
	}

	// --------------------------------------------- Public Methods.

	@Override	public int doStartTag() throws JspException {
		if (condition())
			return (EVAL_BODY_INCLUDE);
		return (SKIP_BODY);
	} //--doStartTag

	@Override	public int doEndTag() throws JspException {
		return (EVAL_PAGE);
	}

	/**
	 * Release all allocated resources.
	 */
	@Override	public void release() {
		super.release();

		menulevel = null;
		menuid = null;
}

	/*
	 * 判断用户是否有权限访问这个目录结构
	 */
	protected boolean condition() throws JspException {
		try{
			HttpSession session = pageContext.getSession();
			UserSessionInfo userInfo = (UserSessionInfo)session.getAttribute("USER_SESSION_INFO");
			if(userInfo == null) {
				throw new Exception("UserSessionInfo is null!");
			}

			//Vector userFunctions = userInfo.getUserFunctions();
			Hashtable userFunctions = userInfo.getUserFunctions();
			String[] menuFunctions = menuid.split(",");
			Object menuObj = null ;
			for(int i=0; i<menuFunctions.length; i++){
				menuObj = userFunctions.get(menuFunctions[i].trim());
				if(null != menuObj) return true ;
				//if(userFunctions.contains(menuFunctions[i].trim())) return true;
			}
		}catch (Exception e){
			throw new JspException("[bocompl] Exception in AuthorizeTag : condition " +
			e.getMessage());
		}		return true;
		//return false ;
	} //--condition

}
