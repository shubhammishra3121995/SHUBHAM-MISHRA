package com.ust.app.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.ust.app.daolayer.MyDAO;
import com.ust.app.model.MailInfo;
import com.ust.app.model.UserInfo;


@Component
public class MyServiceImp1 implements MyService{

	@Autowired
	MyDAO md;

	@Override
	public boolean signup(UserInfo dto) {
		boolean b=md.signup(dto);
		return b;
	}

	@Override
	public UserInfo login(String email, String password) {
		UserInfo dto=md.login(email, password);
		return dto;
	}

	@Override
	public List<MailInfo> inbox() {
		List<MailInfo> list=md.inbox();
		return list;
	}

	@Override
	public List<MailInfo> sent() {
		List<MailInfo> list=md.sent();
		return list;
	}

	@Override
	public List<MailInfo> draft() {
		List<MailInfo> list=md.draft();
		return list;
	}

	@Override
	public UserInfo compose(String from, String to, String sub, String body) {
		UserInfo dto=md.compose(from, to, sub, body);
		return dto;
	}

	@Override
	public boolean forgot(String email, String password, String seqanswer, String cpassword,String sequestion) {
		boolean b=md.forgot(email, password, seqanswer, cpassword,sequestion);
		return b;
	}

	@Override
	public boolean change(String password, String cpassword) {
		boolean b=md.change(password, cpassword);
		return b;
	}

	@Override
	public boolean delete(int id) {
		boolean b=md.delete(id);
		return b;
	}

	@Override
	public List<MailInfo> deletedMail(String to) {
		List<MailInfo> list=md.deletedMail(to);
		return list;
	}

	
	@Override
	public MailInfo message(int mid, MailInfo dto) {
		MailInfo adto=md.message(mid,dto);
		return adto;
	}

	@Override
	public boolean finaldelete(int mid) {
		boolean d=md.finaldelete(mid);
		return d;
	}

	@Override
	public MailInfo composedraft(int mid) {
		MailInfo adto=md.composedraft(mid);
		return adto;
	}
//
//	/*@Override
//	public List<MailInfo> composeDraft(int id) {
//		List<MailInfo> list=md.composeDraft(list);
//		return list;
//	}*/

	/*@Override
	public boolean editdraft(HttpServletRequest req) {
		boolean b=md.editdraft(req);
		return b;
	}
*/
	
	
	
}

