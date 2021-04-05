package org.ict.service;

import java.util.List;

import org.ict.domain.MixVO;

public interface MixService {

	public List<MixVO> getUpList();
	public List<MixVO> getDownList();
	public void clothMix(MixVO mix);
	
}
