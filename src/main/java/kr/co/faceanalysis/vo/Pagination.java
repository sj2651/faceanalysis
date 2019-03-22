/*
package kr.co.faceanalysis.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Pagination {
	int bd; // boardId
	int pg = 1; // 현재 페이지
	int sz = 16; // 페이지 당 레코드 수
	String st; // search text
	int recordCount;

	public String getQueryString() {
		String url = null;
		try {
			String temp = (st == null) ? "" : URLEncoder.encode(st, "UTF-8");
			url = String.format("bd=%d&pg=%d&sz=%d&ob=%d&sb=%d&st=%s", bd, pg, sz, ob, sb, temp);
		} catch (UnsupportedEncodingException e) {
		}
		return url;
	}
}*/
