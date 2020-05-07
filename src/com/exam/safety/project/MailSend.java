package com.exam.safety.project;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServlet;

import org.omg.CORBA.PRIVATE_MEMBER;

public class MailSend extends HttpServlet {

	public String mailSend(String email) {

		// 랜덤 번호 만들기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}

		String AuthenticationKey = temp.toString(); // 랜덤번호

		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.ssl.trust", "*");

		Authenticator auth = new MailAuth();

		Session session = Session.getDefaultInstance(prop, auth);

		MimeMessage msg = new MimeMessage(session);

		// 넣을 말
		String content = "SAFTY 회원가입을 환영합니다. 인증 번호는 [" + AuthenticationKey + "]입니다.";

		try {
			msg.setSentDate(new Date());

			msg.setFrom(new InternetAddress("dnflskfk1994@gmail.com", "SAFTY"));
			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(Message.RecipientType.TO, to);
			msg.setSubject("SAFTY 회원가입 인증", "UTF-8");
			msg.setText(content, "UTF-8");

			Transport.send(msg);

		} catch (AddressException ae) {
			System.out.println("AddressException : " + ae.getMessage());
		} catch (MessagingException me) {
			System.out.println("MessagingException : " + me.getMessage());
		} catch (UnsupportedEncodingException e) {
			System.out.println("UnsupportedEncodingException : " + e.getMessage());
		}

		return AuthenticationKey;

	} // MailSend end

}
