/*
 * Created on 2005-5-23
 * $Id: FiveClassAltModeCondition.java,v 1.1 2005/06/10 10:17:47 daishenghua Exp $
 *
 * Copyright 2005 Shanghai Huateng Software, Limited. All rights reserved.
 * HUATENG PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 */
package com.huateng.ebank.business.workflow.bean;



/**
 * @author 	UU_Wu 2010-11-20
 * @version $Revision: 1.1 $
 *
 * 宸ヤ綔娴佹疮涓换锷″垎閰崭汉锻榖ean
 */
public class WorkFlowAssignedOprBean {

    private String piid;//娴佺▼瀹炰緥鍙??
    private String[] oprId;//鎿崭綔锻榠d
    private String currStopId;//褰揿墠瀹℃壒璺嚎鑺傜偣鍙??
    private String routeId;//娴佺▼瀹炰緥镓??鐢ㄥ镓硅矾绾跨紪鍙??
    private String position;//涓庢鍦ㄦ墽琛岀殑浠诲姟鍏崇郴锛??涔嫔墠锛??褰揿墠锛??涔嫔悗锛??
    private String nowStopId;//姝ｅ湪镓ц镄勪换锷＄殑瀹℃壒璺嚎鑺傜偣鍙??
	public String getPiid() {
		return piid;
	}
	public void setPiid(String piid) {
		this.piid = piid;
	}

	public String getCurrStopId() {
		return currStopId;
	}
	public void setCurrStopId(String currStopId) {
		this.currStopId = currStopId;
	}
	public String getRouteId() {
		return routeId;
	}
	public void setRouteId(String routeId) {
		this.routeId = routeId;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getNowStopId() {
		return nowStopId;
	}
	public void setNowStopId(String nowStopId) {
		this.nowStopId = nowStopId;
	}
	public String[] getOprId() {
		return oprId;
	}
	public void setOprId(String[] oprId) {
		this.oprId = oprId;
	}



}