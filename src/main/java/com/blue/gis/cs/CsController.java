package com.blue.gis.cs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CsController {
	private static final Logger logger = LoggerFactory.getLogger(CsController.class);

	@RequestMapping(value = "/getCsInfo",method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("getCsInfo");

		return "cs/CS0001";
	}
}
