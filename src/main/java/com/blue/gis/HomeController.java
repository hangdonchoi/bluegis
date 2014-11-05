package com.blue.gis;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.blue.gis.service.Cs0002Service;
import com.blue.gis.service.ExampleService;
import com.blue.gis.vo.Cs0002VO;
import com.blue.gis.vo.ExampleVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private ExampleService exampleService;
//	@Autowired
//	private Cs0002Service cs0002Service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		ExampleVO vo = exampleService.getUserList();
//		logger.debug("결과과곽"+vo.getTitle());
		
		return "MyFirstGrid";
	}
	@RequestMapping(value = "/myfirstgrid", method = RequestMethod.GET)
	public String  myfirstgrid(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		
		return "MyFirstGrid";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String  axisjTest(Locale locale, Model model) {

		return "index";
	}
	
	@RequestMapping(value = "/axisj", method = RequestMethod.GET)
	public String  axisj(Locale locale, Model model) {
		
		return "axisj";
	}
	
	
}
