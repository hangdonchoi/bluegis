package com.blue.gis;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Cm0001Controller {
	private static final Logger logger = LoggerFactory.getLogger(Cp0001Controller.class);
	/**
	 * 	주소 모달창 팝업
	 */
	@RequestMapping(value = "/cm/addr", method = RequestMethod.GET)
	public String getAddr(Locale locale, Model model) {
		
		return "CM0001";
	}
}
