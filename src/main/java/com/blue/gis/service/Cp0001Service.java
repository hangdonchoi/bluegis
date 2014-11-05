package com.blue.gis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.gis.mapper.Cp0001Mapper;
import com.blue.gis.vo.Cp0001VO;

@Service
public class Cp0001Service {
	 @Autowired
	 public Cp0001Mapper cp0001Mapper;
	 
	 public  List<Cp0001VO> getBaseList(Cp0001VO inVo)  {
		 List<Cp0001VO> vo = cp0001Mapper.getBaseList(inVo);
	  return vo;
	 }
	 

	public void insCompData(Cp0001VO vo) {
		cp0001Mapper.insCompData(vo);
	}

	public void updCompData(Cp0001VO vo) {
		cp0001Mapper.updCompData(vo);
	}

	public void delCompData(Cp0001VO vo) {
		cp0001Mapper.delCompData(vo);
	}
}
