package org.ict.service;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.MixVO;
import org.ict.mapper.MixMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MixServiceImpl implements MixService {

	@Autowired
	private MixMapper mapper;
	
	
	@Override
	public List<CgUpcVO> getUpList() {
		return mapper.getUpList();
	}


	@Override
	public List<CgDowncVO> getDownList() {
		return mapper.getDownList();
	}


	
	@Override
	public void clothMix(MixVO mix) {
		mapper.clothMix(mix);
	}
}
