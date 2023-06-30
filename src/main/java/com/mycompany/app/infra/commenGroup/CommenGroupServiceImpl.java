package com.mycompany.app.infra.commenGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
@Service
public class CommenGroupServiceImpl implements CommenGroupService{
	
	@Autowired
	CommenGroupDao dao;
	
	@Override
	public List<CommenGroup> selectListsh(CommenGroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectListsh(vo);
	}

	@Override
	public CommenGroup selectOne(CommenGroupVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(CommenGroup dto) {
		
		return dao.update(dto);
	}

	@Override
	public int delete(CommenGroup dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(CommenGroup dto) {
		
		return dao.save(dto);
	
	}

	@Override
	public int updele(CommenGroup dto) {
		
		return dao.updele(dto);
	}

	@Override
	public List<CommenGroup> selectList(Model model) {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

		
	/*	public List<CommenGroup> selectList() {
	
	List<CommenGroup> aaa = dao.selectList();
	
	return aaa;
}*/
}
