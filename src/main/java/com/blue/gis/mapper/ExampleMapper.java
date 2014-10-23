package com.blue.gis.mapper;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.blue.gis.vo.ExampleVO;
public interface ExampleMapper {
	ExampleVO getUserList();
}
