package com.mycompany.app.infra.commenGroup;

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
	
	private static String namespace = "com.mycompany.app.infra.commenGroup.CommenGroupMapper";
	public List<CommenGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList","" ); }
	public List<CommenGroup> selectListsh(CommenGroupVo vo){ return sqlSession.selectList(namespace + ".selectListsh",vo ); }
	public CommenGroup selectOne(CommenGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(CommenGroup dto){ return sqlSession.update(namespace + ".update", dto ); }
	public int delete(CommenGroup dto){ return sqlSession.delete(namespace + ".delete", dto ); }
	public int save(CommenGroup dto){ return sqlSession.insert(namespace + ".save", dto ); }
	public int updele(CommenGroup dto){ return sqlSession.update(namespace + ".updele", dto ); }
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}

}
