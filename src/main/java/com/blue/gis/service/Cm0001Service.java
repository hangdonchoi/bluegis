package com.blue.gis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.gis.mapper.Cm0001Mapper;
import com.blue.gis.vo.Cm0001VO;

@Service
public class Cm0001Service {
	 @Autowired
	 public Cm0001Mapper cm0001Mapper;
	 
	 public  List<Cm0001VO> getBaseList() {
		 List<Cm0001VO> vo = cm0001Mapper.getBaseList();
	  return vo;
	 }
	 

	public void insBoard(Cm0001VO vo) {
		cm0001Mapper.insCompData(vo);
	}

	public void updBoard(Cm0001VO vo) {
		cm0001Mapper.updBoard(vo);
	}

	public void delBoard(Cm0001VO vo) {
		cm0001Mapper.delBoard(vo);
	}
}
