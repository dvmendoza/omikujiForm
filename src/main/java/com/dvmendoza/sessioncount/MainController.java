package com.dvmendoza.sessioncount;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index(HttpSession session) {
		if (session.getAttribute("counter") == null) {
            session.setAttribute("counter", 1);
        } else {
            session.setAttribute("counter", (Integer)session.getAttribute("counter") + 1);
        }
        return "index.jsp";
    }
	
	@RequestMapping("/counter")
	public String counter(HttpSession session) {
		session.setAttribute("count", 0);
		return "counter.jsp";
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession session, Model model) {
		session.setAttribute("counter", 0);
		model.addAttribute("counter", session.getAttribute("counter"));
		return "index.jsp";
	}
	

}
