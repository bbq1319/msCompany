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
	
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public String api(Model modell) {
		return "api/api";
	}
	
	@RequestMapping(value = "/api/map", method = RequestMethod.GET)
	public String map(Model modell) {
		return "api/map";
	}

}
