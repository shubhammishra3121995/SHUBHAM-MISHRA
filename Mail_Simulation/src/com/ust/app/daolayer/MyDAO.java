package com.ust.app.daolayer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import com.ust.app.model.MailInfo;
import com.ust.app.model.UserInfo;



public interface MyDAO {
	public boolean signup(UserInfo dto);
	public UserInfo login(String email,String password);
	public List<MailInfo> inbox();
	public List<MailInfo> sent();
	public List<MailInfo> draft();
	public UserInfo compose(String from,String to,String sub,String body);
	public boolean forgot(String email,String password,String seqanswer,String cpassword,String sequestion);
	public boolean change(String password,String cpassword);
	public boolean delete(int id);
	public MailInfo message(int mid,MailInfo dto);
	public List<MailInfo> deletedMail(String to);
//	//public List<MailInfo> composeDraft(int id);
	public boolean finaldelete(int mid);
	public MailInfo composedraft(int request);
	//public boolean editdraft(HttpServletRequest req);
	//public boolean deletetempinb( MailInfo dto, HttpServletRequest request,HttpServletResponse response,HttpSession session);
}
