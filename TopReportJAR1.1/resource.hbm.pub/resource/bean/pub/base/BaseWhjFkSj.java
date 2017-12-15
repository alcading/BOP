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

public abstract class BaseWhjFkSj  implements Serializable {

	// constructors
	public BaseWhjFkSj () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseWhjFkSj (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}

	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String totalrecords;
	private java.lang.String sucrecords;
	private java.lang.String falrecords;
	private java.lang.String bussno;
	private java.lang.String errfield;
	private java.lang.String errfieldcn;
	private java.lang.String errdesc;
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
	
	
	public java.lang.String getTotalrecords() {
		return totalrecords;
	}

	public void setTotalrecords(java.lang.String totalrecords) {
		this.totalrecords = totalrecords;
	}

	public java.lang.String getSucrecords() {
		return sucrecords;
	}

	public void setSucrecords(java.lang.String sucrecords) {
		this.sucrecords = sucrecords;
	}

	public java.lang.String getFalrecords() {
		return falrecords;
	}

	public void setFalrecords(java.lang.String falrecords) {
		this.falrecords = falrecords;
	}

	public java.lang.String getBussno() {
		return bussno;
	}

	public void setBussno(java.lang.String bussno) {
		this.bussno = bussno;
	}

	public java.lang.String getErrfield() {
		return errfield;
	}

	public void setErrfield(java.lang.String errfield) {
		this.errfield = errfield;
	}

	public java.lang.String getErrfieldcn() {
		return errfieldcn;
	}

	public void setErrfieldcn(java.lang.String errfieldcn) {
		this.errfieldcn = errfieldcn;
	}

	public java.lang.String getErrdesc() {
		return errdesc;
	}

	public void setErrdesc(java.lang.String errdesc) {
		this.errdesc = errdesc;
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