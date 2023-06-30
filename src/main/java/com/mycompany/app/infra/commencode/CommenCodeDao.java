package com.mycompany.app.infra.commencode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CommenCodeDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.commenCode.CommenCodeMapper";
	public List<CommenCode> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<CommenCode> selectListsh(CommenCodeVo vo){return sqlSession.selectList(namespace+".selectListsh",vo);}
	public CommenCode selectOne(CommenCodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(CommenCode dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(CommenCode dto) {return sqlSession.update(namespace+".updele",dto);}
	public int delete(CommenCode dto) {return sqlSession.delete(namespace+".delete",dto);}
	public int save(CommenCode dto) {return sqlSession.insert(namespace+".save",dto);}
	
	
	
}
