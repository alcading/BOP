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

public abstract class BaseWhjWgjy  implements Serializable {

	// constructors
	public BaseWhjWgjy () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjWgjy (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String certTypeCode;
	private java.lang.String ptyCountryCode;
	private java.lang.String idCode;
	private java.lang.String rq;
	private java.lang.String jlzt;



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





	public java.lang.String getRq() {
		return rq;
	}

	public void setRq(java.lang.String rq) {
		this.rq = rq;
	}

	public int getHashCode() {
		return hashCode;
	}

	public void setHashCode(int hashCode) {
		this.hashCode = hashCode;
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


	public java.lang.String getJlzt() {
		return jlzt;
	}

	public void setJlzt(java.lang.String jlzt) {
		this.jlzt = jlzt;
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