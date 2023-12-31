
  package com.mycompany.app.portfolio;
  
  import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
  
  @RequestMapping(value="/userLogin") public String userLogin() {
	  
	  return "projact1/login"; }
  
  @RequestMapping(value="/projact1") public String projact1() {
	  
	  return "projact1/infra/index/index"; }
  @GetMapping("/img/icon/heart.png")
  public void getHeartIcon(HttpServletResponse response) throws IOException {
      // 이미지 파일을 응답으로 전송합니다.
      // 이미지 파일의 경로 및 전송 방식에 따라 코드를 작성해야 합니다.
  }
  }
 
