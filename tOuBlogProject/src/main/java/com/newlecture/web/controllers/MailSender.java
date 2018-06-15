package com.newlecture.web.controllers;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class MailSender {

	public static Boolean sendMail(String strTitle, String strContents, String strMailFrom , String strName) throws Exception {
		Boolean result = true;
	
		String strMailTo = "lvxclmlawe@nate.com";
		System.out.println(strMailFrom);
		System.out.println(strTitle);
		System.out.println(strContents);
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com"); // sendmail ip address
			props.put("mail.smtp.port", "587"); // 25
			props.put("mail.smtp.auth", "true");
			Authenticator auth = new MyAuthentication();
			
			Session msgSession = Session.getDefaultInstance(props, auth);
			MimeMessage msg = new MimeMessage(msgSession);
			InternetAddress from = new InternetAddress(strMailFrom, strName, "UTF-8"); // (보내는사람 메일 주소 , 표시 할 이름 ,
																							// 문자셋)
			
			msg.setFrom(from);
			InternetAddress to = new InternetAddress(strMailTo); // 받는사람 메일주소
			msg.setRecipient(Message.RecipientType.TO, to);
			msg.setSubject(" "+strName+ " : " + strTitle); // 메일 제목
			msg.setContent("보내는사람 메일 : "+ strMailFrom + "<br>"+strContents, "text/html; charset=UTF-8"); // 메일 내용

			Transport.send(msg);
		} catch (MessagingException e) {
			result = false;
			System.out.println(e);
		}
		return result;
	}

	public static class MyAuthentication extends Authenticator {
		PasswordAuthentication pa;

		public MyAuthentication() {
			String id = "mailsendKmong@gmail.com";
			String pw = "kmong1234";
			pa = new PasswordAuthentication(id, pw);
		}

		public PasswordAuthentication getPasswordAuthentication() {
			return pa;
		}
	}

}