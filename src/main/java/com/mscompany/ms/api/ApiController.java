package com.mscompany.ms.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApiController {
	
	@Autowired
	private ApiService apiSvc;
	
	@RequestMapping("/api")
	public String api(Model model) {
		return "api/api";
	}
	
	@RequestMapping("/api/map")
	public String map(Model model) {
		return "api/map";
	}

}
