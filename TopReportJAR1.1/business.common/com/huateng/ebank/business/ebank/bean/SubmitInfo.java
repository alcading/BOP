/*
 * ==================================================================
 * The Huateng Software License
 *
 * Copyright (c) 2004-2005 Huateng Software System.  All rights
 * reserved.
 * ==================================================================
 */
package com.huateng.ebank.business.ebank.bean;
import java.util.Date;
/**
 * @author <a href="mailto:liu_wen@huateng.com">Liu Wen </a>
 * @version $Revision: 1.2 $
 * 
 * 客户查询条件实体Bean.
 */
public class SubmitInfo {

	private Date date;
	private String trlno;
	private String name;
	private String attitude;//结果
	private String reason;//意见
	private String post;
	
    public String getAttitude() {
        return attitude;
    }
    public void setAttitude(String attitude) {
        this.attitude = attitude;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPost() {
        return post;
    }
    public void setPost(String post) {
        this.post = post;
    }
    public String getReason() {
        return reason;
    }
    public void setReason(String reason) {
        this.reason = reason;
    }
    public String getTrlno() {
        return trlno;
    }
    public void setTrlno(String trlno) {
        this.trlno = trlno;
    }
	

}