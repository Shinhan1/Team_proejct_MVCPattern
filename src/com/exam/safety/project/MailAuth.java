package com.exam.safety.project;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{

    PasswordAuthentication pa;

    public MailAuth() {
        String mail_id = "dnflskfk1994@gmail.com";
        String mail_pw = "!y6593947";

        pa = new PasswordAuthentication(mail_id, mail_pw);
    }

    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}


