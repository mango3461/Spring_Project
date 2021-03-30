package org.ict.service;

import java.util.List;

import org.ict.domain.MixVO;

public interface MixService {

	List<MixVO> getUpList();
	List<MixVO> getDownList();
//	public void make(MixVO mix);
	
}
