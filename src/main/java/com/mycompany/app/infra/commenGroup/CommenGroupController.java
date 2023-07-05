package com.mycompany.app.infra.commenGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class CommenGroupController {

	//Model model 디비에 데이터를 뿌릴 때 사용한다.
	
	@Autowired
	CommenGroupServiceImpl service;
//	@RequestMapping("/commenGroupList")
//	public String commenGroupList(Model model) {
//		
//		List<CommenGroup> list = service.selectList( model);
//		model.addAttribute("list",list);
//		
//		return "cdm/infra/commencodegroup/commenGroupList";
//	}
	
	
	@RequestMapping("/commenGroupList")
	public String codeGroupList(@ModelAttribute("vo") CommenGroupVo vo, Model model) {
		
		vo.setKeywordCommenGroupName(vo.getKeywordCommenGroupName() == null ? "" : vo.getKeywordCommenGroupName());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<CommenGroup> listsh = service.selectListsh(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "cdm/infra/commencodegroup/commenGroupList";
	}
	
	
	
	/*
	 * @RequestMapping("/commenGroupList") public String
	 * commenGroupListsh(CommenGroupVo vo,Model model) {
	 * 
	 * List<CommenGroup> listsh = service.selectListsh(vo);
	 * model.addAttribute("list",listsh);
	 * 
	 * return "cdm/infra/commencodegroup/commenGroupList"; }
	 */
	@RequestMapping("/commenGroupForm")
	public String commenGroupOne(CommenGroupVo vo,Model model) {
		
		CommenGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
		
		return "cdm/infra/commencodegroup/commenGroupForm";
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
