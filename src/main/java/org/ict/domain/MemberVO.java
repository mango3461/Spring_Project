package org.ict.domain;

import lombok.Data;

@Data
public class MemberVO {

	private int mno;
	private String mid;
	private String mpw;
	private boolean mgen;
	private int mage;
}
