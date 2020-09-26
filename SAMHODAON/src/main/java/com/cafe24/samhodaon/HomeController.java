package com.cafe24.samhodaon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() {
		return "redirect:/index.do";
	}
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String Index() {
		return "index.jsp";
	}
	
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public String Test() {
		return "test.jsp";
	}
}
