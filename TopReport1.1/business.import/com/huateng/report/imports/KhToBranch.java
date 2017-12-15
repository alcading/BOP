package com.huateng.report.imports;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.report.imports.common.Constants;
import com.huateng.report.imports.common.WhjCommonService;
import com.huateng.report.utils.ReportUtils;

import east.utils.tools.DBUtil;
import resource.bean.pub.base.BaseWhjBranchInfo;

public class KhToBranch implements Runnable{

	private Log logger = LogFactory.getLog(KhToBranch.class);
	private BaseWhjBranchInfo branchInfo = null;
	private String jgbs;
	private String rq;

	public void run() {
		khToBranch(branchInfo);
	}

	public KhToBranch(BaseWhjBranchInfo branchInfo) {
		this.branchInfo = branchInfo;
		this.jgbs = branchInfo.getWhjjgbs();
		//this.khToBranch(branchInfo);
	}

	private void khToBranch(BaseWhjBranchInfo branchInfo) {

		String filePath = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9001);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = DateUtil.dateToNumber(new Date());
		try {
			rq = sdf.format(DateUtil.getStartDateByDays(DateUtil.stringToDate2(date), 1));
		} catch (CommonException e) {
			e.printStackTrace();
		}
		jgbs = branchInfo.getWhjjgbs();
		String path = filePath + jgbs + "/" + rq + "/";
		logger.debug("####" + jgbs + "####路径:" + path);
		// 读取文件，开发时先读取本地文件，测试时通过FTP读取，放开上方注释
		// 先判断有无境外交易，有则同步客户表，无则不处理
		boolean flag = readFile1(path);
		if (flag) {
			logger.debug("####" + jgbs + "####有境外交易开始同步客户信息前先删除历史客户信息");
			doDeleteKh(jgbs);
			logger.debug("####" + jgbs + "####有境外交易开始同步客户信息");
			boolean flag1 = readFile(path);
			if (flag1) {
				logger.debug("####" + jgbs + "####同步客户信息成功");
			}
		} else {
			logger.debug("####" + jgbs + "####无境外交易，结束客户信息同步");
		}

	}

	/**
	 * 删除该机构下历史客户信息
	 * 
	 * @param jgbs
	 */
	private void doDeleteKh(String jgbs) {

		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		whjCommonService.delDskhb(jgbs);
		whjCommonService.delDskhxxwj(jgbs);
		whjCommonService.delTskxxdjb(jgbs);
	}

	/**
	 * 判断有无境外交易
	 * 
	 * @param filePath1
	 * @return
	 */
	private boolean readFile1(String filePath1) {
		File filep = new File(filePath1);
		File[] files = filep.listFiles();

		String fileNameA = "A" + rq;
		String fileNameB = "B" + rq;
		for (File file : files) {
			if ((file.getName().equals(fileNameA) && file.length() != 0)
					|| (file.getName().equals(fileNameB) && file.length() != 0)) {
				return true;
			}
		}

		return false;

	}

	private boolean readFile(String path) {

		File filep = new File(path);
		File[] files = filep.listFiles();
		boolean flag = true;

		// 循环读取文件
		for (File file : files) {
			if (file.isFile() && file.exists() && (!file.getName().contains("A") && !file.getName().contains("B"))) {
				// 定义数组用来记录每行数据
				List<String> list = new ArrayList<String>();
				// 获取文件名
				String fileName = file.getName();
				String pathFileName = path + fileName;

				// 读文件
				InputStreamReader reader;
				try {
					reader = new InputStreamReader(new FileInputStream(pathFileName), "GBK");
					BufferedReader bReader = new BufferedReader(reader);
					// 定义每行数据
					String readMsg;
					while ((readMsg = bReader.readLine()) != null) {
						// 将数据加入数组
						list.add(readMsg);
					}
					bReader.close();
					// 对当前文件中数组数据进行分析
					flag = doAnalysis(list, fileName) && flag;
				} catch (Exception e) {
					e.printStackTrace();
				}

			}

		}

		return flag;
	}

	/**
	 * 对读取的数据进行分析操作
	 * 
	 * @param list
	 * @throws CommonException
	 * @throws SQLException
	 */
	private boolean doAnalysis(final List<String> list, String filename) throws CommonException, SQLException {

		Connection conn = null;
		conn = DBUtil.getConnection();
		conn.setAutoCommit(false);
		PreparedStatement ps = null;
		// 对私客户表
		if (filename.contains("dskhb")) {
			double begin = System.currentTimeMillis();
			String ZJZL = "";
			String ZJHM = "";
			String GJDQ = "";
			String ZWXM = "";
			String ZDYHH = jgbs;
			int i = 0;
			ps = conn.prepareStatement("insert into whj_dskhb(id,zjzl,zjhm,zwxm,gjdq,ZDYHH) values" + "(?,?,?,?,?,?)");
			for (String str : list) {
				i++;
				String[] strs = str.split("\\|");
				if (strs.length > 9) {
					ZJZL = strs[0];
					ZJHM = strs[1];
					GJDQ = strs[2];
					ZWXM = strs[8];
				}
				ps.setString(1, ReportUtils.getUUID());
				ps.setObject(2, ZJZL);
				ps.setObject(3, ZJHM);
				ps.setObject(4, ZWXM);
				ps.setObject(5, GJDQ);
				ps.setObject(6, ZDYHH);
				ps.addBatch();
				ps.executeBatch();

				if (i % 200 == 0 || i == list.size() - 1) {
					conn.commit();
					ps.clearBatch();
				}

			}
			ps.close();
			double end = System.currentTimeMillis();
			logger.debug("机构" + ZDYHH + "导入dskhb表共" + i + "条记录用时" + (end - begin) + "毫秒,平均存入每条记录用时"
					+ ((end - begin) / i) + "毫秒");
			return true;
		} else if (filename.contains("dskhxxwj")) {
			double begin = System.currentTimeMillis();

			String ZJZL = "";
			String ZJHM = "";
			String ZHDH = "";
			String ZDYHH = jgbs;
			int i = 0;
			ps = conn.prepareStatement("insert into whj_dskhxxwj(id,zjzl,zjhm,zhdh,zdyhh) values" + "(?,?,?,?,?)");
			for (String str : list) {
				i++;
				String[] strs = str.split("\\|");
				if (strs.length > 3) {
					ZHDH = strs[0];
					ZJZL = strs[1];
					ZJHM = strs[2];
				}

				ps.setString(1, ReportUtils.getUUID());
				ps.setObject(2, ZJZL);
				ps.setObject(3, ZJHM);
				ps.setObject(4, ZHDH);
				ps.setObject(5, ZDYHH);
				ps.addBatch();
				ps.executeBatch();

				if (i % 200 == 0 || i == list.size() - 1) {
					conn.commit();
					ps.clearBatch();
				}
			}
			ps.close();
			double end = System.currentTimeMillis();
			logger.debug("机构" + ZDYHH + "导入dskhxxwj表共" + i + "条记录用时" + (end - begin) + "毫秒,平均存入每条记录用时"
					+ ((end - begin) / i) + "毫秒");
			return true;
		} else if (filename.contains("tskxxdj")) {
			double begin = System.currentTimeMillis();
			int i = 0;
			ps = conn.prepareStatement("insert into whj_tskxxdj(id,zhdh,wzkh,kh,jgbs) values" + "(?,?,?,?,?)");

			String ZHDH = "";
			String WZKH = "";
			String KH = "";
			for (String str : list) {
				String[] strs = str.split("\\|");
				if (strs.length > 3) {
					ZHDH = strs[1];
					WZKH = strs[3];
					KH = strs[2];
				}
				ps.setString(1, ReportUtils.getUUID());
				ps.setObject(2, ZHDH);
				ps.setObject(3, WZKH);
				ps.setObject(4, KH);
				ps.setObject(5, jgbs);
				ps.addBatch();
				ps.executeBatch();

				if (i % 200 == 0 || i == list.size() - 1) {
					conn.commit();
					ps.clearBatch();
				}
			}
			ps.close();
			double end = System.currentTimeMillis();
			logger.debug("机构" + jgbs + "导入tskxxdjb表共" + i + "条记录用时" + (end - begin) + "毫秒,平均存入每条记录用时"
					+ ((end - begin) / i) + "毫秒");
			return true;
		}

		return false;
	}

}
