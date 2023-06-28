package com.mycompany.app.infra.commencode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommenCodeController {

	@Autowired
	CommenCodeServiceImpl service;
	
	@RequestMapping("/commenCodeList")
	public String commenCodeList(Model model) {
		
		List<CommenCode> list = service.selectList();
		model.addAttribute("list",list);
		
		return "/commenCodeList";
	}
}
