package com.mycompany.app.commenGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CommenGroupDao {
	
	@Inject   //자바 어노테이션(표현법)
	@Resource(name = "sqlSession")  // 멀티DB사용시 사용
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.commenGroup.CommenGroupMapper";
	
	public List<CommenGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}

}
