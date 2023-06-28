
  package com.mycompany.app.portfolio;
  
  import org.springframework.stereotype.Controller; 
  import org.springframework.web.bind.annotation.RequestMapping;
  
  @Controller public class PortfolioController {
  
  @RequestMapping(value="/") public String portfolioHome() {
  
  return "portfolio/index"; }
  
  @RequestMapping(value="/portfolioLoginAdmin") public String portfolioLoginAdmin() {
  
  return "cdm/login"; }
  
  @RequestMapping(value="/admin") public String admin() {
  
  return "cdm/infra/index/index"; }
  
  @RequestMapping(value="/member") public String adminMember() {
  
  return "cdm/infra/index/member"; }
  
  @RequestMapping(value="/product") public String adminProduct() {
  
  return "cdm/infra/index/product"; }
  
  
  }
 
