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
		
		List<CommenGroup> list = service.selectList(model);
		model.addAttribute("list",list);
		
		return "commenGroupList";
	}
	@RequestMapping("/commenGroupfix")
	public String commenGroupOne(CommenGroupVo vo,Model model) {
		
		CommenGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
		
		return "commenGroupfix";
	}
	@RequestMapping("/commenGroupUpdate")
	public String commenGroupUpdate(CommenGroup dto) {
		
		service.update(dto);
	
		return "redirect:/commenGroupList";
	}
	@RequestMapping("/commenGroupDelete")
	public String commenGroupDelete(CommenGroup dto) {
		
		service.delete(dto);
	
		return "redirect:/commenGroupList";
	}
	@RequestMapping("/commenGroupSave")
	public String commenGroupSave(CommenGroup dto) {
		
		service.save(dto);
	
		return "redirect:/commenGroupList";
	}
	@RequestMapping("/commenGroupUpdele")
	public String commenGroupUpdele(CommenGroup dto) {
		
		service.updele(dto);
	
		return "redirect:/commenGroupList";
	}
 
  }
 
