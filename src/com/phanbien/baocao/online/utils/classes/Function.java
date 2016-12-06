package com.phanbien.baocao.online.utils.classes;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.*;
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
	
	public boolean SendMail(String toMail,String username,String password){
		try {
			Properties properties = new Properties();

			InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties");

			if (input == null) {
				System.out.println("Cannot find config");
				return false;
			}

			properties.load(input);

			String email = properties.getProperty("email");

			String passwordMail = properties.getProperty("password-email");
			
			System.out.println(email);
			System.out.println(passwordMail);
			
			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp-mail.outlook.com");
			props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props,
			  new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(email, passwordMail);
				}
			  });

			try {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(email));
				message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(toMail));
				message.setSubject(("Mật khẩu cho tài khoản "+ username));
				message.setText("Mật khẩu của bạn là " +password);
					
				Transport.send(message);
				System.out.println("Done");
				return true;
			} catch (MessagingException e) {
				return false;
				
			}

		} catch (IOException e) {
			return false;
		}
	}
	
	public String EncryptionString(String str){
		MessageDigest messageDigest=null;
		try {
			messageDigest = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		str="group!3_"+str;
		
		messageDigest.update(str.getBytes());

	    byte byteData[] = messageDigest.digest();

	    StringBuffer sb = new StringBuffer();
	    for (int i = 0; i < byteData.length; i++)
	        sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	    
	    return sb.toString();
		
	}
	public String getUploadPath(){
		Properties properties = new Properties();

		InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties");

		if (input == null) {
			System.out.println("Cannot find config");
			return "";
		}

		try {
			properties.load(input);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return properties.getProperty("uploadpath");
	}

}
