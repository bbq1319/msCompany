package com.mscompany.ms.common;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SuppressWarnings("rawtypes")
@RequestMapping(produces="application/json;charset=UTF-8")
@CrossOrigin
public class CommonController {

	@Autowired
	CommonService commonSvc;
	
	@RequestMapping("/getSubMenu")
	@ResponseBody
	public JsonMV getSubMenu(@RequestParam HashMap paramMap, HttpServletRequest request) {
		JsonMV jsonMap = new JsonMV();
		List<HashMap> map = commonSvc.getSubMenu(paramMap);
		jsonMap.addObject("data", map);
		return jsonMap;
	}
}
