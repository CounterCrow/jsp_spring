package com.mycompany.app.commenGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
@Service
public class CommenGroupServiceImpl implements CommenGroupService{
	
	@Autowired
	CommenGroupDao dao;
	
	@Override
	public List<CommenGroup> selectList(Model model) {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public CommenGroup selectOne(CommenGroupVo vo,Model model) {
		
		return dao.selectOne(vo);
	}

		
	/*	public List<CommenGroup> selectList() {
	
	List<CommenGroup> aaa = dao.selectList();
	
	return aaa;
}*/
}
