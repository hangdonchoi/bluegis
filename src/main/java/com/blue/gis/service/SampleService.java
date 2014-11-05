package com.blue.gis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blue.gis.mapper.SampleMapper;
import com.blue.gis.vo.SampleVO;

@Service
public class SampleService{
	@Autowired
	public SampleMapper sampleMapper;

	
	public List<SampleVO> getAll() {
		
		return this.sampleMapper.getAll();
	}

	
	public SampleVO get(int sampleNo) {
		
		return this.sampleMapper.get(sampleNo);
	}

	
	public void add(SampleVO sampleVO) {
		this.sampleMapper.add(sampleVO);
	}

	
	public void update(SampleVO sampleVO) {
		this.sampleMapper.update(sampleVO);
	}

	
	public void delete(int sampleNo) {
		this.sampleMapper.delete(sampleNo);

		
	}
	
	
}
