package com.mycompany.app.infra.commenGroup;

import java.sql.Timestamp;

public class CommenGroupVo {

	
	private String seq;
	private String commenGroupName;
	private String commenGroupNameEN;
	private Timestamp regDateTime;
	private String keywordSeq;
	private String keywordCommenGroupName;
	private String keywordCommenGroupNameEN;
	private String keywordRegDT;
	
	
	
	
	public String getCommenGroupName() {
		return commenGroupName;
	}
	
	public void setCommenGroupName(String commenGroupName) {
		this.commenGroupName = commenGroupName;
	}
	
	public String getCommenGroupNameEN() {
		return commenGroupNameEN;
	}
	
	public void setCommenGroupNameEN(String commenGroupNameEN) {
		this.commenGroupNameEN = commenGroupNameEN;
	}
	
	public Timestamp getRegDateTime() {
		return regDateTime;
	}
	
	public void setRegDateTime(Timestamp regDateTime) {
		this.regDateTime = regDateTime;
	}
	
	
	public String getSeq() {
		return seq;
	}
	
	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String keywordSeq() {
		return keywordSeq;
	}

	public void keywordSeq(String keywordSeq) {
		this.keywordSeq = keywordSeq;
	}

	public String getKeywordSeq() {
		return keywordSeq;
	}

	public void setKeywordSeq(String keywordSeq) {
		this.keywordSeq = keywordSeq;
	}

	public String getKeywordCommenGroupName() {
		return keywordCommenGroupName;
	}

	public void setKeywordCommenGroupName(String keywordCommenGroupName) {
		this.keywordCommenGroupName = keywordCommenGroupName;
	}

	public String getKeywordCommenGroupNameEN() {
		return keywordCommenGroupNameEN;
	}

	public void setKeywordCommenGroupNameEN(String keywordCommenGroupNameEN) {
		this.keywordCommenGroupNameEN = keywordCommenGroupNameEN;
	}

	public String getKeywordRegDT() {
		return keywordRegDT;
	}

	public void setKeywordRegDT(String keywordRegDT) {
		this.keywordRegDT = keywordRegDT;
	}

	
	
	
}
