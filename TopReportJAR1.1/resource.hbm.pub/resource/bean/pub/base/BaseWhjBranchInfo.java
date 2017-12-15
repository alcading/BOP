package resource.bean.pub.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the TLR_LOGIN_LOG table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="WHJ_BRANCH_INFO"
 */

public abstract class BaseWhjBranchInfo  implements Serializable {

	// constructors
	public BaseWhjBranchInfo () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjBranchInfo (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String zdyhh;
	private java.lang.String yljgdm;
	private java.lang.String rhzfdm;
	private java.lang.String whjjgdm;
	private java.lang.String whjjgbs;
	private java.lang.String whjdm;
	private java.lang.String ftpip;
	private java.lang.String ftpdir;
	private java.lang.String ftpname;
	private java.lang.String ftppwd;
	private java.lang.String zt;
	private java.lang.String ftpport;
	private java.lang.String ftpbz;


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


	public java.lang.String getZdyhh() {
		return zdyhh;
	}

	public void setZdyhh(java.lang.String zdyhh) {
		this.zdyhh = zdyhh;
	}

	public java.lang.String getYljgdm() {
		return yljgdm;
	}

	public void setYljgdm(java.lang.String yljgdm) {
		this.yljgdm = yljgdm;
	}

	public java.lang.String getRhzfdm() {
		return rhzfdm;
	}

	public void setRhzfdm(java.lang.String rhzfdm) {
		this.rhzfdm = rhzfdm;
	}

	public java.lang.String getWhjjgdm() {
		return whjjgdm;
	}

	public void setWhjjgdm(java.lang.String whjjgdm) {
		this.whjjgdm = whjjgdm;
	}

	public java.lang.String getWhjjgbs() {
		return whjjgbs;
	}

	public void setWhjjgbs(java.lang.String whjjgbs) {
		this.whjjgbs = whjjgbs;
	}

	public java.lang.String getWhjdm() {
		return whjdm;
	}

	public void setWhjdm(java.lang.String whjdm) {
		this.whjdm = whjdm;
	}

	public java.lang.String getFtpip() {
		return ftpip;
	}

	public void setFtpip(java.lang.String ftpip) {
		this.ftpip = ftpip;
	}

	public java.lang.String getFtpdir() {
		return ftpdir;
	}

	public void setFtpdir(java.lang.String ftpdir) {
		this.ftpdir = ftpdir;
	}

	public java.lang.String getFtpname() {
		return ftpname;
	}

	public void setFtpname(java.lang.String ftpname) {
		this.ftpname = ftpname;
	}

	public java.lang.String getFtppwd() {
		return ftppwd;
	}

	public void setFtppwd(java.lang.String ftppwd) {
		this.ftppwd = ftppwd;
	}

	public java.lang.String getZt() {
		return zt;
	}

	public void setZt(java.lang.String zt) {
		this.zt = zt;
	}

	public java.lang.String getFtpport() {
		return ftpport;
	}

	public void setFtpport(java.lang.String ftpport) {
		this.ftpport = ftpport;
	}

	public java.lang.String getFtpbz() {
		return ftpbz;
	}

	public void setFtpbz(java.lang.String ftpbz) {
		this.ftpbz = ftpbz;
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