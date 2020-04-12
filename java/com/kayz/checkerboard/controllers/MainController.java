package com.kayz.checkerboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/Checkerboard")
	public String checkerboard() {
		return "index.jsp";
	}
}
