/*
 * Created on 2005-5-23
 * $Id: FiveClassAltModeCondition.java,v 1.1 2005/06/10 10:17:47 daishenghua Exp $
 *
 * Copyright 2005 Shanghai Huateng Software, Limited. All rights reserved.
 * HUATENG PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 */
package com.huateng.ebank.business.workflow.bean;

import java.util.HashSet;
import java.util.Set;

import com.huateng.ebank.entity.data.workflow.WorkflowTaskInfo;



/**
 * @author 	UU_Wu 2008-6-24
 * @version $Revision: 1.1 $
 *
 * 工作流查询返回Bean.
 */
public class WorkFlowTaskInfoBean {
	private static Set set;

    static {
        set = new HashSet();
        set.add("workflowTaskInfo");
    }
    WorkflowTaskInfo workflowTaskInfo = new WorkflowTaskInfo();

    /**
     * 指定的属性名是否是bean类型的属性。
     * @param propertyName 属性名称
     * @return
     */
    public static boolean isBeanProperty(String propertyName) {
        return set.contains(propertyName);
    }

    private String taskNameName;
    private String processTemplateName;
    private String tlrName;
    private String cname;
    private String taskEndFlagCN;
    private String status;
	public static Set getSet() {
		return set;
	}
	public static void setSet(Set set) {
		WorkFlowTaskInfoBean.set = set;
	}
	public WorkflowTaskInfo getWorkflowTaskInfo() {
		return workflowTaskInfo;
	}
	public void setWorkflowTaskInfo(WorkflowTaskInfo workflowTaskInfo) {
		this.workflowTaskInfo = workflowTaskInfo;
	}
	public String getTlrName() {
		return tlrName;
	}
	public void setTlrName(String tlrName) {
		this.tlrName = tlrName;
	}
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getTaskEndFlagCN() {
		return taskEndFlagCN;
	}
	public void setTaskEndFlagCN(String taskEndFlagCN) {
		this.taskEndFlagCN = taskEndFlagCN;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTaskNameName() {
		return taskNameName;
	}
	public void setTaskNameName(String taskNameName) {
		this.taskNameName = taskNameName;
	}
	public String getProcessTemplateName() {
		return processTemplateName;
	}
	public void setProcessTemplateName(String processTemplateName) {
		this.processTemplateName = processTemplateName;
	}
}