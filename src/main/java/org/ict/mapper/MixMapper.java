package org.ict.mapper;

import java.util.List;

import org.ict.domain.MixVO;

public interface MixMapper {

	public List<MixVO> getUpList();

	public List<MixVO> getDownList();
	
	public void clothMix(MixVO mix);
}
