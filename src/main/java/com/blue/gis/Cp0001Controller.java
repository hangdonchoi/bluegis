package com.blue.gis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blue.gis.service.Cp0001Service;
import com.blue.gis.vo.Cp0001VO;

@Controller
public class Cp0001Controller {
	private static final Logger logger = LoggerFactory.getLogger(Cp0001Controller.class);
	
	@Autowired
	private Cp0001Service cp0001Service;
	@RequestMapping(value = "/comp/compInfo", method = RequestMethod.GET)
	public String getCompInfo(Locale locale, Model model) {
		return "CP0001";
	}
	@RequestMapping(value = "/comp/compList", method = RequestMethod.GET)
	public String getCompList(Locale locale, Model model) {
		Cp0001VO inVo = new Cp0001VO();
		inVo.setCmyMngtNo("hidon84");
		inVo.setPage(1-1);
		inVo.setPageCnt(1);

		List<Cp0001VO> list =this.cp0001Service.getBaseList(inVo);
		logger.info("결과값: "+ToStringBuilder.reflectionToString(list.get(0)));

		return "CP0002";
	}
	@RequestMapping(value = "/cp0001/insert", method = RequestMethod.POST)
	public @ResponseBody Cp0001VO insComp(@RequestBody Cp0001VO vo) {
		logger.info("insert 작업 시작 ");
		logger.info("Cs0002VO: "+ToStringBuilder.reflectionToString(vo));

		cp0001Service.insCompData(vo);
		
		
		return vo;
	}
	@RequestMapping(value = "/cp0002/select", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> getCompListSel() {
		Cp0001VO inVo = new Cp0001VO();
		inVo.setCmyMngtNo("hidon84");
		inVo.setPage(1-1);
		inVo.setPageCnt(1);
		List<Cp0001VO> list =this.cp0001Service.getBaseList(inVo);
		logger.info("결과값: "+ToStringBuilder.reflectionToString(list.get(0)));
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("result", "ok");
		Map<String, Object> page=new HashMap<String, Object>();
		page.put("pageNo", 1);
		page.put("pageCount", 200);
		page.put("listCount", 20);
		
		map.put("list", list);
		map.put("page", page);
		
		return map;
	}
}
