/**
 * FlowPreProcessHandler.java
 * com.huateng.ebank.topbpm.handle
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2011-12-18 		shen_antonio
 *
 * Copyright (c) 2011, TNT All Rights Reserved.
*/

package com.huateng.ebank.topbpm.handle;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.huateng.ebank.business.workflow.WorkFlowParamService;
import com.huateng.ebank.framework.util.ExceptionUtil;
import com.huateng.topbpm.graph.def.ActionHandler;
import com.huateng.topbpm.graph.exe.ExecutionContext;

/**
 * ClassName:FlowPreProcessHandler
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2011-12-18		下午11:53:53
 *
 * @see 	 
 */
public class FlowPreProcessHandler implements ActionHandler {
	private static final Logger logger = Logger.getLogger(FlowPreProcessHandler.class);


	public void execute(ExecutionContext arg0) throws Exception {
		// TODO Auto-generated method stub
		logger.info("---------------FlowPreProcessHandler Enter---------------");
		try{
			Map map = new HashMap();
			String bussType = (String) arg0.getVariable("BUSS_TYPE");
			String amount = arg0.getVariable("AMOUNT").toString();
			Integer startBrhId = new Integer(arg0.getVariable("START_BRHID").toString());
			map.put("BUSS_TYPE",bussType);
			map.put("AMOUNT",amount);
			map.put("START_BRHID",startBrhId);
			WorkFlowParamService workFlowParamService = WorkFlowParamService.getInstance();
			boolean flag = workFlowParamService.checkRouteHasOpr(map);
			if(flag==false){
				throw new Exception("未能找到符合条件的审批员，不能提交");
			}
			logger.info("---------------FlowPreProcessHandler Leave---------------");
		}catch(Exception ex){
			ex.printStackTrace();
			ExceptionUtil.throwCommonException(ex.getMessage());
		}

	}

}

