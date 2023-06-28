package com.mycompany.app.infra.commenGroup;

import javax.print.attribute.standard.DateTimeAtCompleted;

public class CommenGroup {

	//디비 컬럼명 첫글자는 소문자
	//seq는 편의상 디비에는 int지만 string으로 불러온다.
	//주로 테이블의 컬럼명과 일치 시킨다.
	
	private String seq;
	private String commenGroupName;
	private String delNY;
	private String commenGroupNameEng;
	private String commenGroupOrder;
	private Integer regSeq;
	private String regIp;
	private DateTimeAtCompleted regDateTime;
	private Integer modSeq;
	private String modIp;
	private DateTimeAtCompleted modDateTime;
	private String remIp;
	private DateTimeAtCompleted remDateTime;
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
	public String getCommenGroupNameEng() {
		return commenGroupNameEng;
	}
	public void setCommenGroupNameEng(String commenGroupNameEng) {
		this.commenGroupNameEng = commenGroupNameEng;
	}
	public String getCommenGroupOrder() {
		return commenGroupOrder;
	}
	public void setCommenGroupOrder(String commenGroupOrder) {
		this.commenGroupOrder = commenGroupOrder;
	}
	public Integer getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(Integer regSeq) {
		this.regSeq = regSeq;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public DateTimeAtCompleted getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(DateTimeAtCompleted regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Integer getModSeq() {
		return modSeq;
	}
	public void setModSeq(Integer modSeq) {
		this.modSeq = modSeq;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public DateTimeAtCompleted getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(DateTimeAtCompleted modDateTime) {
		this.modDateTime = modDateTime;
	}
	public String getRemIp() {
		return remIp;
	}
	public void setRemIp(String remIp) {
		this.remIp = remIp;
	}
	public DateTimeAtCompleted getRemDateTime() {
		return remDateTime;
	}
	public void setRemDateTime(DateTimeAtCompleted remDateTime) {
		this.remDateTime = remDateTime;
	}
	

}
