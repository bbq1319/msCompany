package com.mscompany.ms.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SuppressWarnings("rawtypes")
@RequestMapping(produces="application/json;charset=UTF-8")
@CrossOrigin
public class UserController {
	
	@RequestMapping("/login")
	public String board(Model model) {
		return "user/login";
	}

}
