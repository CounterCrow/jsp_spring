package com.mycompany.app.commencode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CommenCodeDao {
	
	@Inject
	@Resource
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.commencode.CommenCodeMapper";
	
	public List<CommenCode> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}
