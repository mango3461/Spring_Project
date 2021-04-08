package org.ict.mapper;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetVO;

public interface ClosetMapper {

	public List<ClosetVO> closetList(int mno);
}
