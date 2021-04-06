package org.ict.mapper;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface MemberMapper {

	public MemberVO login(LoginDTO dto) throws Exception;
}
