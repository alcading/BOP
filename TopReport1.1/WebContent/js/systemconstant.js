/*
* ==================================================================
* The Huateng Software License
*
* Copyright (c) 2004-2005 Huateng Software System.  All rights
* reserved.
* ==================================================================
*/
/**
 * @desc ϵͳ��������
 */

/**
 * �Ƿ��־
 */
FLAG_OFF = "0"; //��
FLAG_ON = "1"; //��

/**
 * ��Ч��־/״̬
 */
VALID_FLAG_INVALID = "0"; //��Ч
VALID_FLAG_VALID = "1"; //��Ч

/**
 * ����
 */
CURCD_RMB = "CNY"; //�����

/**
 * ���ڸ�ʽ
 */
DATE_PATTERN = "yyyy-MM-dd";

/**
 *  �ꡢ�¡���
 */
MONTH_MAX = 11;
DAY_MAX = 30
YEAR_MAX = 99

//seqctl�е�value_no
VALUE_NO_APPNO = 1; //������
VALUE_NO_CUSTCD = 2; //�ͻ�����
VALUE_NO_CONTRACTNO = 3; //��ͬ��
VALUE_NO_PROJECTNO = 4; //������Ŀ���
VALUE_NO_HOUSENO = 5; //¥�̱��
VALUE_NO_ACCUM_FUND_ACTNO = 6; //�������ʺ�
VALUE_NO_ARCHIVE_ID = 7; //����Ҫ�ر��

//seqctl��Ĭ�ϵ�value_index
VALUE_INDEX = "00000000000000000000";

//�������ʺſ�Ŀ(�������ɹ������ʺ�)
ACCUM_FUND_ACNO = "0950";

/**
 * ��������
 */
BRCODE_CLASS_HEAD = "1"; //����
BRCODE_CLASS_BRANCH = "2"; //����
BRCODE_CLASS_PL_CENTER = "3"; //��������
BRCODE_CLASS_SUB_PL_CENTER = "4"; //����������
BRCODE_CLASS_SUBBRANCH = "5"; //֧��

/**
 * �����������
 */
MANAGE_BRCODE_CLASS_HEAD = "0"; //����
MANAGE_BRCODE_CLASS_BRANCH = "1"; //����
MANAGE_BRCODE_CLASS_SUBBRANCH = "2"; //֧��

/**
 * ����Աҵ����������
 */
LIMIT_PARAM_BIZ_CLASS_ALL = "0"; //ȫ��
LIMIT_PARAM_BIZ_CLASS_LOAN = "1"; //����ҵ��
LIMIT_PARAM_BIZ_CLASS_PROJ = "2"; //������Ŀ

/**
 * ��λ����
 */
ROLE_TYPE_OTHER = "0"; //����
ROLE_TYPE_INPUT = "1"; //¼���
ROLE_TYPE_MGR = "2"; //�ͻ�����
ROLE_TYPE_AUDIT = "3"; //����
ROLE_TYPE_APPROVE = "4"; //������
ROLE_TYPE_COUNCIL = "5"; //��������¼���
ROLE_TYPE_SUPERVISE = "6"; //�ſ�ල��

/**
 * ����Ա�������Ʒ�ʽ
 */
APPROVE_TYPE_PASS_UNDER_MAX = "1"; //������߽��Ϊ׼
APPROVE_TYPE_REPORT_IF_AGREE = "2"; //����ͬ���ϱ�
APPROVE_TYPE_REPORT_ALL = "3"; //���������ϱ�
APPROVE_TYPE_PASS_IF_AGREE = "4"; //����ͬ��ͨ��

/**
 * �������
 */
APP_ATTITUDE_AGREE = "1"; //ͬ��
APP_ATTITUDE_CONDI_AGREE = "2"; //������ͬ��
APP_ATTITUDE_AGREE_REPORT = "3"; //����ͬ���ϱ�
APP_ATTITUDE_DISAGREE = "4"; //��ͬ��
APP_ATTITUDE_UNTREAD = "5"; //�˻�

/**
 * Ȩ�޼������������һ������
 */
APP_RESULT_REPORT = 0; //�����ϱ�
APP_RESULT_PASS = 1; //����ͨ��
APP_RESULT_FAIL = 2; //������ͨ��
APP_RESULT_UNTREAD = 3; //�����˻�

/**
 * ǰ����������
 */
PRE_APP_CONDITION_NON = "0"; //��
PRE_APP_CONDITION_PREAPP = "1"; //��ҪԤ����
PRE_APP_CONDITION_INPUT = "2"; //��Ҫ¼���������

/**
 * �ͻ�����
 */
CUST_TYPE_NATURAL = "2"; //��Ȼ��
CUST_TYPE_ARTIFICIAL = "1"; //����
CUST_TYPE_FINANCIAL = "3"; //���ڻ���

/**
 * ��Լ�̻�����
 */
CORP_TYPE_COOP = "1"; //������
CORP_TYPE_ASSURER = "2"; //������˾
CORP_TYPE_LAW_AGENCY = "3"; //�����н�
CORP_TYPE_EVAL_AGENCY = "4"; //��������

/**
 * �ͻ���������
 */
CORP_CODE_TYPE_LAND_AGENT = "F"; //������
CORP_CODE_TYPE_AUTO_DEALER = "C"; //����������
CORP_CODE_TYPE_RETAILER = "N"; //����������ҵ
CORP_CODE_TYPE_SCHOOL = "X"; //ѧУ
CORP_CODE_TYPE_ACCUM_FUND = "G"; //ס���������������
CORP_CODE_TYPE_ASSURER = "D"; //������˾
CORP_CODE_TYPE_AGENCY = "Z"; //�н����
CORP_CODE_TYPE_CONSIGN = "W"; //ί�е�λ
CORP_CODE_TYPE_INSURER = "B"; //���չ�˾
CORP_CODE_TYPE_OTHER = "Q"; //����
CORP_CODE_TYPE_DIRECT_COOP = "9"; //ֱ��ʽ������

/**
 * ֱ��ʽ�����̱��
 */
DIRECT_COOPNO = "99999999";

/**
 * ֤������
 */
IDTYPE_ID_CARD = "1"; //���֤
IDTYPE_ORG_ID = "1"; //��֯��������

/**
 * ����״��
 */
MARRIAGE_MARRIED_ISSUE = "1"; //�ѻ�����Ů
MARRIAGE_MARRIED_ISSUELESS = "2"; //�ѻ�����Ů
MARRIAGE_UNMARRIED = "3"; //����

/**
 * ���˹�ϵ
 */
PERSONAL_RELATION_MYSELF = "0"; //�Լ�
PERSONAL_RELATION_MATE = "1"; //��ż
PERSONAL_RELATION_PARENT = "2"; //��ĸ
PERSONAL_RELATION_CHILDREN = "3"; //��Ů
PERSONAL_RELATION_GRANDPARENT = "4"; //�游ĸ
PERSONAL_RELATION_GRANDCHILDREN = "5"; //����Ů
PERSONAL_RELATION_SIBLING = "6"; //�ֵܽ���
PERSONAL_RELATION_OTHER = "7"; //����

/**
 * ������Ŀ����
 */
PROJECT_TYPE_HOUSE = "1"; //��������
PROJECT_TYPE_AUTO = "2"; //��������
PROJECT_TYPE_CONSUMABLE = "3"; //����Ʒ����
PROJECT_TYPE_EDUCATION = "4"; //��ѧ����
PROJECT_TYPE_WORKING = "5"; //��Ӫ�Դ���
PROJECT_TYPE_ACCUM_FUND = "6"; //���������
PROJECT_TYPE_OTHER = "7"; //��������
PROJECT_TYPE_ASSURE = "8"; //����Э��

PROJECT_TYPE_ALL = "0"; //����

/**
 * ���������Ŀ���
 */
DUMMY_PROJECTNO = "999999999999";

/**
 * ������Ŀ��ȿ��Ʒ�ʽ
 */
LIMIT_MODE_UNLIMITED = "0"; //��������
LIMIT_MODE_SUM = "1"; //�����ۼƷ��Ŷ�
LIMIT_MODE_BAL = "2"; //�������

/**
 * �������
 */
LNTYPE_HOUSE = "001"; //����һ�ַ���������
LNTYPE_SECONDHAND_HOUSE = "002"; //���˶��ַ���������
LNTYPE_BIZ_HOUSE = "003"; //������ҵ�÷���Ѻ����
LNTYPE_AUTO = "004"; //������������
LNTYPE_CONSUMABLE = "005"; //�������Ѵ���
LNTYPE_WORKING = "006"; //����������Ӫ����
LNTYPE_EDUCATION = "007"; //������ѧ����
LNTYPE_EDUCATION_SH = "008"; //������ѧ����(�Ϻ���ί����)
LNTYPE_STUDY_ABROAD = "009"; //������ѧ����
LNTYPE_BANKBOOK_IMPAWN = "010"; //���˴浥��Ѻ����
LNTYPE_NATIONAL_DEBT_IMPAWN = "011"; //���˹�ծ��Ѻ����
LNTYPE_GUARANTEE_SLIP_IMPAWN = "012"; //���˱�����Ѻ����
LNTYPE_FX_IMPAWN = "013"; //������㱦��Ѻ����
LNTYPE_SECURITIES_IMPAWN = "014"; //�����м۵�֤��Ѻ����
LNTYPE_OTHER_IMPAWN = "015"; //���������Ʋ��֡���Ѻ����
LNTYPE_OCCUPATION_FUND_ASSURE = "016"; //��ҵ���𵣱�����
LNTYPE_CASH_HOUSE_MORTAGAGE = "017"; //��Ʒ����Ѻ����
LNTYPE_NATIONAL_CREDIT = "018"; //�������ô���
LNTYPE_HOUSE_ADD = "aaa"; //�Ӱ�����
LNTYPE_PAYHOUSE  = "aaa"; //��¥����
LNTYPE_ACCUM_FUND = "100"; //���������

LNTYPE_ALL = "000"; //����
LNID_ALL = "000000"; //����
LNTYPE_CREDIT = "999"; //���Ŵ���
LNID_CREDIT = "999999"; //���Ŵ���

/**
*������� bak jiang@20080629
*
*LNTYPE_HOUSE = "001"; //����һ�ַ���������
*LNTYPE_SECONDHAND_HOUSE = "002"; //���˶��ַ���������
*LNTYPE_BIZ_HOUSE = "003"; //������ҵ�÷���Ѻ����
*LNTYPE_AUTO = "004"; //������������
*LNTYPE_CONSUMABLE = "005"; //�������Ѵ���
*LNTYPE_WORKING = "006"; //����������Ӫ����
*LNTYPE_EDUCATION = "007"; //������ѧ����
*LNTYPE_EDUCATION_SH = "008"; //������ѧ����(�Ϻ���ί����)
*LNTYPE_STUDY_ABROAD = "009"; //������ѧ����
*LNTYPE_BANKBOOK_IMPAWN = "010"; //���˴浥��Ѻ����
*LNTYPE_NATIONAL_DEBT_IMPAWN = "011"; //���˹�ծ��Ѻ����
*LNTYPE_GUARANTEE_SLIP_IMPAWN = "012"; //���˱�����Ѻ����
*LNTYPE_FX_IMPAWN = "013"; //������㱦��Ѻ����
*LNTYPE_SECURITIES_IMPAWN = "014"; //�����м۵�֤��Ѻ����
*LNTYPE_OTHER_IMPAWN = "015"; //���������Ʋ��֡���Ѻ����
*LNTYPE_OCCUPATION_FUND_ASSURE = "016"; //��ҵ���𵣱�����
*LNTYPE_CASH_HOUSE_MORTAGAGE = "017"; //��Ʒ����Ѻ����
*LNTYPE_NATIONAL_CREDIT = "018"; //�������ô���
*LNTYPE_HOUSE_ADD = "020"; //�Ӱ�����
*LNTYPE_PAYHOUSE  = "021"; //��¥����
*LNTYPE_ACCUM_FUND = "100"; //���������
*
*LNTYPE_ALL = "000"; //����
*LNID_ALL = "000000"; //����
*LNTYPE_CREDIT = "999"; //���Ŵ���
*LNID_CREDIT = "999999"; //���Ŵ���
*
*/

/**
 * ��������
 */
LOAN_ATTR_ALL = "0"; //����
LOAN_ATTR_CONSUMABLE = "1"; //���������
LOAN_ATTR_WORKING = "2"; //��Ӫ�����

/**
 * ��������
 */
LNTYPE_NATURE_OTHER = "0"; //����
LNTYPE_NATURE_HOUSE = "1"; //��������
LNTYPE_NATURE_AUTO = "2"; //��������
LNTYPE_NATURE_CONSUMABLE = "3"; //���Ѵ���
LNTYPE_NATURE_EDU = "4"; //��ѧ����
LNTYPE_NATURE_WORKING = "5"; //������Ӫ����

/**
 * ��ͬ����
 */
LOAN_NATURE_NORMAL = "1"; //һ������ͬ
LOAN_NATURE_COMB = "2"; //��ϴ����ͬ
LOAN_NATURE_ADD = "3"; //�Ӱ������ͬ
LOAN_NATURE_CREDIT = "4"; //���Ŵ����ͬ

/**
 * ��������״̬/��ͬ״̬
 */
APPSTAT_INPUTED = "0"; //��¼��
APPSTAT_SENDED = "1"; //���ϴ�
APPSTAT_AUDITED = "2"; //�����
APPSTAT_APPROVED = "3"; //������
APPSTAT_REJECTED = "4"; //�Ѿܾ�
APPSTAT_FINAL_APPROVED = "5"; //������
APPSTAT_GRANTED = "6"; //�ѻ��ȷ��

/**
 * ����״̬/����״̬
 */
FLOW_STATUS_APPROVING = "0"; //������
FLOW_STATUS_FINISH = "1"; //����ͬ�����
FLOW_STATUS_REJECT = "2"; //�����ܾ�����

/**
 * �����ݷ���״̬
 */
GRANT_STATUS_UNGRANT = "0"; //δ����
GRANT_STATUS_GRANTED = "1"; //�ѷ���
GRANT_STATUS_RETRACTED = "2"; //�ѳ���
GRANT_STATUS_OVER = "3"; //����ֹ

/**
 * ������̬
 */
TRM_CLASS_NORMAL = "0"; //����
TRM_CLASS_OVERDUE = "1"; //����
TRM_CLASS_IDLE = "2"; //����
TRM_CLASS_BAD = "3"; //����
TRM_CLASS_CLOSE = "4"; //����

/**
 * �弶����
 */
CLR_CLASS_NORMAL = "0"; //����
CLR_CLASS_ATTENTION = "1"; //��ע
CLR_CLASS_LESSER = "2"; //�μ�
CLR_CLASS_SHADINESS = "3"; //����
CLR_CLASS_LOSS = "4"; //��ʧ

/**
 * �弶���෽ʽ
 */
CLR_MODE_AUTO = "1"; //�Զ�
CLR_MODE_HAND = "2"; //�ֹ�

/**
 * ����ŷ�ʽ
 */
GRANT_MODE_ONE_OFF = "0"; //һ���Է���
GRANT_MODE_MULTI_TIMES = "1"; //�ִη���
GRANT_MODE_PLAN = "2"; //���ƻ�����

/**
 * ���ʽ
 */
//modifeid by fan.jiang 20100215 ���ݹ��ݸ������е���
RTN_TYPE_BALINT_EQUAL = "3"; //�ȶϢ����
RTN_TYPE_BAL_EQUAL = "4"; //�ȶ�𻹿�
RTN_TYPE_ONE_OFF = "1"; //һ�������汾��
RTN_TYPE_TIMES_INT = "2"; //���ڸ�Ϣһ�λ���
//fll----20060704-----���ʽ�ĵ����������ַ�Ҫ��������������������
//ֵ��ԭ�ȵ�5��6�޸�Ϊ7��8
RTN_TYPE_BALLOON = "7"; //�����
RTN_TYPE_DESCENDING = "8"; //�ȶ�ݼ�����
RTN_TYPE_ELASTIC = "E"; //����
RTN_TYPE_FEE = "F"; //�����Ŵ�
RTN_TYPE_TIMES_PRINT = "5";//�ִλ�Ϣ�ִλ���
/**
 * �����Ŵ���̯��ʽ
 */
CONSUMER_CREDIT_TYPE_BUSI = "0"; // �̻�ȫ���̯
CONSUMER_CREDIT_TYPE_CUST = "1"; // �ͻ�ȫ���̯
CONSUMER_CREDIT_TYPE_PROTOCOL = "2"; // Э���̯

/**modified by fan.jiang 20110215
 * ������
 */
RTN_INTERVAL_MONTHLY = "4"; //���»���
RTN_INTERVAL_SEASON = "5"; //��������
RTN_INTERVAL_HALF_YEAR = "6"; //�����껹��
RTN_INTERVAL_STUDY_ABROAD = "3"; //����ѧ����
RTN_INTERVAL_YEARLY = "7"; //���껹��
RTN_INTERVAL_FIXED_PERIOD = "5"; //���̶�����
RTN_INTERVAL_ONE_OFF = "6"; //һ���Ի���
RTN_INTERVAL_ONE_OFF2 = "1" //һ���Ի�����������
RTN_CYCLE_ONEWEEK = "2";//���ܹ�
RTN_CYCLE_DOUBLEWEEK = "3";//˫�ܹ�


/**
 * ���ȶʽ
 */
NON_EQUAL_MODE_FIRST_RTN = "1"; //ָ�����ڻ�����
NON_EQUAL_MODE_PER_INCREASE = "2"; //ָ��ÿ�ڵ���/�����

/**
 * ����;��
 */
RTN_MODE_CARD = "0"; //������
RTN_MODE_PASSBOOK = "1"; //һ��ͨ
RTN_MODE_BANKBOOK = "2"; //����
RTN_MODE_NON = "3"; //����

/**
 * ��������ȷ����ʽ
 */
RTN_DATE_TYPE_ISDATE = "0"; //�����Ϊ������
RTN_DATE_TYPE_SPECIFY = "1"; //ָ����������

/**
 * �׶λ����־
 */
PHASE_FLAG_OFF = "0"; //�ǽ׶λ���
PHASE_FLAG_ON = "1"; //�׶λ���

/**
 * ���ʵ�����ʽ
 */
INT_ADJ_FIXED = "0"; //�̶�����
INT_ADJ_MONTHLY = "1"; //���µ���
INT_ADJ_SEASON = "2"; //��������
INT_ADJ_YEARLY = "3"; //�������
INT_ADJ_YEAR_DATE = "4"; //һ��һ��
INT_ADJ_INT_DATE = "5"; //��Ϣ��

/**
 * ��Ϣ����ѡ��
 */
PUN_INT_OPT_FIXED = "0"; //�̶���Ϣ��
PUN_INT_OPT_FLOAT = "1"; //����ͬ���ʸ���

/**
 * �����
 */
PAY_DIRECT_INDV = "0"; //�տ���Ϊ�����
PAY_DIRECT_COOP = "1"; //������
PAY_DIRECT_INNER = "2"; //�ڲ��ʺ�
PAY_DIRECT_OTHER = "3"; //�����ʺ�

/**
 * ������廹����ʽ
 */
FUND_REPAY_MODE_ONE_OFF = "1"; //һ���Ի�����
FUND_REPAY_MODE_MONTHLY = "2"; //���»�����

/**
 * ������廹���·�
 */
FUND_REPAY_MONTH_APRIL = "1"; //4�·�
FUND_REPAY_MONTH_SEPTEMBER = "2"; //9�·�

/**
 * ��λ��ʾ�ĵ�����ʽ��ÿ���±�λ������ʾ�ĵ�����ʽ
 */
GUATTYPE_SUBSCRIPT_CREDIT = 0; //����
GUATTYPE_SUBSCRIPT_ASSURE = 1; //��֤
GUATTYPE_SUBSCRIPT_MORTAGAGE = 2; //��Ѻ
GUATTYPE_SUBSCRIPT_IMPAWN = 3; //��Ѻ
GUATTYPE_SUBSCRIPT_INSURANCE = 4; //��Լ����

/**
 * ������ʽ
 */
GUATCODE_IMPAWN = "1"; //��Ѻ
GUATCODE_MORTAGAGE = "2"; //��Ѻ
GUATCODE_ASSURE = "3"; //��֤
GUATCODE_CREDIT = "4"; //����/�ⵣ��
GUATCODE_COMBINED_INC_ASSURE = "5"; //���(����֤)
GUATCODE_COMBINED_EX_ASSURE = "6"; //���(������֤)
GUATCODE_INSURANCE = "7"; //��Լ����
GUATCODE_OTHER = "9"; //����

GUATCODE_ALL = "0"; //����

/**
 * ������������
 */
LOAN_TERM_TYPE_SHORT = "1"; //���ڴ���
LOAN_TERM_TYPE_MEDIUM = "2"; //���ڴ���
LOAN_TERM_TYPE_LONG = "3"; //���ڴ���

/**
 * �ͻ��ʵ����͵�ַ
 */
BILL_MAIL_ADDR_FAMILY = "1"; //��ͥ��ַ
BILL_MAIL_ADDR_COMPANY = "2"; //��λ��ַ
BILL_MAIL_ADDR_CONTACT1 = "3"; //��ϵ��ַ1
BILL_MAIL_ADDR_CONTACT2 = "4"; //��ϵ��ַ2
BILL_MAIL_ADDR_CONTACT3 = "5"; //��ϵ��ַ3

/**
 * ��ѧ����ſ�ƻ�����״̬
 */
LOAN_PLAN_STATUS_UNGRANT = "0"; //δ����
LOAN_PLAN_STATUS_GRANTED = "1"; //�ѷ���
LOAN_PLAN_STATUS_TERMINATED = "2"; //����ֹ����

/**
 * ��ѧ�������
 */
EDU_LOAN_TYPE_NONE = "0"; //������
EDU_LOAN_TYPE_TUITION = "1"; //ѧ��
EDU_LOAN_TYPE_ALIMONY = "2"; //�����

/**
 * ����״��
 */
HOUSE_STAT_SPOT = "10"; //�ַ�
HOUSE_STAT_FUTURES = "20"; //Ԥ�۷�
HOUSE_STAT_OTHER = "99"; //����

/**
 * ��Ѻ�����
 */
MORT_CLASS_ESTATE = "1"; //����
MORT_CLASS_CHATTEL = "2"; //����
MORT_CLASS_OTHER = "3"; //����

/**
 * ��Ѻ������
 */
MORT_TYPE_HOUSE = "1"; //ס��
MORT_TYPE_WORKING_HOUSE = "2"; //д��¥
MORT_TYPE_BIZ_HOUSE = "3"; //����
MORT_TYPE_CHATTEL = "4"; //����
MORT_TYPE_OTHER = "5"; //����

/**
 * ��������
 */
IMPAWN_TYPE_BANKBOOK = "1"; //�浥
IMPAWN_TYPE_STOCK = "2"; //��Ʊ
IMPAWN_TYPE_GUARANTEE_SLIP = "3"; //����
IMPAWN_TYPE_POSTBOOK = "4"; //�ʴ��浥
IMPAWN_TYPE_OTHER_BANKBOOK = "5"; //���д浥
IMPAWN_TYPE_NATIONAL_DEBT = "6"; //ƾ֤ʽ��ծ
IMPAWN_TYPE_REGISTERED_RIGHTS = "7"; //����ʽ����ծȨ
IMPAWN_TYPE_OTHER_SECURITIES = "8"; //�����м�֤ȯ

/**
 * ��ȶ���״̬
 */
FREZ_STATUS_NORMAL = "0"; //����
FREZ_STATUS_FREZ = "1"; //����

/**
 * ����״̬
 */
DOC_STATE_REGISTER = "1"; //�ѵǼ�
DOC_STATE_STORAGE = "2"; //�����
DOC_STATE_DESTROY = "3"; //������

/**
 * Ȩ��Ʒ״̬
 */
GUA_STATE_SORT = "1"; //�ѽ���
GUA_STATE_STORAGE = "2"; //�����
GUA_STATE_APPLY_DRAW = "3"; //��������ȡ
GUA_STATE_DRAW = "4"; //�ѳ���

/**
 * ��֤״̬
 */
NOTARIZATION_STATUS_UNDONE = "0"; //δ����
NOTARIZATION_STATUS_PROCESSING = "1"; //������
NOTARIZATION_STATUS_DONE = "2"; //�ѹ�֤

/**
 * ��Ѻ״̬
 */
MORTAGAGE_STATUS_UNDONE = "0"; //δ����
MORTAGAGE_STATUS_PROCESSING = "1"; //�����Ѻ��
MORTAGAGE_STATUS_PREPARE = "2"; //�ڷ���Ѻ(Ԥ��Ѻ)
MORTAGAGE_STATUS_DONE = "3"; //�ѵ�Ѻ
MORTAGAGE_STATUS_INVALID = "4"; //ʧЧ

/**
 * ����״̬
 */
INSURANCE_STATUS_UNDONE = "0"; //δ����
INSURANCE_STATUS_DONE = "1"; //�ѱ���

/**
 * �����ʻ�״̬
 */
ACCOUNT_STATUS_VALID = "0"; //����
ACCOUNT_STATUS_INVALID = "1"; //������

/**
 * ����״̬
 */
PROCESS_STATUS_NORMAL = "0"; //����
PROCESS_STATUS_DUN = "1"; //����
PROCESS_STATUS_LAW_MAIL = "2"; //��ʦ��
PROCESS_STATUS_LAWSUIT = "3"; //����
PROCESS_STATUS_COMPROMISE = "4"; //�ͽ�
PROCESS_STATUS_PAY_BY_ASSET = "5"; //��ծ
PROCESS_STATUS_CANCEL = "6"; //����

/**
 * �������ϸ����
 */
LNHTR_TXTYPE_GRANT = "1"; //�ſ�
LNHTR_TXTYPE_RTN = "2"; //����
LNHTR_TXTYPE_TRM = "3"; //��̬ת��
LNHTR_TXTYPE_CLR = "4"; //�弶����
LNHTR_TXTYPE_ALTER = "5"; //������

/**
 * �����������/��������
 */
CLOSE_TYPE_ADVANCE = "1"; //��ǰ����/��ǰ����
CLOSE_TYPE_ONTIME = "2"; //��ʱ����/��ʱ����
CLOSE_TYPE_OVERDUE = "3"; //���ڽ���/���ڻ���
CLOSE_TYPE_LOSS = "4"; //����
CLOSE_TYPE_TRANSFER = "5"; //ת����/����
CLOSE_TYPE_OTHER = "6"; //�����������ֹ/��������Ļ���

/**
 * ��ǰ���ʽ
 */
RTN_FLAG_BAL = "0"; //�����𻹿�
RTN_FLAG_PERI = "1"; //���ڻ���

/**
 * ���շ�ʽ
 */
DUN_MODE_PHONE = "1"; //�绰
DUN_MODE_MAIL = "2"; //�ź�
DUN_MODE_MAIL_AND_DROP_IN = "3"; //�ź�������
DUN_MODE_DROP_IN = "4"; //����
DUN_MODE_NOTE = "5"; //����
DUN_MODE_EMAIL = "6"; //Email
DUN_MODE_LAW_MAIL = "7"; //��ʦ��
DUN_MODE_OTHER = "8"; //����

/**
 * ��������
 */
INSURE_TYPE_ESTATE = "1"; //�Ʋ�����
INSURE_TYPE_ASSUMPSIT = "2"; //��Լ����



/**
 * �����ֵ�������
 */
DATADIC_TYPE_LNAMT = 1; //������
DATADIC_TYPE_INDV_INCOME = 2; //������
DATADIC_TYPE_FAMILY_INCOME = 3; //��ͥ������
DATADIC_TYPE_CREDIT_GRADE = 4; //���õȼ�
DATADIC_TYPE_TERM = 5; //��������
DATADIC_TYPE_EDU_LEVEL = 6; //�����̶�
DATADIC_TYPE_OCCUPATION = 7; //ְҵ
DATADIC_TYPE_CORP_PROPERTY = 8; //��λ����
DATADIC_TYPE_DUTY = 9; //ְ��
DATADIC_TYPE_TITLE = 10; //ְ��
DATADIC_TYPE_MARRIAGE = 11; //����״��
DATADIC_TYPE_SEX = 12; //�Ա�
DATADIC_TYPE_HUKOU_TYPE = 13; //��������
DATADIC_TYPE_GUATTYPE = 14; //������ʽ
DATADIC_TYPE_RTN_TYPE = 16; //���ʽ
DATADIC_TYPE_RTN_INTERVAL = 17; //������
DATADIC_TYPE_RTN_DATE_TYPE = 18; //��������ȷ����ʽ
DATADIC_TYPE_TRM_CLASS = 19; //����״̬(һ������)
DATADIC_TYPE_OVD_DAYS_STAT = 20; //��������״̬
DATADIC_TYPE_RTN_MODE = 22; //����;��
DATADIC_TYPE_CLIENT_ANLS_CONTENT = 23; //�ͻ�����ָ��
DATADIC_TYPE_CLIENT_MODE_CONTENT = 24; //�ͻ�����ָ��
DATADIC_TYPE_CERTIFICATE_IDTYPE = 29; //����֤������
DATADIC_TYPE_INDV_IDTYPE = 30; //����֤������
DATADIC_TYPE_PROJECT_TYPE = 31; //������Ŀ����
DATADIC_TYPE_CLR_MODE = 34; //�弶���෽ʽ
DATADIC_TYPE_CLR_CLASS = 35; //�弶����
DATADIC_TYPE_HOUSE_STAT = 36; //����״̬
DATADIC_TYPE_INT_ADJ_TPYE = 43; //���ʵ�����ʽ
DATADIC_TYPE_LIMIT_TYPE = 51; //����Ա��������
DATADIC_TYPE_PROCESS_STATUS = 53; //����״̬
DATADIC_TYPE_ADV_RTN_FLAG = 54; //��ǰ���ʽ
DATADIC_TYPE_LNUSE = 100; //������;
DATADIC_TYPE_GRANT_MODE = 101; //���ŷ�ʽ
DATADIC_TYPE_NON_EQUAL_MODE = 102; //���ȶʽ
DATADIC_TYPE_PAY_DIRECT = 103; //�����
DATADIC_TYPE_LOAN_LIMIT_FORM = 112; //������Ŀ��ȿ��Ʒ�ʽ
DATADIC_TYPE_LNATTR = 116; //��������(����������Ӫ�����)
DATADIC_TYPE_APPSTAT = 117; //��ͬ״̬
DATADIC_TYPE_ATTITUDE = 120; //�������
DATADIC_TYPE_ATTITUDE1 = 121; //�����������
DATADIC_TYPE_ATTITUDE2 = 122; //������
DATADIC_TYPE_ATTITUDE3 = 123; //�������
DATADIC_TYPE_INSURANCE_TYPE = 140; //��������
DATADIC_TYPE_CURCD = 202; //����
DATADIC_TYPE_IMPAWN_TYPE = 203; //��������
DATADIC_TYPE_CUST_TYPE = 206; //�ͻ�����
DATADIC_TYPE_CORP_TYPE = 207; //��Լ�̻�����
DATADIC_TYPE_CORP_CODE_TYPE = 208; //�ͻ��ڲ���������
DATADIC_TYPE_CORP_ECO_FORM = 209; //��Ӫ��֯��ʽ
DATADIC_TYPE_CORP_COWER_MODE = 210; //��������
DATADIC_TYPE_CORP_ORG_TYPE = 211; //��������
DATADIC_TYPE_CORP_BIZ_TYPE = 212; //��ҵ���
DATADIC_TYPE_CORP_SCALE = 213; //��ҵ��ģ
DATADIC_TYPE_INDV_CORP_SCALE = 214; //����˵�λ��ģ
DATADIC_TYPE_FOLK = 300; //����
DATADIC_TYPE_HOUSE_PROPERTY = 302; //סլ����
DATADIC_TYPE_COUNTRY = 303; //����
DATADIC_TYPE_TRADE = 306; //��ҵ
DATADIC_TYPE_FLAG = 308; //�Ƿ��־
DATADIC_TYPE_STATUS = 309; //��Ч��־
DATADIC_TYPE_LIMIT_MODE = 310; //����Ա�������Ʒ�ʽ
DATADIC_TYPE_BRCLASS = 401; //��������
DATADIC_TYPE_MANAGE_BRCLASS = 402; //�����������
DATADIC_TYPE_DEGREE  = 403; //ѧλ
DATADIC_TYPE_DUN_MODE = 404; //���շ�ʽ
DATADIC_TYPE_FUND_REPAY_MODE = 405; //������廹����ʽ
DATADIC_TYPE_FUND_REPAY_MONTH = 406; //������廹���·�
DATADIC_TYPE_HOUSE_TYPE = 407; //��������
DATADIC_TYPE_MORT_TYPE = 408; //��Ѻ������
DATADIC_TYPE_PHASE_FLAG = 409; //�׶λ����־
DATADIC_TYPE_PRELATION = 410; //���˹�ϵ
DATADIC_TYPE_PUN_INT_OPT = 411; //��Ϣ����ѡ��
DATADIC_TYPE_BRANCH_MAIL_ADDR = 412; //�����ʵ����͵�ַ
DATADIC_TYPE_PL_CENTER_TYPE = 413; //��������ģʽ
DATADIC_TYPE_TERM_TYPE = 414; //������������(�̡��С���)
DATADIC_TYPE_PRE_APP_CONDITION = 415; //ǰ����������
DATADIC_TYPE_GUATCODE = 416; //������ʽ
DATADIC_TYPE_RISK_GUIDE_LINE = 417; //����ָ��
DATADIC_TYPE_HOUSE_PRICE_LEVEL = 418; //¥���ļ�����
DATADIC_TYPE_CORP_REPORT_TYPE = 419; //��ҵ��������
DATADIC_TYPE_INFRACT_TYPE = 420; //�ͻ����ü�¼��Դ
DATADIC_TYPE_DOC_CONS_MODE = 421; //�������ķ�ʽ
DATADIC_TYPE_CUST_MAIL_ADDR = 422; //�ͻ��ʵ����͵�ַ
DATADIC_TYPE_HOUSE_STRUCT = 423; //���ݽṹ
DATADIC_TYPE_HOUSE_BIZ_BPROPERTY = 424; //��������
DATADIC_TYPE_HOUSE_SELL_PROPERTY = 425; //��������
DATADIC_TYPE_HOUSE_BUY_REASON = 426; //����ԭ��
DATADIC_TYPE_AUTO_USAGE = 427; //������;
DATADIC_TYPE_AUTO_HANDS = 428; //һ�ֳ�/���ֳ���־
DATADIC_TYPE_EDU_LOAN_TYPE = 429; //��ѧ�������
DATADIC_TYPE_EDU_LOAN_GRANT_STATUS = 430; //��ѧ����ſ�ƻ�����״̬
DATADIC_TYPE_MORT_STATUS = 431; //��Ѻ״̬
DATADIC_TYPE_MORT_PRELATION = 432; //Ȩ���������˹�ϵ
DATADIC_TYPE_MORT_OWNERSHIP = 433; //��Ѻ������Ȩ��
DATADIC_TYPE_INSURE_FEE_TYPE = 434; //���շѽɷѷ�ʽ
DATADIC_TYPE_INVEST_MODE = 435; //���鷽ʽ
DATADIC_TYPE_PBC_INQUIRY_RESULT = 436; //������������ϵͳ��ѯ����
DATADIC_TYPE_NOTARIZATION_STATUS = 437; //��֤����״̬
DATADIC_TYPE_CLOSE_TYPE = 438; //��������/��������
DATADIC_TYPE_NOTE_TYPE = 439; //��������
DATADIC_TYPE_MORT_USAGE_KIND = 440; //��Ѻ��ʹ�����
DATADIC_TYPE_ROLE_TYPE = 441; //��Ѻ��ʹ�����
DATADIC_TYPE_CONTRIBUTE_DEGREE = 442; //ҵ���׶�
DATADIC_TYPE_LNCI_STATUS = 443; //��ݷ���״̬

/**
 * �����ֵ�ӳ������
 */
DATADIC_MAPTYPE_GUAT_TYPE = 1; //������ʽ������λ��ʾ�ĵ�����ʽӳ��Ϊһλ��ʾ�ĵ�����ʽ
DATADIC_MAPTYPE_MORT_TYPE = 2; //��Ѻ�����ͣ�����Ѻ������ӳ��Ϊ��Ѻ�����
DATADIC_MAPTYPE_PERSONAL_RELATION = 3; //���˹�ϵ�������˹�ϵӳ��Ϊ�䷴��Ĺ�ϵ
DATADIC_MAPTYPE_LNUSE = 4; //������;�����������ӳ��Ϊ������;
DATADIC_MAPTYPE_CURCD = 5; //���֣������ִ���ӳ��Ϊ���ַ���

//����ӳ�����ڽ�ϵͳ�����ݶ���ӳ��Ϊ�����������ݶ���
DATADIC_MAPTYPE_LNID = 11; //ҵ������ϸ��
DATADIC_MAPTYPE_RTN_INTERVAL = 12; //����Ƶ��
DATADIC_MAPTYPE_CLR_CLASS = 13; //�弶����
DATADIC_MAPTYPE_TRM_CLASS = 14; //�˻�״̬
DATADIC_MAPTYPE_IDTYPE = 15; //֤������
DATADIC_MAPTYPE_SEX = 16; //�Ա�
DATADIC_MAPTYPE_MARRIAGE = 17; //����״��
DATADIC_MAPTYPE_EDUCATION = 18; //���ѧ��
DATADIC_MAPTYPE_OCCUPATION = 19; //ְҵ
DATADIC_MAPTYPE_TRADE = 20; //��λ������ҵ
DATADIC_MAPTYPE_DUTY = 21; //ְ��
DATADIC_MAPTYPE_TITLE = 22; //ְ��
DATADIC_MAPTYPE_HABITATION = 23; //��ס״��

/**
 * ��������
 */
APPLY_TYPE_NORMAL_LOAN = "01"; //��������
APPLY_TYPE_COMBINATION_LOAN = "02"; //��ϴ�������
APPLY_TYPE_ADDITION_LOAN = "03"; //�Ӱ�����
APPLY_TYPE_TRANSFER_LOAN = "04"; //ת������

APPLY_TYPE_CREDIT_APPLY = "11"; //���Ŷ������
APPLY_TYPE_CREDIT_INCREASE = "12"; //�����������
APPLY_TYPE_CREDIT_REVOKE = "13"; //����ջ�����
APPLY_TYPE_CREDIT_DECREASE = "14"; //�����������
APPLY_TYPE_CREDIT_FREEZE = "15"; //��ȶ���/�ⶳ������

APPLY_TYPE_PROJECT_APPLY = "21"; //������Ŀ����
APPLY_TYPE_PROJECT_ALTER = "22"; //������Ŀ�޸�����
APPLY_TYPE_PROJECT_TERMINATE = "23"; //������Ŀ��ֹ����

APPLY_TYPE_CLR_CLASS_DOWN = "31"; //�弶�����µ�����
APPLY_TYPE_CLR_CLASS_UP = "32"; //�弶�����ϵ�����
APPLY_TYPE_ADV_RTN = "33"; //��ǰ��������
APPLY_TYPE_LOAN_TO_BAD = "34"; //����ת����/��������
APPLY_TYPE_CHG_GUARANTEE = "35"; //���������Ϣ����
APPLY_TYPE_CHG_INTRATE = "36"; //�������ʱ������
APPLY_TYPE_TERM_DEFER = "37"; //���������ӳ�����
APPLY_TYPE_TERM_SHORTEN = "38"; //����������������
APPLY_TYPE_CHG_RTN_TYPE = "39"; //���ʽ�������
APPLY_TYPE_CHG_RTN_DATE = "40"; //Լ���ۿ��ձ������
APPLY_TYPE_CHG_PHASE_DTL = "41"; //�׶λ�����Ϣ�������
APPLY_TYPE_CHG_RTN_ACTNO = "42"; //�����ʺű������
APPLY_TYPE_CREDIT_INTRATE = "43"; //������ʱ������
APPLY_TYPE_EDU_LOAN_EXTEND = "44"; //��ѧ����չ������
APPLY_TYPE_EDU_LOAN_TRSF_DATE = "45"; //��ѧ����ת�ȶ��ձ������
APPLY_TYPE_EDU_LOAN_GRANT_PLAN = "46"; //��ѧ����ſ�ƻ��������
APPLY_TYPE_CHG_FUND_REPAY_MODE = "47"; //������廹����ʽ�������
APPLY_TYPE_CHG_CONJUNCTER = "48"; //�δ��˱������

/**
 * �ַ�������
 */
STRING_BUFFER_LEN_MID = 1024;
STRING_BUFFER_LEN_MIN = 256;
STRING_BUFFER_LEN_MAX = 4096;

/**
 * globalinfo��ID
 */
TABLE_GLOBAL_INFO_ID = 1;

/**
 * session ID�ĳ�������
 */
WEB_SESSION_ID = "jsessionid";

/**
 * ����״̬
 */
GLOBAL_INFO_STATE_ONLINE = "0"; //����״̬
GLOBAL_INFO_STATE_BATCH = "1"; //����״̬

/**
 * ��������
 */
FUNC_TYPE_INQUIRY = "0"; //��ѯ��
FUNC_TYPE_UPDATE = "1"; //�޸���

/**
 * �����ʵ����͵�ַ
 */
BRANCH_MAIL_ADDR_PL_CENTER = "1"; //��������
BRANCH_MAIL_ADDR_ACCOUNT = "2"; //�������

/**
 * ��������
 */
NOTE_TYPE_LOAN = "1"; //��ͬ
NOTE_TYPE_INDV = "2"; //�ͻ�
NOTE_TYPE_COOP = "3"; //��Լ�̻�
NOTE_TYPE_PROJECT = "4"; //������Ŀ
NOTE_TYPE_OTHER = "5"; //����

/**
 * ����ָ��
 */
RISK_GUIDE_LINE_LNBAL = "1"; //�������
RISK_GUIDE_LINE_ILL_BAL = "2"; //�����������
RISK_GUIDE_LINE_ILL_BAL_RATE = "3"; //����������
RISK_GUIDE_LINE_ESTIMATE_LOSS_RATE = "4"; //���ƴ�����ʧ��
RISK_GUIDE_LINE_NORMAL_TRANSFER_RATIO = "5"; //���������Ǩ����
RISK_GUIDE_LINE_ATTENTION_TRANSFER_RATIO = "6"; //��ע�����Ǩ����
RISK_GUIDE_LINE_LESSER_TRANSFER_RATIO = "7"; //�μ������Ǩ����
RISK_GUIDE_LINE_SHADINESS_TRANSFER_RATIO = "8"; //���������Ǩ����

/**
 * �ͻ�����ָ��
 */
CUST_GUIDE_LINE_SEX = "01"; //�Ա�
CUST_GUIDE_LINE_OCCUPATION = "02"; //ְҵ
CUST_GUIDE_LINE_TRADE = "03"; //��ҵ
CUST_GUIDE_LINE_DUTY = "04"; //ְ��
CUST_GUIDE_LINE_TITLE = "05"; //ְ��
CUST_GUIDE_LINE_CORP_PROPERTY = "06"; //��λ����
CUST_GUIDE_LINE_MARRIAGE = "07"; //����״��
CUST_GUIDE_LINE_HUKOU_TYPE = "08"; //��������
CUST_GUIDE_LINE_EDU_LEVEL = "09"; //�Ļ��̶�
CUST_GUIDE_LINE_INDV_INCOME = "10"; //������
CUST_GUIDE_LINE_FAMILY_INCOME = "11"; //��ͥ��������
CUST_GUIDE_LINE_CREDIT_GRADE = "12"; //���������÷�
CUST_GUIDE_LINE_LNTYPE = "13"; //��������
CUST_GUIDE_LINE_LNAMT = "14"; //������
CUST_GUIDE_LINE_TERM = "15"; //��������
CUST_GUIDE_LINE_GUATCODE = "16"; //������ʽ
CUST_GUIDE_LINE_RTN_TYPE = "17"; //���ʽ
CUST_GUIDE_LINE_RTN_INTERVAL = "18"; //������
CUST_GUIDE_LINE_RTN_DATE_TYPE = "19"; //��������ȷ����ʽ

/**
 * �ͻ�����ָ��
 */
CUST_MODE_A = "A"; //A��ͻ�
CUST_MODE_B = "B"; //B��ͻ�
CUST_MODE_C = "C"; //C��ͻ�
CUST_MODE_NO = "0"; //δ����ͻ�

/**
 * �׶λ���֮��ϻ��������С�׶���
 */
DATADIC_TYPE_PHASENO_MAX = 8; //
DATADIC_TYPE_PHASENO_MIN = 2; //

/*
*��������
*
*/
APPTYPE_TYPE_FIVECLASS_MODE="49";
APPTYPE_TYPE_FIVECLASS_DOWN="31";
APPTYPE_TYPE_FIVECLASS_UP="32";

/*
*����Ҫ��
*
*/
CUSTGRADE_MODEL_SEX="1";//�Ա�
CUSTGRADE_MODEL_MARRIAGE="2";//����״��
CUSTGRADE_MODEL_AGE="3"//����

CUSTGRADE_MODEL_EDULEVEL="5";//�Ļ��̶�
CUSTGRADE_MODEL_SOCIALSECURITSTATUS="6";//�Ļ��̶�
CUSTGRADE_MODEL_HEALTHSTATUS="7";//����״��
CUSTGRADE_MODEL_CURRRESIDEYEARS="8";//��ס����

CUSTGRADE_MODEL_CORPPRO="9";//��λ����
CUSTGRADE_MODEL_TITLE="10";//ְ��
CUSTGRADE_MODEL_POSTPRO="11";//��λ����
CUSTGRADE_MODEL_JOBYEARS="12";//��������

CUSTGRADE_MODEL_INDVINCOME="13";//������
CUSTGRADE_MODEL_FAMILYINCOME="14";//��ͥ������
CUSTGRADE_MODEL_RTNRATE="15";//������
CUSTGRADE_MODEL_HOUSEWORTH="16"//������ֵ
CUSTGRADE_MODEL_OTHERWORTH="17"//������ֵ

CUSTGRADE_MODEL_AVERAGEBAL="18";//�վ�����
CUSTGRADE_MODEL_CREDITSTATUS="20"//�����������
CUSTGRADE_MODEL_OTHERCREDIT="21"//�����������
CUSTGRADE_MODEL_ACCOUNTSTATUS="22"//�ʻ��������
/*
*֤������
*
*/
IDTYPE_HUKOU = "6";//����
IDTYPE_OTHER = "7";//����

/*
*���ޱ����ʽ
*
*/
TERM_TYPE_ZQ = "1";//չ��
TERM_TYPE_YQ = "2";//����
TERM_TYPE_SQ = "3";//����


/*
*���н��ڻ�������
*��������ʹ��
*add jiang@20080725
*/
BANK_CODE_JINGZHOU = "D10025370H0004";//����

/*
* �������޵����޿��Ʒ�ʽ
*/
TERMTYPE_YEAR = "0";//����
TERMTYPE_MONTH = "1";//����
TERMTYPE_DATE = "2";//����

/**
* ����С��
*/
LNID_CREDIT_LOAN = "101003"; // �������������Ŵ�
