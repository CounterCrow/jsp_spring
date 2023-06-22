package com.mycompany.app.portfolio;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

	@Controller
	public class PortfolioController {
		@RequestMapping(value="/")
		public String portfolioHome() {
			 		
		return "app/portfolio/index";
			}
		@RequestMapping(value="/portfolioLogin")
		public String portfolioLogin() {
			 		
		return "app/portfolio/login";
			}
		@RequestMapping(value="/admin")
		public String admin() {
			 		
		return "app/admin/index";
			}
		@RequestMapping(value="/member")
		public String adminMember() {
			 		
		return "app/admin/member";
			}
		@RequestMapping(value="/product")
		public String adminProduct() {
			 		
		return "app/admin/product";
			}
		
}
