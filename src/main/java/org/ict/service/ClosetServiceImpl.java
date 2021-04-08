package org.ict.service;

import java.util.List;

import org.ict.domain.ClosetVO;
import org.ict.mapper.ClosetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClosetServiceImpl implements ClosetService{

	@Autowired
	private ClosetMapper mapper;
	
	@Override
	public List<ClosetVO> closetUpList(int mno) {
		return mapper.closetUpList(mno);
	}

}
