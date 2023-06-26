package com.mycompany.app.commencode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommenCodeServiceImpl implements CommenCodeService{
	@Autowired
	CommenCodeDao dao;

	@Override
	public List<CommenCode> selectList() {
		
		return dao.selectList();
	}
	

}
