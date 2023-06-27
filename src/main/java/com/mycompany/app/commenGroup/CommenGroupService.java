package com.mycompany.app.commenGroup;

import java.util.List;

import org.springframework.ui.Model;

public interface CommenGroupService {

	public List<CommenGroup> selectList(Model model);
	public CommenGroup selectOne(CommenGroupVo vo);
	public int update(CommenGroup dto);
	public int delete(CommenGroup dto);
	public int save(CommenGroup dto);
	public int updele(CommenGroup dto);
	
}
