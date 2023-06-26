package com.mycompany.app.commenGroup;

import java.util.List;

import org.springframework.ui.Model;

public interface CommenGroupService {

	public List<CommenGroup> selectList(Model model);
	public CommenGroup selectOne(CommenGroupVo vo, Model model);
	
}
