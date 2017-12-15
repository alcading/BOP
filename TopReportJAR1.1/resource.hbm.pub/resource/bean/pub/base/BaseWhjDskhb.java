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

public abstract class BaseWhjDskhb  implements Serializable {

	// constructors
	public BaseWhjDskhb () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjDskhb (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String zjzl;
	private java.lang.String zjhm;
	private java.lang.String zwxm;
	private java.lang.String gjdq;
	private java.lang.String zdyhh;


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


	public java.lang.String getZjzl() {
		return zjzl;
	}

	public void setZjzl(java.lang.String zjzl) {
		this.zjzl = zjzl;
	}

	public java.lang.String getZjhm() {
		return zjhm;
	}

	public void setZjhm(java.lang.String zjhm) {
		this.zjhm = zjhm;
	}

	public java.lang.String getZwxm() {
		return zwxm;
	}

	public void setZwxm(java.lang.String zwxm) {
		this.zwxm = zwxm;
	}

	public java.lang.String getGjdq() {
		return gjdq;
	}

	public void setGjdq(java.lang.String gjdq) {
		this.gjdq = gjdq;
	}

	

	public java.lang.String getZdyhh() {
		return zdyhh;
	}

	public void setZdyhh(java.lang.String zdyhh) {
		this.zdyhh = zdyhh;
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