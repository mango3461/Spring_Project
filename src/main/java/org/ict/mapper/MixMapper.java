package org.ict.mapper;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.MixVO;


public interface MixMapper {

	public List<CgUpcVO> getUpList();

	public List<CgDowncVO> getDownList();
	
	public void clothMix(MixVO mix);
}
