package com.mycompany.app.infra.commenGroup;

import java.sql.Timestamp;



public class CommenGroup {

	//디비 컬럼명 첫글자는 소문자
	//seq는 편의상 디비에는 int지만 string으로 불러온다.
	//주로 테이블의 컬럼명과 일치 시킨다.
	
	private String seq;
	private String commenGroupName;
	private String commenGroupNameEN;
	private String regIp;
	private Timestamp regDateTime;
	private String modIp;
	private Timestamp modDateTime;
	private String remIp;
	private Timestamp remDateTime;
	private String delNY;
//	----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCommenGroupName() {
		return commenGroupName;
	}
	public void setCommenGroupName(String commenGroupName) {
		this.commenGroupName = commenGroupName;
	}
	
	public String getDelNY() {
		return delNY;
	}
	public void setDelNY(String delNY) {
		this.delNY = delNY;
	}
	public String getCommenGroupNameEN() {
		return commenGroupNameEN;
	}
	public void setCommenGroupNameEN(String commenGroupNameEN) {
		this.commenGroupNameEN = commenGroupNameEN;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public Timestamp getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Timestamp regDateTime) {
		this.regDateTime = regDateTime;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public Timestamp getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Timestamp modDateTime) {
		this.modDateTime = modDateTime;
	}
	public String getRemIp() {
		return remIp;
	}
	public void setRemIp(String remIp) {
		this.remIp = remIp;
	}
	public Timestamp getRemDateTime() {
		return remDateTime;
	}
	public void setRemDateTime(Timestamp remDateTime) {
		this.remDateTime = remDateTime;
	}
	

}
