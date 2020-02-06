package com.ust.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.ust.app.model.MailInfo;
import com.ust.app.model.UserInfo;
import com.ust.app.service.MyService;

@RequestMapping("/")
@Component
public class MyController {
	@Autowired
	MyService ms;

	@Autowired
	HttpSession session;

	@RequestMapping("/link1")
	public String m1() {
		return "register";
	}

	@RequestMapping("/home")
	public String home() {
		if (session.getAttribute("email1") != null) {
			return "home";
		} else {
			return "login";
		}
	}

	@RequestMapping("/link2")
	public String m2() {
		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute UserInfo dto) {
		boolean b = ms.signup(dto);
		if (b) {
			return new ModelAndView("login", "m", "Sign up successfull");
		} else {
			return new ModelAndView("register", "m", "Sign up failed");
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String email, String password) {
		UserInfo sdto = ms.login(email, password);
		if (sdto != null) {
			session.setAttribute("email1", sdto.getEmail());
			return new ModelAndView("home", "sdto", sdto);
		} else {
			return new ModelAndView("login", "msg", "login failed try again");
		}
	}

	@RequestMapping("/inbox")
	public ModelAndView inbox() {
		if (session.getAttribute("email1") != null) {
			List<MailInfo> list = ms.inbox();
			return new ModelAndView("inbox", "list", list);
		} else {
			return new ModelAndView("login", "masg", "Login First");
		}
	}

	@RequestMapping("/sent")
	public ModelAndView sent() {
		if (session.getAttribute("email1") != null) {
			List<MailInfo> list = ms.sent();
			return new ModelAndView("sent", "list", list);
		} else {
			return new ModelAndView("login", "masg", "Login First");
		}
	}

	@RequestMapping("/draft")
	public ModelAndView draft() {
		if (session.getAttribute("email1") != null) {
			List<MailInfo> list = ms.draft();
			return new ModelAndView("draft", "list", list);
		} else {
			return new ModelAndView("login", "masg", "Login First");
		}

	}

	@RequestMapping("/Message")
	public ModelAndView message(@RequestParam int mid, MailInfo dto) {

		MailInfo adto = ms.message(mid, dto);

		if (adto != null) {
			return new ModelAndView("Message", "adto", adto);
		} else {
			return new ModelAndView("home", "msg", "message not display");
		}
	}

	@RequestMapping("/compose")
	public ModelAndView m5() {
		if (session.getAttribute("email1") != null) {
			String email = (String) session.getAttribute("email1");
			return new ModelAndView("compose", "msg", email);
		} else {
			return new ModelAndView("login", "masg", "Login First");
		}
	}

	@RequestMapping("/comp")
	public ModelAndView compose(@RequestParam String to, String sub, String body) {
		if (session.getAttribute("email1") != null) {
		String from = (String) session.getAttribute("email1");
		UserInfo b = ms.compose(from, to, sub, body);
		if (b != null) {
			return new ModelAndView("successpage", "msg", "mail sent successfully");
		} else {
			return new ModelAndView("home", "msg", "mail not sent, saved in draft ");
		}
		}
		else{
			 return new ModelAndView("login", "msg", "Please Login First ");
		}

	}

	@RequestMapping("/logout")
	public ModelAndView logout() {
		if (session.getAttribute("email1") != null) {
			session.invalidate();
			return new ModelAndView("login", "msg", "logout success");
		} else {
			return new ModelAndView("login", "msg", "Login First");
		}
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam int id) {
		if (session.getAttribute("email1") != null){
		boolean b = ms.delete(id);
		if (b) {
			return new ModelAndView("home", "msg", "deleted successfully");
		} else {
			return new ModelAndView("home", "msg", "delete failed");
		}
		}
		else{
			return new ModelAndView("login", "msg", "loginfirst");
		}
	}
//
//	/*
//	 * @RequestMapping("/compose") public ModelAndView Draftedit(@RequestParam
//	 * String to,String sub,String body) { String from=(String)
//	 * session.getAttribute("email1"); UserInfo b=ms.compose(from,to,sub,body);
//	 * if(b!=null) { return new
//	 * ModelAndView("successpage","msg","mail sent successfully"); }else {
//	 * return new ModelAndView("home","msg","mail not sent, saved in draft "); }
//	 * 
//	 * }
//	 */
	@RequestMapping("/fpass")
	public ModelAndView forgot() {
		return new ModelAndView("forgot");
	}

	@RequestMapping(value = "/forgot", method = RequestMethod.POST)
	public ModelAndView forgot(@RequestParam String email, String password, String seqanswer, String cpassword,
			String sequestion) {
		boolean b = ms.forgot(email, password, seqanswer, cpassword, sequestion);
		if (b) {
			return new ModelAndView("login", "msg", "Password Changed Successfully");
		} else {
			return new ModelAndView("forgot", "msg", "Invalid details or worng password");
		}
	}

	@RequestMapping("/change")

	public ModelAndView change() {
		if (session.getAttribute("email1") != null) {
			return new ModelAndView("change");
		} else {
			return new ModelAndView("login", "msg", "Login First");
		}
	}

	@RequestMapping(value = "/chang", method = RequestMethod.POST)

	public ModelAndView change(@RequestParam String password, String cpassword) {
		boolean b = ms.change(password, cpassword);
		if (b) {
			return new ModelAndView("login", "msg", "Password Changed Successfully");
		} else {
			return new ModelAndView("change", "msg", "Details Invalid or worong password");
		}
	}

	@RequestMapping("/deleteMail")
	public ModelAndView deleted(String to) {
		if (session.getAttribute("email1") != null) {
			List<MailInfo> list = ms.deletedMail(to);
			return new ModelAndView("deletedMail", "list",list);
		} else {
			return new ModelAndView("login", "masg", "Login First");
		}
	}

//	/*
//	 * @RequestMapping("composeDraft") public ModelAndView
//	 * composeDraft(HttpServletRequest req){ String id=req.getParameter("id");
//	 * int uid=Integer.parseInt(id);
//	 * 
//	 * List<MailInfo> mlist=ms.composeDraft(id); return new
//	 * ModelAndView("composeDraft","list",mlist);
//	 * 
//	 * }
//	 */
	@RequestMapping("/composeDraft")
	public ModelAndView composeDraft(@RequestParam int mid) {

		MailInfo adto = ms.composedraft(mid);

		if (adto != null) {
			return new ModelAndView("composeDraft", "adto",adto);
		} else {
			return new ModelAndView("home", "msg", "message not display");
		}
	}


	/*@RequestMapping(value = "/composedd", method = RequestMethod.POST)
	public ModelAndView editdraft(HttpServletRequest req) {
		  boolean b =ms.editdraft(req);

		  if(b) {
				return new ModelAndView("composeDraft","msg12","Mail Sent Done");
				  }else {
					  return new ModelAndView("home","msg12","Mail Sent Not Done");
				  }
			}*/
@RequestMapping("/permanentdeleted")
public ModelAndView Permanentdeleted(@RequestParam int id){
	
	boolean d=ms.finaldelete(id);
	if (d) {
		return new ModelAndView("home", "msg1", "Deleted items Permanently");
	} else {
		return new ModelAndView("deletedMail", "msg1", "Permanent deletion unsuccessful");
	}
	
}
	

}
