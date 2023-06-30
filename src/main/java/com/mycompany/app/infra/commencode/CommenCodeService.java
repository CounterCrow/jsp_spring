package com.mycompany.app.infra.commencode;

import java.util.List;

import org.springframework.ui.Model;

public interface CommenCodeService {
	
	public List<CommenCode> selectList(Model model);
	public List<CommenCode> selectListsh(CommenCodeVo vo);
	public CommenCode selectOne(CommenCodeVo vo);
	public int update(CommenCode dto); 
	public int updele(CommenCode dto); 
	public int delete(CommenCode dto); 
	public int save(CommenCode dto); 

}
