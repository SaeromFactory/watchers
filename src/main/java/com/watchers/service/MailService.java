package com.watchers.service;

import com.watchers.repository.MailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;

@Service
public class MailService {

    @Autowired
    private MailMapper  mailMapper;

    public boolean sendMail(String title, String contents, String to){
      //  MimeMessage message = mailMapper.createMimeMessage();
        final String email = "";
        final String password = "";
        Properties  p= new Properties();
        p.put("mail.smtp.user",email);
        p.put("mail.smtp.host","smtp.gmail.com");
        p.put("mail.smtp.post","465");
        p.put("mail.smtp.starttls.enable","true");
        p.put("mail.smtp.auth","true");

        p.put("mail.smtp.debug","true");
        p.put("mail.smtp.socketFactory.port","465");
        p.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        p.put("mail.smtp.socketFactory.fallback","false");

        try{
            Authenticator a = new Authenticator() {

                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    PasswordAuthentication p = new PasswordAuthentication(email,password);
                    return p;
                }
            };
            Session session = Session.getDefaultInstance(p,a);
            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setSubject(title);
            msg.setFrom(new InternetAddress("email"));
            msg.setRecipient(Message.RecipientType.TO,new InternetAddress(to));
            msg.setText(contents);
            Transport.send(msg);
        }catch (Exception e){
            e.printStackTrace();
        }

        return true;
    }

}
