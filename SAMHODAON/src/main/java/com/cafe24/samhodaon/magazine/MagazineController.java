package com.cafe24.samhodaon.magazine;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MagazineController {
	@RequestMapping(value = "/magazine/magazineList.do", method=RequestMethod.GET)
	public String magazineList() {
		return "pages/magazine.jsp";
	}
}
