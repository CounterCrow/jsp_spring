package com.mycompany.app.commenGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommenGroupController {

	@Autowired
	CommenGroupServiceImpl service;
	
	@RequestMapping("/commenGroupList")
	public String commenGroupList(Model model) {
		
		List<CommenGroup> list = service.selectList();
		model.addAttribute("list",list);
		
		return "commenGroupList";
	}
	
}
