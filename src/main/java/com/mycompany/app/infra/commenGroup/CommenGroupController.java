package com.mycompany.app.infra.commenGroup;

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
		
		return "cdm/infra/commencodegroup/commenGroupList";
	}
	@RequestMapping("/commenGroupForm")
	public String commenGroupOne(CommenGroupVo vo,Model model) {
		
		CommenGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
		
		return "cdm/infra/commencodegroup/commenGroupForm";
	}
	@RequestMapping("/commenGroupUpdate")
	public String commenGroupUpdate(CommenGroup dto) {
		
		service.update(dto);
	
		return "redirect:/cdm/infra/commencodegroup/commenGroupList";
	}
	@RequestMapping("/commenGroupDelete")
	public String commenGroupDelete(CommenGroup dto) {
		
		service.delete(dto);
	
		return "redirect:/cdm/infra/commencodegroup/commenGroupList";
	}
	@RequestMapping("/commenGroupSave")
	public String commenGroupSave(CommenGroup dto) {
		
		service.save(dto);
	
		return "redirect:/cdm/infra/commencodegroup/commenGroupList";
	}
	@RequestMapping("/commenGroupUpdele")
	public String commenGroupUpdele(CommenGroup dto) {
		
		service.updele(dto);
	
		return "redirect:/cdm/infra/commencodegroup/commenGroupList";
	}
 
  }
 
