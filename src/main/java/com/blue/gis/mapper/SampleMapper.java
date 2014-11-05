package com.blue.gis.mapper;

import java.util.List;

import com.blue.gis.vo.SampleVO;

public interface SampleMapper {
	List<SampleVO> getAll();
	
	SampleVO get(int sampleNo);
	
	void add(SampleVO sampleVO);
	void update(SampleVO sampleVO);
	void delete(int sampleNo);
	
}
