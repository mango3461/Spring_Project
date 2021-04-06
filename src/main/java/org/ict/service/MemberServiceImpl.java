package org.ict.service;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;
import org.ict.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return mapper.login(dto);
	}
}
