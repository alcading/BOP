package com.huateng.report.imports.batch;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.log4j.Logger;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.report.imports.KhToBranch;
import com.huateng.service.pub.WhjBranchInfoService;

import resource.bean.pub.base.BaseWhjBranchInfo;

public class WhjImportJobTaskKh {
	private static final Logger logger = Logger.getLogger(WhjImportJobTaskKh.class);

	/**
	 * 外汇报送-读取文件 add by tianqf 20170815
	 * 
	 * @throws CommonException
	 */
	public void doBiz() throws CommonException {
		logger.debug("####开始客户信息导入");

		WhjBranchInfoService whjBranchInfoService = WhjBranchInfoService.getInstance();
		List<BaseWhjBranchInfo> list = whjBranchInfoService.getWhjBranchInfo();
		ExecutorService bankSrv = Executors.newCachedThreadPool();
		for (BaseWhjBranchInfo branchInfo : list) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			KhToBranch KhToBranch = new KhToBranch(branchInfo);
			bankSrv.execute(KhToBranch);
		}

	}

}
