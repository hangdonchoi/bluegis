package com.blue.gis.mapper;

import java.util.List;

import com.blue.gis.vo.Cm0001VO;

public interface Cm0001Mapper {
	List<Cm0001VO> getBaseList();
	
	void insCompData(Cm0001VO vo);
	
	void updBoard(Cm0001VO vo);
	
	void delBoard(Cm0001VO vo);
}
