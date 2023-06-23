package com.mycompany.app.commenGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CommenGroupServiceImpl implements CommenGroupService{
	
	@Autowired
	CommenGroupDao dao;
	
	@Override
	public List<CommenGroup> selectList() {return dao.selectList();}
	
	/*	public List<CommenGroup> selectList() {
	
	List<CommenGroup> aaa = dao.selectList();
	
	return aaa;
}*/
}
