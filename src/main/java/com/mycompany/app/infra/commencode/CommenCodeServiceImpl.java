package com.mycompany.app.infra.commencode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
@Service
public class CommenCodeServiceImpl implements CommenCodeService{
	
	@Autowired
	CommenCodeDao dao;

	
	  @Override public List<CommenCode> selectList(Model model) {
	  
	  return dao.selectList(); 
	  }
	 
	@Override
	public List<CommenCode> selectListsh(CommenCodeVo vo) {
		
		return dao.selectListsh(vo);
	}

	@Override
	public int update(CommenCode dto) {
		
		return dao.update(dto);
	}

	@Override
	public int updele(CommenCode dto) {

		return dao.updele(dto);
	}

	@Override
	public int delete(CommenCode dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(CommenCode dto) {
		
		return dao.save(dto);
	}

	@Override
	public CommenCode selectOne(CommenCodeVo vo) {
		 
		return dao.selectOne(vo);
	}

}
