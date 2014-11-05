package com.blue.gis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.gis.mapper.Cs0002Mapper;
import com.blue.gis.vo.Cs0002VO;

@Service
public class Cs0002Service {
	 @Autowired
	 public Cs0002Mapper cs0002Mapper;
	 
	 public  List<Cs0002VO> getBaseList() {
		 List<Cs0002VO> vo = cs0002Mapper.getBaseList();
	  return vo;
	 }
	 

	public void insBoard(Cs0002VO vo) {
		cs0002Mapper.insBoard(vo);
	}

	public void updBoard(Cs0002VO vo) {
		cs0002Mapper.updBoard(vo);
	}

	public void delBoard(Cs0002VO vo) {
		cs0002Mapper.delBoard(vo);
	}
}
