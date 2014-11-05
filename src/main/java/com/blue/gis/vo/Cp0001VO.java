package com.blue.gis.vo;

import java.math.BigDecimal;

public class Cp0001VO {
	String	cmyMngtNo	;	//	회사관리번호   
	String	cmyNm	;	//	회사명
	String	btpyNo	;	//	사업자번호
	String	adrFrtNo	;	//	주소앞자리번호
	String	adrBckNo	;	//	주소뒷자리번호
	String	bscAdr	;	//	기본주소
	String	dtlAdr	;	//	상세주소
	BigDecimal	xcdn	;	//	X좌표
	BigDecimal	ycdn	;	//	Y좌표
	String	minIntrCn	;	//	메인소개내용
	String	dtlIntrCn	;	//	상세소개내용
	String	cmyLcnPhgpRut	;	//	회사위치사진경로
	String	cmyCntp01	;	//	회사연락처01
	String	cmyCntp02	;	//	회사연락처01
	String	emlAdr	;	//	이메일주소
	String	faxNo	;	//	팩스번호
	int page ; 
	int pageCnt ;
	public String getCmyMngtNo() {
		return cmyMngtNo;
	}
	public void setCmyMngtNo(String cmyMngtNo) {
		this.cmyMngtNo = cmyMngtNo;
	}
	public String getCmyNm() {
		return cmyNm;
	}
	public void setCmyNm(String cmyNm) {
		this.cmyNm = cmyNm;
	}
	public String getBtpyNo() {
		return btpyNo;
	}
	public void setBtpyNo(String btpyNo) {
		this.btpyNo = btpyNo;
	}
	public String getAdrFrtNo() {
		return adrFrtNo;
	}
	public void setAdrFrtNo(String adrFrtNo) {
		this.adrFrtNo = adrFrtNo;
	}
	public String getAdrBckNo() {
		return adrBckNo;
	}
	public void setAdrBckNo(String adrBckNo) {
		this.adrBckNo = adrBckNo;
	}
	public String getBscAdr() {
		return bscAdr;
	}
	public void setBscAdr(String bscAdr) {
		this.bscAdr = bscAdr;
	}
	public String getDtlAdr() {
		return dtlAdr;
	}
	public void setDtlAdr(String dtlAdr) {
		this.dtlAdr = dtlAdr;
	}
	public BigDecimal getXcdn() {
		return xcdn;
	}
	public void setXcdn(BigDecimal xcdn) {
		this.xcdn = xcdn;
	}
	public BigDecimal getYcdn() {
		return ycdn;
	}
	public void setYcdn(BigDecimal ycdn) {
		this.ycdn = ycdn;
	}
	public String getMinIntrCn() {
		return minIntrCn;
	}
	public void setMinIntrCn(String minIntrCn) {
		this.minIntrCn = minIntrCn;
	}
	public String getDtlIntrCn() {
		return dtlIntrCn;
	}
	public void setDtlIntrCn(String dtlIntrCn) {
		this.dtlIntrCn = dtlIntrCn;
	}
	public String getCmyLcnPhgpRut() {
		return cmyLcnPhgpRut;
	}
	public void setCmyLcnPhgpRut(String cmyLcnPhgpRut) {
		this.cmyLcnPhgpRut = cmyLcnPhgpRut;
	}
	public String getCmyCntp01() {
		return cmyCntp01;
	}
	public void setCmyCntp01(String cmyCntp01) {
		this.cmyCntp01 = cmyCntp01;
	}
	public String getCmyCntp02() {
		return cmyCntp02;
	}
	public void setCmyCntp02(String cmyCntp02) {
		this.cmyCntp02 = cmyCntp02;
	}
	public String getEmlAdr() {
		return emlAdr;
	}
	public void setEmlAdr(String emlAdr) {
		this.emlAdr = emlAdr;
	}
	public String getFaxNo() {
		return faxNo;
	}
	public void setFaxNo(String faxNo) {
		this.faxNo = faxNo;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageCnt() {
		return pageCnt; 
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
}
