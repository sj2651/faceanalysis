package kr.co.faceanalysis.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Pagination {
	int pg = 1; // 현재 페이지
	int sz = 8; // 페이지 당 레코드 수
	int sb;
	int ob;
	String st; // search text
	int recordCount;

	/*
	public String getQueryString() {
		String url = null;
		try {
			String temp = (st == null) ? "" : URLEncoder.encode(st, "UTF-8");
			url = String.format("pg=%d&sz=%d&ob=%d&sb=%d&st=%s", pg, sz, ob, sb, temp);
		} catch (UnsupportedEncodingException e) {
		}
		return url;
	}
	*/

	public String getQueryString() {
		String url = null;
		try {
			String temp = (st == null) ? "" : URLEncoder.encode(st, "UTF-8");
			url = String.format("pg=%d&sz=%d", pg, sz);
		} catch (UnsupportedEncodingException e) {
		}
		return url;
	}

	public void setOb(int ob) {
		this.ob = ob;
	}

	public int getOb() {
		return ob;
	}
	
	public int getPg() {
		return pg;
	}

	public int getSz() {
		return sz;
	}

	public int getSb() {
		return sb;
	}

	public String getSt() {
		return st;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setPg(int pg) {
		this.pg = pg;
	}

	public void setSz(int sz) {
		this.sz = sz;
	}

	public void setSb(int sb) {
		this.sb = sb;
	}

	public void setSt(String st) {
		this.st = st;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

}
