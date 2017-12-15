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

public abstract class BaseWhjXh  implements Serializable {

	// constructors
	public BaseWhjXh () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjXh (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String jgbs;
	private java.lang.Integer xh;
	private java.lang.Integer sxh;
	private java.lang.String rq;
	private java.lang.String lb;

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


	
	public java.lang.String getLb() {
		return lb;
	}

	public void setLb(java.lang.String lb) {
		this.lb = lb;
	}

	public java.lang.String getJgbs() {
		return jgbs;
	}

	public void setJgbs(java.lang.String jgbs) {
		this.jgbs = jgbs;
	}

	public java.lang.Integer getXh() {
		return xh;
	}

	public void setXh(java.lang.Integer xh) {
		this.xh = xh;
	}

	public java.lang.Integer getSxh() {
		return sxh;
	}

	public void setSxh(java.lang.Integer sxh) {
		this.sxh = sxh;
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