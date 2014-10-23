package com.blue.gis.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.blue.gis.mapper.ExampleMapper;
import com.blue.gis.vo.ExampleVO;
@Service
public class ExampleService {

	 @Autowired
	 public ExampleMapper exampleMapper;
	 
	 public ExampleVO getUserList() {
		 ExampleVO vo = exampleMapper.getUserList();
		 System.out.println(vo.getId()+"아이디디디디 ");
	  return vo;
	 }
}
