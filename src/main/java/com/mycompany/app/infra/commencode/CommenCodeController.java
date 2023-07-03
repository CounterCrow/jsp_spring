package com.mycompany.app.infra.commencode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommenCodeController {
	
	
	  @Autowired CommenCodeServiceImpl service;
	  
		
		  @RequestMapping(value="") public String selectList() {
		  
		  return null; }
		 
		 
	  @RequestMapping(value="/commenCodeList")
	  public String selectListsh(@ModelAttribute("vo") CommenCodeVo vo ,Model model) {
		  int totalCnt = service.selectOneCount(vo);
			vo.setParamsPaging(totalCnt);
		  List<CommenCode> listsh = service.selectListsh(vo);
		  
		  model.addAttribute("list",listsh);
		  return  "cdm/infra/commencode/commenCodeList";
	}
	  @RequestMapping("/commenCodeForm")
		public String selectOne(CommenCodeVo vo,Model model) {
			
			CommenCode item = service.selectOne(vo);
			model.addAttribute("item",item);
			
			return "cdm/infra/commencode/commenCodeForm";
		}
	  
	  
	  @RequestMapping(value="/commenCodeUpdate")
	  public String update(CommenCode dto) {
		  service.update(dto);		
		  return "redirect:/commenCodeList";
	}
	  @RequestMapping(value="/commenCodeUpdele")
	  public String updele(CommenCode dto) {
		  service.updele(dto);	
		  return "redirect:/commenCodeList";
	}
	  @RequestMapping(value="/commenCodeDelete")
	  public String delete(CommenCode dto) {
		  service.delete(dto);	
		  return "redirect:/commenCodeList";
	}
	  @RequestMapping(value="/commenCodeSave")
	  public String save(CommenCode dto) {
		  service.save(dto);	
		  return "redirect:/commenCodeList";
	}
	
	
}
