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

public abstract class BaseWhjSend  implements Serializable {

	// constructors
	public BaseWhjSend () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjSend (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String wjm;
	private java.lang.String kzwjm;
	private java.lang.String scsj;
	private java.lang.String scjlbs;
	private java.lang.String lx;
    private java.lang.String bankCode;
    private java.lang.String zt;
    
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


	


	public java.lang.String getWjm() {
		return wjm;
	}

	public void setWjm(java.lang.String wjm) {
		this.wjm = wjm;
	}

	public java.lang.String getKzwjm() {
		return kzwjm;
	}

	public void setKzwjm(java.lang.String kzwjm) {
		this.kzwjm = kzwjm;
	}

	public java.lang.String getScsj() {
		return scsj;
	}

	public void setScsj(java.lang.String scsj) {
		this.scsj = scsj;
	}

	public java.lang.String getScjlbs() {
		return scjlbs;
	}

	public void setScjlbs(java.lang.String scjlbs) {
		this.scjlbs = scjlbs;
	}

	public java.lang.String getLx() {
		return lx;
	}

	public void setLx(java.lang.String lx) {
		this.lx = lx;
	}

	
	public java.lang.String getBankCode() {
		return bankCode;
	}

	public void setBankCode(java.lang.String bankCode) {
		this.bankCode = bankCode;
	}

	
	public java.lang.String getZt() {
		return zt;
	}

	public void setZt(java.lang.String zt) {
		this.zt = zt;
	}

	public int getHashCode() {
		return hashCode;
	}

	public void setHashCode(int hashCode) {
		this.hashCode = hashCode;
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