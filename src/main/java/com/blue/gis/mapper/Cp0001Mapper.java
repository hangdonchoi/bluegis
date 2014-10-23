package com.blue.gis.mapper;

import java.util.List;

import com.blue.gis.vo.Cp0001VO;
import com.blue.gis.vo.Cs0002VO;

public interface Cp0001Mapper {
	List<Cp0001VO> getBaseList(Cp0001VO vo);
	
	void insCompData(Cp0001VO vo);
	
	void updCompData(Cp0001VO vo);
	
	void delCompData(Cp0001VO vo);
}
