package com.phanbien.baocao.online.utils.classes;

import java.util.Date;

public class Function {
	public Function(){
		
	}
	
	public static String getDate(){
		Date curDate=new Date();
		
		return curDate.getHours()+ " Giờ "+curDate.getMinutes() +" phút, Ngày "+ curDate.getDate() 
				+" tháng " +curDate.getMonth() +" năm "+ (curDate.getYear()+1900);

	}
}
