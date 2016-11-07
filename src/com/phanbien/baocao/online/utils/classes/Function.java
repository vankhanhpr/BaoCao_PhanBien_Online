package com.phanbien.baocao.online.utils.classes;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Function {

	public Function() {

	}

	public static String getDate() {
		Date curDate = new Date();

		return curDate.getHours() + " Giờ " + curDate.getMinutes() + " phút, Ngày " + curDate.getDate() + " tháng "
				+ curDate.getMonth() + " năm " + (curDate.getYear() + 1900);
	}
	
	public String toDateThongBao(Timestamp date) {

		SimpleDateFormat localDateFormat = new SimpleDateFormat("dd/MM/yyyy-HH:mm");
		return localDateFormat.format(date);
	}

	public String toDate2AddDatabase(Date date) {
		SimpleDateFormat localDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// '2016-11-01 21:56:09'

		return localDateFormat.format(date);
	}
}
