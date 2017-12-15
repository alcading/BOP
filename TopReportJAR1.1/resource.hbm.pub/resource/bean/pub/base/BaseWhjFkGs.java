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

public abstract class BaseWhjFkGs  implements Serializable {

	// constructors
	public BaseWhjFkGs () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjFkGs (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}

	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String formaterrs;
	private java.lang.String formatdDesc;
	private java.lang.String filenameFs;
	private java.lang.String filenameFk;
	private java.lang.String jgdm;
	private java.lang.String jgbs;
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





	public int getHashCode() {
		return hashCode;
	}

	public void setHashCode(int hashCode) {
		this.hashCode = hashCode;
	}
	
	public java.lang.String getFormaterrs() {
		return formaterrs;
	}

	public void setFormaterrs(java.lang.String formaterrs) {
		this.formaterrs = formaterrs;
	}

	public java.lang.String getFormatdDesc() {
		return formatdDesc;
	}

	public void setFormatdDesc(java.lang.String formatdDesc) {
		this.formatdDesc = formatdDesc;
	}

	public java.lang.String getFilenameFs() {
		return filenameFs;
	}

	public void setFilenameFs(java.lang.String filenameFs) {
		this.filenameFs = filenameFs;
	}

	public java.lang.String getFilenameFk() {
		return filenameFk;
	}

	public void setFilenameFk(java.lang.String filenameFk) {
		this.filenameFk = filenameFk;
	}

	public java.lang.String getJgdm() {
		return jgdm;
	}

	public void setJgdm(java.lang.String jgdm) {
		this.jgdm = jgdm;
	}

	public java.lang.String getJgbs() {
		return jgbs;
	}

	public void setJgbs(java.lang.String jgbs) {
		this.jgbs = jgbs;
	}

	public java.lang.String getRq() {
		return rq;
	}

	public void setRq(java.lang.String rq) {
		this.rq = rq;
	}

	public java.lang.String getJlzt() {
		return jlzt;
	}

	public void setJlzt(java.lang.String jlzt) {
		this.jlzt = jlzt;
	}



	
}