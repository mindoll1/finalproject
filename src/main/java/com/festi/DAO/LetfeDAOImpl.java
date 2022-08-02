package com.festi.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.LetfeVO;

@Repository("LetfeDAOImpl")
public class LetfeDAOImpl implements LetfeDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int letfeInsert(LetfeVO vo) {
		System.out.println("=> LetfeMapper letfeInsert() 호출");
		return mybatis.insert("letfeMapper.letfeInsert", vo);
	}
	

	
}
