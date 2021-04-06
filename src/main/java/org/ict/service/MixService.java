package org.ict.service;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.MixVO;

public interface MixService {

	public List<CgUpcVO> getUpList();
	public List<CgDowncVO> getDownList();
	public void clothMix(MixVO mix);
	
}
