package com.blue.gis.mapper;

import java.util.List;

import com.blue.gis.vo.Cs0002VO;

public interface Cs0002Mapper {
	List<Cs0002VO> getBaseList();
	
	void insBoard(Cs0002VO vo);
	
	void updBoard(Cs0002VO vo);
	
	void delBoard(Cs0002VO vo);
}
