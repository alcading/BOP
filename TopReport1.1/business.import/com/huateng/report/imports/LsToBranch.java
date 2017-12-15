package com.huateng.report.imports;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.report.imports.common.Constants;
import com.huateng.report.imports.common.WhjCommonService;
import com.huateng.report.utils.ReportUtils;

import resource.bean.pub.WhjDskhb;
import resource.bean.pub.WhjTx;
import resource.bean.pub.WhjXf;
import resource.bean.pub.WhjXh;
import resource.bean.pub.base.BaseWhjBranchInfo;
import resource.bean.pub.base.BaseWhjDskhb;
import resource.bean.pub.base.BaseWhjXh;
import resource.bean.report.base.BaseBiNationregion;
import resource.bean.report.base.BaseSysCurrency;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

public class LsToBranch implements Runnable {

	private Log logger = LogFactory.getLog(LsToBranch.class);
	private BaseWhjBranchInfo branchInfo = null;
	private String jgbs;
	private String rq;
	private String path;

	public void run() {
		lsToBranch(branchInfo);
	}

	public LsToBranch(BaseWhjBranchInfo branchInfo) {
		this.branchInfo = branchInfo;
		this.jgbs = branchInfo.getWhjjgbs();
	}

	private void lsToBranch(BaseWhjBranchInfo branchInfo) {

		String filePath = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9001);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = DateUtil.dateToNumber(new Date());
		try {
			rq = sdf.format(DateUtil.getStartDateByDays(DateUtil.stringToDate2(date), 1));
		} catch (CommonException e) {
			e.printStackTrace();
		}
		jgbs = branchInfo.getWhjjgbs();
		path = filePath + jgbs + "/" + rq + "/";
		logger.debug("****" + jgbs + "****路径：" + path);
		logger.debug("****" + jgbs + "****开始读取流水信息");

		boolean flagLs = readFile(path, branchInfo);
		if (flagLs) {
			logger.debug("****" + jgbs + "****读取流水信息成功");
		}

	}

	private boolean readFile(String path, BaseWhjBranchInfo branchInfo) {

		File filep = new File(path);
		File[] files = filep.listFiles();
		boolean flag = true;
		// 循环读取文件
		for (File file : files) {
			if (file.isFile() && file.exists()
					&& (file.getName().equals("A" + rq) || file.getName().equals("B" + rq))) {
				// 定义数组用来记录每行数据
				List<String> list = new ArrayList<String>();
				// 获取文件名
				String fileName = file.getName();
				String pathFileName = path + fileName;

				logger.debug("****" + jgbs + "****文件：" + pathFileName);

				// 读文件
				InputStreamReader reader;
				try {
					reader = new InputStreamReader(new FileInputStream(pathFileName), "GBK");
					BufferedReader bReader = new BufferedReader(reader);
					// 定义每行数据
					String readMsg;
					while ((readMsg = bReader.readLine()) != null) {
						logger.debug("****" + jgbs + "****文件：" + pathFileName + "****内容" + readMsg);
						// 将数据加入数组
						list.add(readMsg);
					}
					bReader.close();
					// 对当前文件中数组数据进行分析
					flag = doAnalysis(list, fileName, branchInfo) && flag;
					// doAnalysis(list, fileName, branchInfo);
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
	 * @throws ParseException
	 * @throws CommonException
	 */
	private boolean doAnalysis(List<String> list, String filename, BaseWhjBranchInfo branchInfo)
			throws ParseException, CommonException {

		// 12位金融机构代码
		String jrjgdm = branchInfo.getWhjjgdm();
		// 4位金融机构标识
		String jrjgbs = branchInfo.getWhjjgbs();
		// 获取文件类型(提现还是消费)
		String txOrXf = filename.substring(0, 1);
		// 获取所在地外汇局代码
		String whjdm = branchInfo.getWhjdm();
		// 获取卡号规则位数
		int num = Integer.valueOf(branchInfo.getZdyhh());

		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();

		if ("A".equals(txOrXf)) {
			List<WhjTx> listTx = new ArrayList<WhjTx>();

			for (String str : list) {
				String[] strs = str.split("\\|");
				String jyrq = "";
				if (strs.length == 20) {
					String OPER_TYPE_CODE = strs[0]; // 操作类型
					String REASON_CODE = strs[1]; // 原因
					String REFNO = strs[2]; // 业务参号
					String CERT_TYPE_CODE = strs[3]; // 持卡人身份证类型
					String PTY_COUNTRY_CODE = strs[4]; // 持卡人国家地区
					String ID_CODE = strs[5]; // 身份证件号码
					String PERSON_NAME = strs[6]; // 持卡人姓名
					String ACCTNO = strs[7]; // 卡号
					String JY_CCY_CODE = strs[8]; // 交易货币币种
					String JY_AMT = strs[9]; // 交易货币金额
					String QS_AMT_RMB = strs[10]; // 交易货币折人民币金额
					String MCC_CODE = strs[11]; // MCC码
					String CARD_TYPE_CODE = strs[12]; // 银行卡类型
					String CARD_CHNL_CODE = strs[13]; // 银行卡清算渠道
					String BANK_CODE = strs[14]; // 发卡行金融机构代码
					String BRANCH_SAFECODE = strs[15]; // 发卡网点所在地外汇局代码
					String BIZ_DEAL_TIME = strs[16]; // 交易授权日期及时间
					String COUNTRY_CODE = strs[17]; // 交易国家或地区
					String BANK_SELF_NUM = strs[18]; // 银行内部流水号
					String CARD_SELF_NUM = strs[19]; // 卡组织单号
					String JLZT = "1"; // 记录状态默认1-有效

					Double JY_AMTD = 0d;
					// 通过卡号查询客户信息
					// WhjCommonService whjCommonService =
					// WhjCommonService.getInstance();
					//List<BaseWhjDskhb> dskhbList = getKhxx(ACCTNO, jrjgbs, num);
					// whjCommonService.getWhjDskhb(ACCTNO, jrjgbs);
					Map<String, String> dskhb = getKh(ACCTNO, num);
					if (dskhb != null) {
//						BaseWhjDskhb baseWhjDskhb = dskhbList.get(0);
						// logger.debug(baseWhjDskhb.getZwxm());

						String zjzl = dskhb.get("zjzl");
						String zjhm = dskhb.get("zjhm");
						String zwxm = dskhb.get("zwxm");
						String gjdq = dskhb.get("gjdq");
						// 获取证件类型
						CERT_TYPE_CODE = getCMapByZjzl(zjzl);
						// 获取国家地区
						PTY_COUNTRY_CODE = getPCCByZjzl(CERT_TYPE_CODE);
						// 获取证件号码
						ID_CODE = zjhm;
						// 获取姓名
						PERSON_NAME = zwxm;
						// 获取交易货币币种相关信息
						List<String> bzxx = getJCCbybz(JY_CCY_CODE);

						JY_CCY_CODE = bzxx.get(0);// 币种
						String dotnum = bzxx.get(1);// 小数点信息

						// 按照小数点位截取交易货币金额
						StringBuffer sb = new StringBuffer();
						sb.append(JY_AMT.substring(0, JY_AMT.length() - Integer.valueOf(dotnum)));
						sb.append(".");
						sb.append(JY_AMT.substring(JY_AMT.length() - Integer.valueOf(dotnum), JY_AMT.length()));
						JY_AMTD = Double.parseDouble(sb.toString());
						// 折合人民币金额
						if ("CNY".equals(JY_CCY_CODE)) {
							QS_AMT_RMB = sb.toString();
						}
						// 按照交易国家地区中文名获取代码
						COUNTRY_CODE = getCCbyc(COUNTRY_CODE);
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
						Date date = sdf.parse(BIZ_DEAL_TIME);
						SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
						jyrq = sdf1.format(date);
						// 金融机构代码
						BANK_CODE = jrjgbs;
						// 外汇局代码
						// BRANCH_SAFECODE = whjdm;
						BRANCH_SAFECODE = getFkhwhjdm(gjdq);
						if ("".equals(BRANCH_SAFECODE) || BRANCH_SAFECODE == null) {
							BRANCH_SAFECODE = whjdm;
						}
						// RefNo组装
						StringBuffer refNo = new StringBuffer();
						refNo.append("T");
						refNo.append(BRANCH_SAFECODE);
						refNo.append(BANK_CODE);
						refNo.append(jyrq);
						refNo.append(CARD_TYPE_CODE);
						// 获取顺序号
						String sxh = getSxh(jrjgbs, "1");
						logger.debug("****" + jgbs + "****sxh:" + sxh);
						refNo.append(sxh);
						REFNO = refNo.toString();
						logger.debug("****" + jgbs + "****REFNO" + REFNO);
						WhjTx whjTx = new WhjTx();
						whjTx.setId(ReportUtils.getUUID());
						whjTx.setRefNo(REFNO);
						whjTx.setCertTypeCode(CERT_TYPE_CODE);
						whjTx.setPtyCountryCode(PTY_COUNTRY_CODE);
						whjTx.setIdCode(ID_CODE);
						whjTx.setPersonName(PERSON_NAME);
						whjTx.setAcctno(ACCTNO);
						whjTx.setJyCcyCode(JY_CCY_CODE);
						whjTx.setJyAmt(JY_AMTD);
						whjTx.setQsAmtRmb(Double.parseDouble(QS_AMT_RMB));
						whjTx.setMccCode(MCC_CODE);
						whjTx.setCardTypeCode(CARD_TYPE_CODE);
						whjTx.setCardChnlCode(CARD_CHNL_CODE);
						whjTx.setBankCode(BANK_CODE);
						whjTx.setBranchSafecode(BRANCH_SAFECODE);
						whjTx.setBizDealTime(BIZ_DEAL_TIME);
						whjTx.setCountryCode(COUNTRY_CODE);
						whjTx.setBankSelfNum(BANK_SELF_NUM);
						whjTx.setCardSelfNum(CARD_SELF_NUM);
						whjTx.setOperTypeCode(OPER_TYPE_CODE);
						whjTx.setReasonCode(REASON_CODE);
						whjTx.setJlzt(JLZT);
						// 提现信息插入数据库
						rootDao.save(whjTx);
						listTx.add(whjTx);
					}
				}
			}
			StringBuffer fileName = new StringBuffer();
			fileName.append("CRDTA");
			fileName.append(jrjgdm);
			fileName.append(rq.substring(2, 8));
			String xh = getXh(jrjgbs, "1");
			fileName.append(xh);
			createXmlTx(listTx, branchInfo, fileName.toString());
			return true;
		} else if ("B".equals(txOrXf)) {
			List<WhjXf> listXf = new ArrayList<WhjXf>();
			String jyrq = "";
			for (String str : list) {
				String[] strs = str.split("\\|");
				if (strs.length == 22) {
					String OPER_TYPE_CODE = strs[0];
					String REASON_CODE = strs[1];
					String REFNO = strs[2];
					String CERT_TYPE_CODE = strs[3];
					String PTY_COUNTRY_CODE = strs[4];
					String ID_CODE = strs[5];
					String PERSON_NAME = strs[6];
					String ACCTNO = strs[7];
					String JY_CCY_CODE = strs[8];
					String JY_AMT = strs[9];
					String QS_AMT_RMB = strs[10];
					String MCC_CODE = strs[11];
					String CARD_TYPE_CODE = strs[12];
					String CARD_CHNL_CODE = strs[13];
					String BANK_CODE = strs[14];
					String BRANCH_SAFECODE = strs[15];
					String BIZ_DEAL_TIME = strs[16];
					String COUNTRY_CODE = strs[17];
					String BANK_SELF_NUM = strs[18];
					String CARD_SELF_NUM = strs[19];
					String SH_NAME = strs[20];
					String JY_CHNL = strs[21];
					String JLZT = "1"; // 记录状态默认1-有效

					Double JY_AMTD = 0d;
					// 通过卡号查询客户信息
					// WhjCommonService whjCommonService =
					// WhjCommonService.getInstance();
					// List<BaseWhjDskhb> dskhbList = getKhxx(ACCTNO, jrjgbs,
					// num);
					// whjCommonService.getWhjDskhb(ACCTNO, jrjgbs);
					Map<String, String> dskhb = getKh(ACCTNO, num);
					if (dskhb != null) {
						// BaseWhjDskhb baseWhjDskhb = dskhbList.get(0);
						// logger.debug(baseWhjDskhb.getZwxm());

						String zjzl = dskhb.get("zjzl");
						String zjhm = dskhb.get("zjhm");
						String zwxm = dskhb.get("zwxm");
						String gjdq = dskhb.get("gjdq");

						// 获取证件类型
						CERT_TYPE_CODE = getCMapByZjzl(zjzl);
						// 获取国家地区
						PTY_COUNTRY_CODE = getPCCByZjzl(CERT_TYPE_CODE);
						// 获取证件号码
						ID_CODE = zjhm;
						// 获取姓名
						PERSON_NAME = zwxm;
						// 获取交易货币币种相关信息
						List<String> bzxx = getJCCbybz(JY_CCY_CODE);

						JY_CCY_CODE = bzxx.get(0);// 币种
						String dotnum = bzxx.get(1);// 小数点信息

						// 按照小数点位截取交易货币金额
						StringBuffer sb = new StringBuffer();
						sb.append(JY_AMT.substring(0, JY_AMT.length() - Integer.valueOf(dotnum)));
						sb.append(".");
						sb.append(JY_AMT.substring(JY_AMT.length() - Integer.valueOf(dotnum), JY_AMT.length()));
						JY_AMTD = Double.parseDouble(sb.toString());
						// 折合人民币金额
						if ("CNY".equals(JY_CCY_CODE)) {
							QS_AMT_RMB = sb.toString();
						}
						if (Double.parseDouble(QS_AMT_RMB) <= 1000) {
							logger.debug("消费金额不大于人民币1000元，不做记录");
							continue;
						}

						// 按照交易国家地区中文名获取代码
						COUNTRY_CODE = getCCbyc(COUNTRY_CODE);
						// 时间格式改造
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
						Date date = sdf.parse(BIZ_DEAL_TIME);
						SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
						jyrq = sdf1.format(date);

						// 金融机构代码
						BANK_CODE = jrjgbs;
						// 外汇局代码
						// BRANCH_SAFECODE = whjdm;
						BRANCH_SAFECODE = getFkhwhjdm(gjdq);
						if ("".equals(BRANCH_SAFECODE) || BRANCH_SAFECODE == null) {
							BRANCH_SAFECODE = whjdm;
						}
						// RefNo组装
						StringBuffer refNo = new StringBuffer();
						refNo.append("X");
						refNo.append(BRANCH_SAFECODE);
						refNo.append(BANK_CODE);
						refNo.append(jyrq);
						refNo.append(CARD_TYPE_CODE);
						// 获取顺序号
						String sxh = getSxh(jrjgbs, "2");
						logger.debug("****" + jgbs + "****sxh:" + sxh);
						refNo.append(sxh);
						REFNO = refNo.toString();
						logger.debug("****" + jgbs + "****REFNO" + REFNO);
						WhjXf whjXf = new WhjXf();
						whjXf.setId(ReportUtils.getUUID());
						whjXf.setRefNo(REFNO);
						whjXf.setCertTypeCode(CERT_TYPE_CODE);
						whjXf.setPtyCountryCode(PTY_COUNTRY_CODE);
						whjXf.setIdCode(ID_CODE);
						whjXf.setPersonName(PERSON_NAME);
						whjXf.setAcctno(ACCTNO);
						whjXf.setJyCcyCode(JY_CCY_CODE);
						whjXf.setJyAmt(JY_AMTD);
						whjXf.setQsAmtRmb(Double.parseDouble(QS_AMT_RMB));
						whjXf.setMccCode(MCC_CODE);
						whjXf.setCardTypeCode(CARD_TYPE_CODE);
						whjXf.setCardChnlCode(CARD_CHNL_CODE);
						whjXf.setBankCode(BANK_CODE);
						whjXf.setBranchSafecode(BRANCH_SAFECODE);
						whjXf.setBizDealTime(BIZ_DEAL_TIME);
						whjXf.setCountryCode(COUNTRY_CODE);
						whjXf.setBankSelfNum(BANK_SELF_NUM);
						whjXf.setCardSelfNum(CARD_SELF_NUM);
						whjXf.setShName(SH_NAME);
						whjXf.setJyChnl(JY_CHNL);
						whjXf.setOperTypeCode(OPER_TYPE_CODE);
						whjXf.setReasonCode(REASON_CODE);
						whjXf.setJlzt(JLZT);
						rootDao.save(whjXf);
						listXf.add(whjXf);
					}
				}
			}
			StringBuffer fileName = new StringBuffer();
			fileName.append("CRXXA");
			fileName.append(jrjgdm);
			fileName.append(rq.substring(2, 8));
			String xh = getXh(jrjgbs, "2");
			fileName.append(xh);
			createXmlXf(listXf, branchInfo, fileName.toString());
			return true;
		}

		return false;
	}

	/**
	 * 读文件获取客户信息
	 * 
	 * @param aCCTNO
	 * @param num
	 * @return
	 */
	private Map<String, String> getKh(String acctNo, int num) {

		File filep = new File(path);
		File[] files = filep.listFiles();
		String khh = acctNo.substring(num - 1, num + 9);
		logger.debug("客户号：" + khh);
		String zjzl = "";
		String zjhm = "";
		String zwxm = "";
		String gjdq = "";
		String zdyhh = jgbs;
		// 循环读取文件
		for (File file : files) {
			if (file.isFile() && file.exists() && (file.getName().contains("tskxxdj"))) {
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
						if (readMsg.split("\\|")[3].equals(acctNo)) {

							khh = readMsg.split("\\|")[1];
							logger.debug("####"+jgbs+"####khh:" + khh);
							break;
						}
					}
					bReader.close();
					// 对当前文件中数组数据进行分析
					// flag = doAnalysis(list, fileName) && flag;
				} catch (Exception e) {
					e.printStackTrace();
				}

			}

		}
		for (File file : files) {
			if (file.isFile() && file.exists() && (file.getName().contains("dskhxxwj"))) {
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
						if (readMsg.split("\\|")[0].equals(khh)) {

							zjzl = readMsg.split("\\|")[1];
							zjhm = readMsg.split("\\|")[2];
							logger.debug("####"+jgbs+"####zjzl:" + zjzl);
							logger.debug("####"+jgbs+"####zjhm:" + zjhm);
							break;
						}
					}
					bReader.close();
					// 对当前文件中数组数据进行分析
					// flag = doAnalysis(list, fileName) && flag;
				} catch (Exception e) {
					e.printStackTrace();
				}

			}

		}
		for (File file : files) {
			if (file.isFile() && file.exists() && (file.getName().contains("dskhb"))) {
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
						// list.add(readMsg);
						if (readMsg.split("\\|")[0].equals(zjzl) && readMsg.split("\\|")[1].equals(zjhm)) {
							gjdq = readMsg.split("\\|")[2];
							zwxm = readMsg.split("\\|")[8];
	
							break;
						}
					}
					bReader.close();
					// 对当前文件中数组数据进行分析
					// flag = doAnalysis(list, fileName) && flag;
				} catch (Exception e) {
					e.printStackTrace();
				}

			}

		}
		Map<String, String> dskhb = new HashMap<String, String>();
		dskhb.put("zjzl", zjzl);
		dskhb.put("zjhm", zjhm);
		dskhb.put("zwxm", zwxm);
		dskhb.put("zdyhh", zdyhh);
		dskhb.put("gjdq", gjdq);
		logger.debug("####"+jgbs+"####"+zjzl + "|" + zjhm + "|" + zwxm + "|" + zdyhh + "|" + gjdq);
		return dskhb;
	}

	/**
	 * 通过卡号查询客户信息
	 * 
	 * @param aCCTNO
	 * @param jrjgbs
	 * @return
	 */
	private List<BaseWhjDskhb> getKhxx(String acctNo, String jrjgbs, int num) {
		// 数据库查询方式
		// 先通过特殊卡信息登记表直接用完整卡号查询(存量卡)
		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		List<BaseWhjDskhb> dskhbList = whjCommonService.getWhjDskhb(acctNo, jrjgbs);

		// 如果dskhbList为空再通过卡号规则去查询(新卡)
		if (dskhbList.size() == 0) {
			// 根据卡号规则获取客户号
			String khh = acctNo.substring(num - 1, num + 9);
			List<BaseWhjDskhb> khList = whjCommonService.getWhjkh(khh, jrjgbs);

			return khList;
		}

		return dskhbList;
	}

	/**
	 * 生成提现XML文件
	 * 
	 * @param whjTx
	 */
	private void createXmlTx(List<WhjTx> list, BaseWhjBranchInfo branchInfo, String fileName) {

		// 生成接口控制文件
		buildKzTx(list, branchInfo, fileName);
		// 生成接口数据文件
		buildDataTx(list, branchInfo, fileName);
	}

	/**
	 * 生成消费XML文件
	 * 
	 * @param whjXf
	 */
	private void createXmlXf(List<WhjXf> list, BaseWhjBranchInfo branchInfo, String fileName) {

		// 生成接口控制文件
		buildKzXf(list, branchInfo, fileName);
		// 生成接口数据文件
		buildDataXf(list, branchInfo, fileName);

	}

	/**
	 * 生成提现接口控制文件
	 */
	private void buildKzTx(List<WhjTx> list, BaseWhjBranchInfo branchInfo, String fileName) {
		// 创建文档并设置文档的根元素节点
		Element root = DocumentHelper.createElement("MSG");
		Document doucment = DocumentHelper.createDocument(root);

		// 子节点
		// 应用类型
		Element APPTYPE = root.addElement("APPTYPE");
		APPTYPE.addText("CRD");
		// 文件类型
		Element CURRENTFILE = root.addElement("CURRENTFILE");
		CURRENTFILE.addText("TT");
		// 输入输出
		Element INOUT = root.addElement("INOUT");
		INOUT.addText("IN");
		// 总记录数
		Element TOTALFILES = root.addElement("TOTALFILES");
		TOTALFILES.addText("1");
		// RECORDS
		Element FILES = root.addElement("FILES");

		// REC
		Element FILENAME = FILES.addElement("FILENAME");
		FILENAME.addText(fileName + ".XML");

		// 添加
		XMLWriter xmlwriter2 = new XMLWriter();
		try {
			xmlwriter2.write(doucment);
			// 创建文件
			OutputFormat format = new OutputFormat("    ", true);
			format.setEncoding("gb18030");// 设置编码格式
			String dir = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9011);
			fileName = fileName.replace("TA", "TT");
			dir = dir + fileName;
			File file = new File(dir);
			if (file.exists()) {
				logger.debug("****" + jgbs + "****目录存在");
			} else {
				file.mkdirs();
			}
			String path = dir + "/" + fileName + ".XML";
			XMLWriter xmlWriter = new XMLWriter(new FileOutputStream(path), format);

			xmlWriter.write(doucment);
			xmlWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 生成提现接口数据文件
	 * 
	 * @param whjTx
	 * @param branchInfo
	 */
	private void buildDataTx(List<WhjTx> list, BaseWhjBranchInfo branchInfo, String fileName) {

		// 创建文档并设置文档的根元素节点
		Element root = DocumentHelper.createElement("MSG");
		Document doucment = DocumentHelper.createDocument(root);

		// 子节点
		// 应用类型
		Element APPTYPE = root.addElement("APPTYPE");
		APPTYPE.addText("CRD");
		// 文件类型
		Element CURRENTFILE = root.addElement("CURRENTFILE");
		CURRENTFILE.addText("TA");
		// 输入输出
		Element INOUT = root.addElement("INOUT");
		INOUT.addText("IN");
		// 总记录数
		Element TOTALRECORDS = root.addElement("TOTALRECORDS");
		TOTALRECORDS.addText(String.valueOf(list.size()));
		// RECORDS
		Element RECORDS = root.addElement("RECORDS");
		// double转String去除科学计数法
		NumberFormat nf = NumberFormat.getInstance();
		nf.setGroupingUsed(false);
		// 记录数不为0，组数据文件
		if (list.size() != 0) {
			for (WhjTx whjTx : list) {
				// REC
				Element REC = RECORDS.addElement("REC");
				// 操作类型
				Element OPER_TYPE_CODE = REC.addElement("OPER_TYPE_CODE");
				OPER_TYPE_CODE.addText(whjTx.getOperTypeCode());
				// 修改删除原因
				Element REASON_CODE = REC.addElement("REASON_CODE");
				REASON_CODE.addText(whjTx.getReasonCode());
				// 业务参号
				Element REFNO = REC.addElement("REFNO");
				REFNO.addText(whjTx.getRefNo());
				// 持卡人身份证件类型
				Element CERT_TYPE_CODE = REC.addElement("CERT_TYPE_CODE");
				CERT_TYPE_CODE.addText(whjTx.getCertTypeCode());
				// 持卡人国家/地区
				Element PTY_COUNTRY_CODE = REC.addElement("PTY_COUNTRY_CODE");
				PTY_COUNTRY_CODE.addText(whjTx.getPtyCountryCode());
				// 身份证件号码
				Element ID_CODE = REC.addElement("ID_CODE");
				ID_CODE.addText(whjTx.getIdCode());
				// 持卡人姓名
				Element PERSON_NAME = REC.addElement("PERSON_NAME");
				PERSON_NAME.addText(whjTx.getPersonName());
				// 卡号
				Element ACCTNO = REC.addElement("ACCTNO");
				ACCTNO.addText(whjTx.getAcctno());
				// 交易货币币种
				Element JY_CCY_CODE = REC.addElement("JY_CCY_CODE");
				JY_CCY_CODE.addText(whjTx.getJyCcyCode());
				// 交易货币金额
				Element JY_AMT = REC.addElement("JY_AMT");
				JY_AMT.addText(nf.format(whjTx.getJyAmt()));
				// 交易货币折人民币金额
				Element QS_AMT_RMB = REC.addElement("QS_AMT_RMB");
				QS_AMT_RMB.addText(nf.format(whjTx.getQsAmtRmb()));
				// MCC 码
				Element MCC_CODE = REC.addElement("MCC_CODE");
				MCC_CODE.addText(whjTx.getMccCode());
				// 银行卡类型
				Element CARD_TYPE_CODE = REC.addElement("CARD_TYPE_CODE");
				CARD_TYPE_CODE.addText(whjTx.getCardTypeCode());
				// 银行卡清算渠道
				Element CARD_CHNL_CODE = REC.addElement("CARD_CHNL_CODE");
				CARD_CHNL_CODE.addText(whjTx.getCardChnlCode());
				// 发卡行金融机构代码
				Element BANK_CODE = REC.addElement("BANK_CODE");
				BANK_CODE.addText(whjTx.getBankCode());
				// 发卡网点所在地外汇局代码
				Element BRANCH_SAFECODE = REC.addElement("BRANCH_SAFECODE");
				BRANCH_SAFECODE.addText(whjTx.getBranchSafecode());
				// 交易授权日期及时间
				Element BIZ_DEAL_TIME = REC.addElement("BIZ_DEAL_TIME");
				BIZ_DEAL_TIME.addText(whjTx.getBizDealTime());
				// 交易国家或地区
				Element COUNTRY_CODE = REC.addElement("COUNTRY_CODE");
				COUNTRY_CODE.addText(whjTx.getCountryCode());
				// 银行内部流水号
				Element BANK_SELF_NUM = REC.addElement("BANK_SELF_NUM");
				BANK_SELF_NUM.addText(whjTx.getBankSelfNum());
				// 卡组织单号
				Element CARD_SELF_NUM = REC.addElement("CARD_SELF_NUM");
				CARD_SELF_NUM.addText(whjTx.getCardSelfNum());
			}
		} else {
			RECORDS.addText("");
		}
		// 添加
		XMLWriter xmlwriter2 = new XMLWriter();
		try {
			xmlwriter2.write(doucment);
			// 创建文件
			OutputFormat format = new OutputFormat("    ", true);
			format.setEncoding("gb18030");// 设置编码格式
			String dir = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9011);
			String fileNameD = fileName.replace("TA", "TT");
			dir = dir + fileNameD;
			File file = new File(dir);
			if (file.exists()) {
				logger.debug("****" + jgbs + "****目录存在");
			} else {
				file.mkdirs();
			}
			String path = dir + "/" + fileName + ".XML";
			XMLWriter xmlWriter = new XMLWriter(new FileOutputStream(path), format);

			xmlWriter.write(doucment);
			xmlWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 生成消费接口控制文件
	 */
	private void buildKzXf(List<WhjXf> list, BaseWhjBranchInfo branchInfo, String fileName) {
		// 创建文档并设置文档的根元素节点
		Element root = DocumentHelper.createElement("MSG");
		Document doucment = DocumentHelper.createDocument(root);

		// 子节点
		// 应用类型
		Element APPTYPE = root.addElement("APPTYPE");
		APPTYPE.addText("CRX");
		// 文件类型
		Element CURRENTFILE = root.addElement("CURRENTFILE");
		CURRENTFILE.addText("TT");
		// 输入输出
		Element INOUT = root.addElement("INOUT");
		INOUT.addText("IN");
		// 总记录数
		Element TOTALFILES = root.addElement("TOTALFILES");
		TOTALFILES.addText("1");
		// RECORDS
		Element FILES = root.addElement("FILES");

		// REC
		Element FILENAME = FILES.addElement("FILENAME");
		FILENAME.addText(fileName + ".XML");

		// 添加
		XMLWriter xmlwriter2 = new XMLWriter();
		try {
			xmlwriter2.write(doucment);
			// 创建文件
			OutputFormat format = new OutputFormat("    ", true);
			format.setEncoding("gb18030");// 设置编码格式
			String dir = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9012);
			fileName = fileName.replace("XA", "TT");
			dir = dir + fileName;
			File file = new File(dir);
			if (file.exists()) {
				logger.debug("****" + jgbs + "****目录存在");
			} else {
				file.mkdirs();
			}
			String path = dir + "/" + fileName + ".XML";
			XMLWriter xmlWriter = new XMLWriter(new FileOutputStream(path), format);

			xmlWriter.write(doucment);
			xmlWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 生成消费接口数据文件
	 * 
	 * @param whjTx
	 * @param branchInfo
	 */
	private void buildDataXf(List<WhjXf> list, BaseWhjBranchInfo branchInfo, String fileName) {

		// 创建文档并设置文档的根元素节点
		Element root = DocumentHelper.createElement("MSG");
		Document doucment = DocumentHelper.createDocument(root);

		// 子节点
		// 应用类型
		Element APPTYPE = root.addElement("APPTYPE");
		APPTYPE.addText("CRX");
		// 文件类型
		Element CURRENTFILE = root.addElement("CURRENTFILE");
		CURRENTFILE.addText("XA");
		// 输入输出
		Element INOUT = root.addElement("INOUT");
		INOUT.addText("IN");
		// 总记录数
		Element TOTALRECORDS = root.addElement("TOTALRECORDS");
		TOTALRECORDS.addText(String.valueOf(list.size()));
		// RECORDS
		Element RECORDS = root.addElement("RECORDS");
		// double转String去除科学计数法
		NumberFormat nf = NumberFormat.getInstance();
		nf.setGroupingUsed(false);
		// 记录数不为0，组数据文件
		if (list.size() != 0) {
			for (WhjXf whjXf : list) {
				// REC
				Element REC = RECORDS.addElement("REC");
				// 操作类型
				Element OPER_TYPE_CODE = REC.addElement("OPER_TYPE_CODE");
				OPER_TYPE_CODE.addText(whjXf.getOperTypeCode());
				// 修改删除原因
				Element REASON_CODE = REC.addElement("REASON_CODE");
				REASON_CODE.addText(whjXf.getReasonCode());
				// 业务参号
				Element REFNO = REC.addElement("REFNO");
				REFNO.addText(whjXf.getRefNo());
				// 持卡人身份证件类型
				Element CERT_TYPE_CODE = REC.addElement("CERT_TYPE_CODE");
				CERT_TYPE_CODE.addText(whjXf.getCertTypeCode());
				// 持卡人国家/地区
				Element PTY_COUNTRY_CODE = REC.addElement("PTY_COUNTRY_CODE");
				PTY_COUNTRY_CODE.addText(whjXf.getPtyCountryCode());
				// 身份证件号码
				Element ID_CODE = REC.addElement("ID_CODE");
				ID_CODE.addText(whjXf.getIdCode());
				// 持卡人姓名
				Element PERSON_NAME = REC.addElement("PERSON_NAME");
				PERSON_NAME.addText(whjXf.getPersonName());
				// 卡号
				Element ACCTNO = REC.addElement("ACCTNO");
				ACCTNO.addText(whjXf.getAcctno());
				// 交易货币币种
				Element JY_CCY_CODE = REC.addElement("JY_CCY_CODE");
				JY_CCY_CODE.addText(whjXf.getJyCcyCode());
				// 交易货币金额
				Element JY_AMT = REC.addElement("JY_AMT");
				JY_AMT.addText(nf.format(whjXf.getJyAmt()));
				// 交易货币折人民币金额
				Element QS_AMT_RMB = REC.addElement("QS_AMT_RMB");
				QS_AMT_RMB.addText(nf.format(whjXf.getQsAmtRmb()));
				// MCC 码
				Element MCC_CODE = REC.addElement("MCC_CODE");
				MCC_CODE.addText(whjXf.getMccCode());
				// 银行卡类型
				Element CARD_TYPE_CODE = REC.addElement("CARD_TYPE_CODE");
				CARD_TYPE_CODE.addText(whjXf.getCardTypeCode());
				// 银行卡清算渠道
				Element CARD_CHNL_CODE = REC.addElement("CARD_CHNL_CODE");
				CARD_CHNL_CODE.addText(whjXf.getCardChnlCode());
				// 发卡行金融机构代码
				Element BANK_CODE = REC.addElement("BANK_CODE");
				BANK_CODE.addText(whjXf.getBankCode());
				// 发卡网点所在地外汇局代码
				Element BRANCH_SAFECODE = REC.addElement("BRANCH_SAFECODE");
				BRANCH_SAFECODE.addText(whjXf.getBranchSafecode());
				// 交易授权日期及时间
				Element BIZ_DEAL_TIME = REC.addElement("BIZ_DEAL_TIME");
				BIZ_DEAL_TIME.addText(whjXf.getBizDealTime());
				// 交易国家或地区
				Element COUNTRY_CODE = REC.addElement("COUNTRY_CODE");
				COUNTRY_CODE.addText(whjXf.getCountryCode());
				// 银行内部流水号
				Element BANK_SELF_NUM = REC.addElement("BANK_SELF_NUM");
				BANK_SELF_NUM.addText(whjXf.getBankSelfNum());
				// 卡组织单号
				Element CARD_SELF_NUM = REC.addElement("CARD_SELF_NUM");
				CARD_SELF_NUM.addText(whjXf.getCardSelfNum());
				// 商户名称
				Element SH_NAME = REC.addElement("SH_NAME");
				SH_NAME.addText(whjXf.getShName());
				// 商户类型
				Element JY_CHNL = REC.addElement("JY_CHNL");
				JY_CHNL.addText(whjXf.getJyChnl());
			}
		} else {
			RECORDS.addText("");
		}
		// 添加
		XMLWriter xmlwriter2 = new XMLWriter();
		try {
			xmlwriter2.write(doucment);
			// 创建文件
			OutputFormat format = new OutputFormat("    ", true);
			format.setEncoding("gb18030");// 设置编码格式
			String dir = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9012);
			String fileNameD = fileName.replace("XA", "TT");
			dir = dir + fileNameD;
			File file = new File(dir);
			if (file.exists()) {
				logger.debug("****" + jgbs + "****目录存在");
			} else {
				file.mkdirs();
			}
			String path = dir + "/" + fileName + ".XML";
			XMLWriter xmlWriter = new XMLWriter(new FileOutputStream(path), format);

			xmlWriter.write(doucment);
			xmlWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取序号
	 * 
	 * @param jrjgbs
	 * @param string
	 * @return
	 * @throws CommonException
	 */
	private String getXh(String jgbs, String lb) throws CommonException {
		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		List<BaseWhjXh> whjsxhList = whjCommonService.getSxh(jgbs, rq, lb);

		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();
		int i = 0;
		String id = "";
		int sxh = 0;

		if (whjsxhList.size() != 0) {
			i = whjsxhList.get(0).getXh();
			id = whjsxhList.get(0).getId();
			sxh = whjsxhList.get(0).getSxh();
		} else {
			i = 1;
			id = ReportUtils.getUUID();
			sxh = 1;
		}
		WhjXh whjxh = new WhjXh();
		whjxh.setId(id);
		whjxh.setSxh(sxh);
		whjxh.setRq(rq);
		whjxh.setLb(lb);
		whjxh.setJgbs(jgbs);
		whjxh.setXh(i + 1);
		rootDao.saveOrUpdate(whjxh);

		StringBuffer sb = new StringBuffer();
		int k = 2 - String.valueOf(i).length();
		for (int j = k; j > 0; j--) {
			sb.append("0");
		}
		sb.append(i);
		return sb.toString();
	}

	/**
	 * 获取顺序号
	 * 
	 * @param jgbs
	 * @param lb
	 * @return
	 * @throws CommonException
	 */
	private String getSxh(String jgbs, String lb) throws CommonException {

		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		List<BaseWhjXh> whjsxhList = whjCommonService.getSxh(jgbs, rq, lb);
		int i = 0;
		String id = "";
		int xh = 0;
		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();
		if (whjsxhList.size() != 0) {
			i = whjsxhList.get(0).getSxh();
			id = whjsxhList.get(0).getId();
			xh = whjsxhList.get(0).getXh();
		} else {
			i = 1;
			id = ReportUtils.getUUID();
			xh = 1;
		}
		WhjXh whjxh = new WhjXh();
		whjxh.setId(id);
		whjxh.setSxh(i + 1);
		whjxh.setRq(rq);
		whjxh.setLb(lb);
		whjxh.setJgbs(jgbs);
		whjxh.setXh(xh);
		rootDao.saveOrUpdate(whjxh);

		StringBuffer sb = new StringBuffer();
		int k = 7 - String.valueOf(i).length();
		for (int j = k; j > 0; j--) {
			sb.append("0");
		}
		sb.append(i);
		return sb.toString();
	}

	/**
	 * 根据国家地区中文名获取代码
	 * 
	 * @param c
	 * @return
	 */
	private String getCCbyc(String c) {

		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		List<BaseBiNationregion> biNationregionList = whjCommonService.getBiNationregionList(c);
		if (biNationregionList.size() != 0) {
			return biNationregionList.get(0).getId();
		}

		return "ZZZ";
	}

	/**
	 * 证件类型映射
	 * 
	 * @param zjzl
	 * @return
	 */
	private String getCMapByZjzl(String zjzl) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("0", "01");// 居民身份证
		map.put("4", "02");// 军人身份证件
		map.put("5", "03");// 武装警察身份证件
		map.put("7", "04");// 护照
		map.put("C", "05");// 外国人永久居留身份证
		map.put("A", "06");// 港澳居民来往内地通行证
		map.put("B", "07");// 台湾居民来往大陆通行证
		map.put("9", "09");// 中国护照
		// map.put("", "10");//外交官证
		map.put("8", "11");// 其他身份证件
		if (map.get(zjzl) != null) {
			return map.get(zjzl);
		}
		return "11";
	}

	/**
	 * 根据证件种类判断国家
	 * 
	 * @param zjzl
	 * @return
	 */
	private String getPCCByZjzl(String zjzl) {

		if ("01".equals(zjzl) || "02".equals(zjzl) || "03".equals(zjzl) || "09".equals(zjzl)) {
			return "CHN";
		} else if ("A".equals(zjzl)) {
			return "HKG";
		} else if ("B".equals(zjzl)) {
			return "TWN";
		} else {
			return "ZZZ";
		}
	}

	/**
	 * 获取交易币种相关信息
	 * 
	 * @param bz
	 * @return
	 */
	private List<String> getJCCbybz(String bz) {

		WhjCommonService whjCommonService = WhjCommonService.getInstance();
		List<BaseSysCurrency> sysCurrencyList = whjCommonService.getSysCurrency(bz);
		List<String> list = new ArrayList<String>();
		if (sysCurrencyList.size() != 0) {
			BaseSysCurrency sysCurrency = sysCurrencyList.get(0);

			list.add(sysCurrency.getId());
			list.add(String.valueOf(sysCurrency.getDotNum()));
		} else {
			list.add("XXX");
			list.add("2");
		}

		return list;
	}

	/**
	 * 获取发卡网点所在地外汇局代码
	 * 
	 * @param whjdm
	 * @return
	 */
	private String getFkhwhjdm(String gjdq) {
		// 获取映射
		return getDmByDq(gjdq);

	}

	/**
	 * 外汇局地区代码映射
	 * 
	 * @return
	 */
	private String getDmByDq(String gjdq) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("nj", "320000");
		map.put("fz", "350000");
		map.put("wj", "320412");
		map.put("dh", "320700");

		return map.get(gjdq);
	}

}
