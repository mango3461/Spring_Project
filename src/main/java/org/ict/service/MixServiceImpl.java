package org.ict.service;

import java.util.List;

import org.ict.domain.MixVO;
import org.ict.mapper.MixMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MixServiceImpl implements MixService {

	@Autowired
	private MixMapper mapper;
	
	
	@Override
	public List<MixVO> getUpList() {
		return mapper.getUpList();
	}


	@Override
	public List<MixVO> getDownList() {
		return mapper.getDownList();
	}


	
//	@Override
//	public void make(MixVO mix) {
//		
//	}
}
