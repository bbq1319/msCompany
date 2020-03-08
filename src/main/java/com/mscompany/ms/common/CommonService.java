package com.mscompany.ms.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@SuppressWarnings("rawtypes")
public class CommonService {

	@Autowired 
	CommonMapper commonMapper;
	
	public List<HashMap> getSubMenu(Map param) {
		return commonMapper.getSubMenu(param);
	}
	
}
