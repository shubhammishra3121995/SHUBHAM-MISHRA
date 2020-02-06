package com.ust.app.daolayer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//import com.company.spring.model.Mail_info;
import com.ust.app.model.MailInfo;
import com.ust.app.model.UserInfo;


@Component
public class MyDAOImp1 implements MyDAO{

	  @Autowired 
	  HttpSession session;
	 @Autowired
	 SessionFactory sf;

	@Override
	public boolean signup(UserInfo sdto) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(UserInfo.class);
		cr.add(Restrictions.eq("email", sdto.getEmail()));
		UserInfo dto=(UserInfo) cr.uniqueResult();
		if(dto!=null) {
		return false;
		}else {
			//sdto.setSequestion("securityquestion");
			ss.save(sdto);
			ss.beginTransaction().commit();
			ss.close();
			return true;
		}
	}

	@Override
	public UserInfo login(String email, String password) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(UserInfo.class);
		cr.add(Restrictions.eq("email", email));
		cr.add(Restrictions.eq("password", password));
		UserInfo sdto=(UserInfo) cr.uniqueResult();
		return sdto;
		
	}

	@Override
	public List<MailInfo> inbox() {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		String email1=(String) session.getAttribute("email1");
		cr.add(Restrictions.eq("toId",email1));
		cr.add(Restrictions.eq("status","MailSent"));
		List<MailInfo> mlist=cr.list();
		return mlist;
		
	}

	@Override
	public List<MailInfo> sent() {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		String email1=(String) session.getAttribute("email1");
		cr.add(Restrictions.eq("fromId",email1));
		cr.add(Restrictions.eq("status", "MailSent"));
//		cr.add(Restrictions.isNull("draft"));
//		cr.add(Restrictions.isNull("draftmessage")); 
//		cr.add(Restrictions.isNotNull("sent"));
		List<MailInfo> mlist=cr.list();
		return mlist;
	}

	@Override
	public List<MailInfo> draft() {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		String email1=(String) session.getAttribute("email1");
		cr.add(Restrictions.eq("fromId",email1));
		cr.add(Restrictions.eq("status", "DraftMail"));
//		cr.add(Restrictions.isNull("sent"));
//		cr.add(Restrictions.isNotNull("draft"));
//    	cr.add(Restrictions.isNotNull("draftmessage"));
		List<MailInfo> mlist=cr.list();
		return mlist;
	}

	@Override
	public UserInfo compose(String from, String to, String sub, String body) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(UserInfo.class);
		cr.add(Restrictions.eq("email", from));
		UserInfo dto=(UserInfo) cr.uniqueResult();
		cr=ss.createCriteria(UserInfo.class);
		cr.add(Restrictions.eq("email", to));
		UserInfo udto=(UserInfo) cr.uniqueResult();
		List<MailInfo> list;
		if(udto!=null) {
		MailInfo mdto=new MailInfo(); 
		mdto.setFromId(from);
		mdto.setToId(to);
		mdto.setSubject(sub);
		mdto.setMessage(body);
		mdto.setStatus("MailSent");
		list=dto.getMlist();
		list.add(mdto);
		dto.setMlist(list);
		ss.save(dto);
		ss.beginTransaction().commit();
		ss.close();
		return dto;
		}else {
			MailInfo mdto=new MailInfo();
			mdto.setToId(to);
			mdto.setFromId(from);
			mdto.setSubject(sub);
			mdto.setMessage(body);
			mdto.setStatus("DraftMail");
			list=dto.getMlist();
			list.add(mdto);
			dto.setMlist(list);
			ss.save(dto);
		   //ss.save(mdto);
			ss.beginTransaction().commit();
			ss.close();
			return null;
		}
	}

	@Override
	public boolean forgot(String email, String password, String seqanswer, String cpassword,String sequestion) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(UserInfo.class);
		cr.add(Restrictions.eq("sequestion",sequestion));
		cr.add(Restrictions.eq("seqanswer",seqanswer));
		UserInfo dto=(UserInfo) cr.uniqueResult();
		if(dto!=null) {
			if(password.equals(cpassword)) {
				dto.setPassword(cpassword);
				ss.saveOrUpdate(dto);
				ss.beginTransaction().commit();
				ss.close();
				return true;
			}else {
			ss.close();
			return false;
			}
		}else {
		ss.close();
		return false;
   }
	}

	@Override
	public boolean change(String password, String cpassword) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(UserInfo.class);
		String email=(String) session.getAttribute("email1");
		cr.add(Restrictions.eq("email", email));
		UserInfo dto=(UserInfo) cr.uniqueResult();
		if(dto!=null) {
			if(password.equals(cpassword)) {
				dto.setPassword(cpassword);
				ss.saveOrUpdate(dto);
				ss.beginTransaction().commit();
				ss.close();
			return true;
			}else {
				ss.close();
				return false;
			}
		}else {
			ss.close();
			return false;
		}
		
	}

	@Override
	public boolean delete(int id) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		cr.add(Restrictions.eq("mid",id));
		MailInfo dto=(MailInfo) cr.uniqueResult();
		if(dto!=null) {
			dto.setStatus("deletedMail");
			ss.saveOrUpdate(dto);
			ss.beginTransaction().commit();
			ss.close();
			return true;
		}else {
		return false;
		}
	}

	
//	
//	
//	
//	
//	
//	/*@Override
//	public boolean delete(int id) {
//		Session ss=sf.openSession();
//		Criteria cr=ss.createCriteria(MailInfo.class);
//		cr.add(Restrictions.eq("id", id));
//		MailInfo dto=(MailInfo) cr.uniqueResult();
//		if(dto!=null) {
//			dto.setStatus("deletedMail");
//			ss.saveOrUpdate(dto);
//			ss.beginTransaction().commit();
//			ss.close();
//			return true;
//		}else {
//		return false;
//		}
//	}*/
//
	@Override
	public List<MailInfo> deletedMail(String to) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		String email1=(String) session.getAttribute("email1");
		//cr.add(Restrictions.eq("toId",email1));
		cr.add(Restrictions.eq("fromId",email1));
		//cr.add(Restrictions.eq("fromId",email1));
		 //cr.add(Restrictions.isNotNull("status"));
		
	    cr.add(Restrictions.eq("status", "deletedMail"));
		
		List<MailInfo> mlist=cr.list();
		ss.close();
		return mlist;
				
	}
//	
////	String email1=(String) session.getAttribute("email1");
////	cr.add(Restrictions.eq("fromId",email1));
////	cr.add(Restrictions.isNotNull("status"));
	@Override
	public MailInfo message(int mid, MailInfo dto) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		cr.add(Restrictions.eq("mid",mid));
		MailInfo dto1=(MailInfo)cr.uniqueResult();
		return dto1;
	}

	@Override
	public boolean finaldelete(int mid) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		cr.add(Restrictions.eq("mid",mid));
		MailInfo dto1=(MailInfo)cr.uniqueResult();
		if(dto1!=null){
			ss.save(dto1);
			ss.delete(dto1);
			ss.beginTransaction().commit();
			ss.close();
			return true;
				}
		else{
			return false;
	}
	}
	
	
	
	
	


	public MailInfo composedraft(int mid) {
		Session ss=sf.openSession();
		Criteria cr=ss.createCriteria(MailInfo.class);
		cr.add(Restrictions.eq("mid",mid));
		MailInfo adto=(MailInfo)cr.uniqueResult();
		ss.delete(adto);
		ss.beginTransaction().commit();
		return adto;
		
	}

	
	

}
			
	
