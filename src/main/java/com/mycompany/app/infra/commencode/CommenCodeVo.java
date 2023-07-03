package com.mycompany.app.infra.commencode;

import java.sql.Timestamp;

import com.mycompany.app.infra.base.PageVo;

public class CommenCodeVo extends PageVo{
	
	private String commenCDseq;
	
	private String commenCDName;
	private String commenCDNameEN;
	private String shGroupSeq;
	private String shCommenCDseq;
	private String shCommenCDname;
	private String shCommenCDnameEN;
	private String shCommenCDregDT;
	private Timestamp shCommenCDmodDT;
	
	// --------------------------------------------
	
	public String getCommenCDseq() {
		return commenCDseq;
	}
	public void setCommenCDseq(String commenCDseq) {
		this.commenCDseq = commenCDseq;
	}
	public String getCommenCDName() {
		return commenCDName;
	}
	public void setCommenCDName(String commenCDName) {
		this.commenCDName = commenCDName;
	}
	public String getCommenCDNameEN() {
		return commenCDNameEN;
	}
	public void setCommenCDNameEN(String commenCDNameEN) {
		this.commenCDNameEN = commenCDNameEN;
	}
	public String getShGroupSeq() {
		return shGroupSeq;
	}
	public void setShGroupSeq(String shGroupSeq) {
		this.shGroupSeq = shGroupSeq;
	}
	public String getShCommenCDseq() {
		return shCommenCDseq;
	}
	public void setShCommenCDseq(String shCommenCDseq) {
		this.shCommenCDseq = shCommenCDseq;
	}
	public String getShCommenCDname() {
		return shCommenCDname;
	}
	public void setShCommenCDname(String shCommenCDname) {
		this.shCommenCDname = shCommenCDname;
	}
	public String getShCommenCDnameEN() {
		return shCommenCDnameEN;
	}
	public void setShCommenCDnameEN(String shCommenCDnameEN) {
		this.shCommenCDnameEN = shCommenCDnameEN;
	}
	public String getShCommenCDregDT() {
		return shCommenCDregDT;
	}
	public void setShCommenCDregDT(String shCommenCDregDT) {
		this.shCommenCDregDT = shCommenCDregDT;
	}
	public Timestamp getShCommenCDmodDT() {
		return shCommenCDmodDT;
	}
	public void setShCommenCDmodDT(Timestamp shCommenCDmodDT) {
		this.shCommenCDmodDT = shCommenCDmodDT;
	}
	

	
	
}
