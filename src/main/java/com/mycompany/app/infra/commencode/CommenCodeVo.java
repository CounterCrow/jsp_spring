package com.mycompany.app.infra.commencode;

import java.sql.Timestamp;

public class CommenCodeVo {

	private String shGroupSeq;
	private String shCommenCDseq;
	private String shCommenCDname;
	private String shCommenCDnameEN;
	private Timestamp shCommenCDregDT;
	private Timestamp shCommenCDmodDT;
	
	// --------------------------------------------
	
	
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
	public Timestamp getShCommenCDregDT() {
		return shCommenCDregDT;
	}
	public void setShCommenCDregDT(Timestamp shCommenCDregDT) {
		this.shCommenCDregDT = shCommenCDregDT;
	}
	public Timestamp getShCommenCDmodDT() {
		return shCommenCDmodDT;
	}
	public void setShCommenCDmodDT(Timestamp shCommenCDmodDT) {
		this.shCommenCDmodDT = shCommenCDmodDT;
	}
	
	
}
