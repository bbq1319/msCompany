package com.mscompany.ms.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/board")
	public String board(Model model) {
		return "board/board";
	}
	
	@RequestMapping("/board/shopping")
	public String shopping(Model model) {
		return "board/shopping";
	}

}
