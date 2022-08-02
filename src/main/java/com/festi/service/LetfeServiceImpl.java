package com.festi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.LetfeDAOImpl;
import com.festi.letfeVO.LetfeVO;

@Service("LetfeServiceImpl")
public class LetfeServiceImpl implements LetfeService{

	@Autowired
	private LetfeDAOImpl letfeDAO;
	
	@Override
	public int letfeInsert(LetfeVO vo) {
		return letfeDAO.letfeInsert(vo);
	}

	
}
