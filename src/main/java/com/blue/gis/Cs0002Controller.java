package com.blue.gis;

import java.util.List;
import java.util.Locale;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blue.gis.service.Cs0002Service;
import com.blue.gis.vo.Cs0002VO;

@Controller
public class Cs0002Controller {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private Cs0002Service cs0002Service;
	@RequestMapping(value = "/cs0002", method = RequestMethod.GET)
	public String cs0002(Locale locale, Model model) {
		return "cs0002";
	}
	@RequestMapping(value = "boardList", method = RequestMethod.POST)
	public @ResponseBody List<Cs0002VO> boardList(

			 @RequestParam(value = "page", required=false) String page,
			    @RequestParam(value = "rows", required=false) String rows,
			    @RequestParam(value = "sidx", required=false) String sidx,
			    @RequestParam(value = "sord", required=false) String sord,
			     @RequestParam(value = "searchField", required=false) String searchField,
			     @RequestParam(value = "searchString", required=false) String searchString) 
			     
    {
			
		logger.info("스프링 버전 : "+org.springframework.core.SpringVersion.getVersion() );
		logger.info("page : "+page);
		logger.info("rows : "+rows);
		logger.info("sidx : "+sidx);
		logger.info("sord : "+sord);
		logger.info("searchField : "+searchField);
		logger.info("searchString : "+searchString);
		List<Cs0002VO> vo = cs0002Service.getBaseList();
		return vo;
	}
	@RequestMapping(value = "boardEdit", method = RequestMethod.POST)
//	public @ResponseBody List<Cs0002VO> boardEdit()
	public @ResponseBody List<Cs0002VO> boardEdit(@RequestBody Cs0002VO vo)
	{
		logger.info("print oper: "+vo.getOper());
		logger.info("Cs0002VO: "+ToStringBuilder.reflectionToString(vo));
		
		if("add".equals(vo.getOper())){
			vo.setProdCd("aa");
			cs0002Service.insBoard(vo);
		}else if("edit".equals(vo.getOper())){
			vo.setProdCd("002");
			cs0002Service.updBoard(vo);
		}else if("del".equals(vo.getOper())){
			cs0002Service.delBoard(vo);
		}
		List<Cs0002VO> aa = cs0002Service.getBaseList();
		return aa;
	} 
	
}
