package resource.bean.pub.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the TLR_LOGIN_LOG table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="WHJ_TX_INFO"
 */

public abstract class BaseWhjXf  implements Serializable {

	// constructors
	public BaseWhjXf () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjXf (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String refNo;
	private java.lang.String certTypeCode;
	private java.lang.String ptyCountryCode;
	private java.lang.String idCode;
	private java.lang.String personName;
	private java.lang.String acctno;
	private java.lang.String jyCcyCode;
	private java.lang.Double jyAmt;
	private java.lang.Double qsAmtRmb;
	private java.lang.String mccCode;
	private java.lang.String cardTypeCode;
	private java.lang.String cardChnlCode;
	private java.lang.String bankCode;
	private java.lang.String branchSafecode;
	private java.lang.String bizDealTime;
	private java.lang.String countryCode;
	private java.lang.String bankSelfNum;
	private java.lang.String cardSelfNum;
	private java.lang.String operTypeCode;
	private java.lang.String reasonCode;
	private java.lang.String jlzt;
	private java.lang.String shName;
	private java.lang.String jyChnl;


	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  column="LOG_ID"
     */
	public java.lang.String getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (java.lang.String id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
	}





	public int getHashCode() {
		return hashCode;
	}

	public void setHashCode(int hashCode) {
		this.hashCode = hashCode;
	}

	public java.lang.String getRefNo() {
		return refNo;
	}

	public void setRefNo(java.lang.String refNo) {
		this.refNo = refNo;
	}

	public java.lang.String getCertTypeCode() {
		return certTypeCode;
	}

	public void setCertTypeCode(java.lang.String certTypeCode) {
		this.certTypeCode = certTypeCode;
	}

	
	public java.lang.String getPtyCountryCode() {
		return ptyCountryCode;
	}

	public void setPtyCountryCode(java.lang.String ptyCountryCode) {
		this.ptyCountryCode = ptyCountryCode;
	}

	public java.lang.String getIdCode() {
		return idCode;
	}

	public void setIdCode(java.lang.String idCode) {
		this.idCode = idCode;
	}

	public java.lang.String getPersonName() {
		return personName;
	}

	public void setPersonName(java.lang.String personName) {
		this.personName = personName;
	}

	public java.lang.String getAcctno() {
		return acctno;
	}

	public void setAcctno(java.lang.String acctno) {
		this.acctno = acctno;
	}

	public java.lang.String getJyCcyCode() {
		return jyCcyCode;
	}

	public void setJyCcyCode(java.lang.String jyCcyCode) {
		this.jyCcyCode = jyCcyCode;
	}



	public java.lang.Double getJyAmt() {
		return jyAmt;
	}

	public void setJyAmt(java.lang.Double jyAmt) {
		this.jyAmt = jyAmt;
	}

	public java.lang.Double getQsAmtRmb() {
		return qsAmtRmb;
	}

	public void setQsAmtRmb(java.lang.Double qsAmtRmb) {
		this.qsAmtRmb = qsAmtRmb;
	}

	public java.lang.String getMccCode() {
		return mccCode;
	}

	public void setMccCode(java.lang.String mccCode) {
		this.mccCode = mccCode;
	}

	public java.lang.String getCardTypeCode() {
		return cardTypeCode;
	}

	public void setCardTypeCode(java.lang.String cardTypeCode) {
		this.cardTypeCode = cardTypeCode;
	}

	public java.lang.String getCardChnlCode() {
		return cardChnlCode;
	}

	public void setCardChnlCode(java.lang.String cardChnlCode) {
		this.cardChnlCode = cardChnlCode;
	}

	public java.lang.String getBankCode() {
		return bankCode;
	}

	public void setBankCode(java.lang.String bankCode) {
		this.bankCode = bankCode;
	}

	public java.lang.String getBranchSafecode() {
		return branchSafecode;
	}

	public void setBranchSafecode(java.lang.String branchSafecode) {
		this.branchSafecode = branchSafecode;
	}

	public java.lang.String getBizDealTime() {
		return bizDealTime;
	}

	public void setBizDealTime(java.lang.String bizDealTime) {
		this.bizDealTime = bizDealTime;
	}

	public java.lang.String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(java.lang.String countryCode) {
		this.countryCode = countryCode;
	}

	public java.lang.String getBankSelfNum() {
		return bankSelfNum;
	}

	public void setBankSelfNum(java.lang.String bankSelfNum) {
		this.bankSelfNum = bankSelfNum;
	}

	public java.lang.String getCardSelfNum() {
		return cardSelfNum;
	}

	public void setCardSelfNum(java.lang.String cardSelfNum) {
		this.cardSelfNum = cardSelfNum;
	}

	public java.lang.String getOperTypeCode() {
		return operTypeCode;
	}

	public void setOperTypeCode(java.lang.String operTypeCode) {
		this.operTypeCode = operTypeCode;
	}

	public java.lang.String getReasonCode() {
		return reasonCode;
	}

	public void setReasonCode(java.lang.String reasonCode) {
		this.reasonCode = reasonCode;
	}

	public java.lang.String getJlzt() {
		return jlzt;
	}

	public void setJlzt(java.lang.String jlzt) {
		this.jlzt = jlzt;
	}

	public java.lang.String getShName() {
		return shName;
	}

	public void setShName(java.lang.String shName) {
		this.shName = shName;
	}

	public java.lang.String getJyChnl() {
		return jyChnl;
	}

	public void setJyChnl(java.lang.String jyChnl) {
		this.jyChnl = jyChnl;
	}

	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof resource.bean.pub.TlrLoginLog)) return false;
		else {
			resource.bean.pub.TlrLoginLog tlrLoginLog = (resource.bean.pub.TlrLoginLog) obj;
			if (null == this.getId() || null == tlrLoginLog.getId()) return false;
			else return (this.getId().equals(tlrLoginLog.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}