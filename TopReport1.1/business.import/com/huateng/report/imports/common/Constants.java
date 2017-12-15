package com.huateng.report.imports.common;

public interface Constants {
	String YES = "1";// 是
	String NO = "0"; // 否

	String IMPORT = "IMP";// 参数
	String IS_IMPORTING = "IS_IMPORTING";
	String DEFAULT_PATH = "PATH";
	String PARAM_DIR = "DIR";
	String PARAM_DIR_0001 = "0001";
	String PARAM_DIR_0103 = "0103";
	
	//外汇报送-读取本地文件地址
	String PARAM_DIR_9001 = "9001";
	String PARAM_DIR_9002 = "9002";
	//外汇报送-生成XML文件地址
	//测试环境为CRDData_TEST和CRXData_TEST,生产环境为CRDData和CRXData
	String PARAM_DIR_9011 = "9011";   //路径/mts/Interface/CRDData_TEST/Send/
	String PARAM_DIR_9012 = "9012";   //路径/mts/Interface/CRXData_TEST/Send/
	String PARAM_DIR_9021 = "9021";   //路径/mts/Interface/CRDData_TEST/ErrorFiles/
	String PARAM_DIR_9022 = "9022";   //路径/mts/Interface/CRXData_TEST/ErrorFiles/
	String PARAM_DIR_9031 = "9031";   //路径/mts/Interface/CRDData_TEST/HistorySend/
	String PARAM_DIR_9032 = "9032";   //路径/mts/Interface/CRXData_TEST/HistorySend/
	String PARAM_DIR_9041 = "9041";   //路径/mts/Interface/CRDData_TEST/Feedback/
	String PARAM_DIR_9042 = "9042";   //路径/mts/Interface/CRXData_TEST/Feedback/
	String PARAM_DIR_9051 = "9051";   //路径/mts/Interface/CRXData_TEST/Log/
	String PARAM_DIR_9052 = "9052";   //路径/mts/Interface/CRXData_TEST/Log/

	String IMPORT_SUBJECT = "/import/subject1";

	String IMPORT_STATUS_FAILED = "0"; // 失败
	String IMPORT_STATUS_SUCCESS = "1"; // 成功
	String IMPORT_STATUS_PROCESS = "2"; // 未导入

	String FILEDATA_FORMATTYPE_TXT = "TXT"; // text文件
	String FILEDATA_FORMATTYPE_EXCEL = "XLS"; // EXCEL文件
	String FILEDATA_FORMATTYPE_XML = "XML"; // XML文件
	String FILEDATA_FORMATTYPE_DBF = "DBF"; // DBF文件

	String MOD_FLG_FINISH = "1";
	String MOD_FLG_IMPORT = "2";
	
	String PROGRESS = "IMP_PROGRESS";
	
	String STR_SQL = "strSql";

}
