package org.ict.service;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface MemberService {

	public MemberVO login(LoginDTO dto) throws Exception;

}
