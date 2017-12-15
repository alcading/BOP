package com.huateng.report.imports.batch;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.report.dataquery.service.WhjTxService;
import com.huateng.report.dataquery.service.WhjXfService;
import com.huateng.report.imports.common.Constants;
import com.huateng.report.utils.ReportUtils;

import resource.bean.pub.WhjSend;
import resource.bean.pub.WhjTx;
import resource.bean.pub.WhjXf;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

public class WhjImportJobTaskFtp {
	private static final Logger logger = Logger.getLogger(WhjImportJobTaskFtp.class);
    private String rq;
    private String yrq;
	/**
	 * 外汇报送-读取文件 add by tianqf 20170815
	 * 
	 * @throws CommonException
	 */
	public void doBiz() throws CommonException {
		// 通过FTP方式去各家行数交平台读取数据文件，
//		WhjBranchInfoService whjBranchInfoService = WhjBranchInfoService.getInstance();
//		List<BaseWhjBranchInfo> list = whjBranchInfoService.getWhjBranchInfo();
//		logger.debug("####共有:"+list.size()+"家数交FTP连接");
//		ExecutorService bankSrv = Executors.newCachedThreadPool();
//		for (BaseWhjBranchInfo branchInfo : list) {
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			FtpToBranch ftpToBranch = new FtpToBranch(branchInfo);
//			bankSrv.execute(ftpToBranch);
//		}
		
		String filePath1 = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9051);
		String filePath2 = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9052);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
		String date = DateUtil.dateToNumber(new Date());
		rq = sdf.format(new Date());
		yrq = sdf2.format(DateUtil.getStartDateByDays(DateUtil.stringToDate2(date), 1));
		String path1 = filePath1+"bankdata"+rq+".log";
		String path2 = filePath2+"bankdata"+rq+".log";
		boolean flag1 = readFile(path1);
		boolean flag2 = readFile(path2);
		if (flag1&&flag2) {
			logger.debug("****读取MTS上报日志信息成功****");
		}
		

	}
	
	/**
	 * 读取文件
	 * @param filePath
	 * @return
	 */
	private boolean readFile(String path) {

		logger.debug("读取的文件为："+path);
		File file = new File(path);
		
		if(file.isFile()&&file.exists()){
			// 定义数组用来记录每行数据
			List<String> list = new ArrayList<String>();
			// 读文件
			InputStreamReader reader;
			try {
				reader = new InputStreamReader(new FileInputStream(path), "UTF-8");
				BufferedReader bReader = new BufferedReader(reader);
				// 定义每行数据
				String readMsg;
				while ((readMsg = bReader.readLine()) != null) {
					logger.debug("****文件：" + path + "****内容" + readMsg);
					// 将数据加入数组
					list.add(readMsg);
				}
				bReader.close();
				// 对当前文件中数组数据进行分析
				int lx;
				if(path.contains("CRD")){
					lx = 0;
				}else{
					lx = 1;
				}
				return doAnalysis(list,lx);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return false;
	}

	/**
	 * 处理文件
	 * @param list
	 * @throws CommonException 
	 */
	private boolean doAnalysis(List<String> list,int lx) throws CommonException {

		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();
		for(String str : list){
			
			String[] s = str.split("\\<");
			logger.debug(s[1]);
			logger.debug(s[3]);
			logger.debug(s[4]);
			String scsj = s[1].substring(0,19);
			String jgdm = s[3].substring(6,10);
			String zt =s[4].contains("成功")?"上报成功":"上报失败";
			String llx = lx==0?"提现":"消费";
			
			//通过jgdm查询当天上报的文件信息
			WhjTxService whjTxService = WhjTxService.getInstance();
			List<WhjTx> txList = whjTxService.queryTx(jgdm,yrq);
			int scjlbsTx = txList.size();
			
			WhjXfService whjXfService = WhjXfService.getInstance();
			List<WhjXf> xfList = whjXfService.queryXf(jgdm,yrq);
			int scjlbsXf = xfList.size();
			
			int scjlbs = lx==0?scjlbsTx:scjlbsXf;
			
			WhjSend whjSend = new WhjSend();
			whjSend.setId(ReportUtils.getUUID());
			whjSend.setBankCode(jgdm);
			whjSend.setScsj(scsj);
			whjSend.setLx(llx);
			whjSend.setZt(zt);
			whjSend.setWjm(jgdm);
			whjSend.setScjlbs(String.valueOf(scjlbs));
			
			rootDao.save(whjSend);
		}
		
		
		return false;
	}
}
