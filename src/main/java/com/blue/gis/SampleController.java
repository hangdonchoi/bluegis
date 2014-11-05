package com.blue.gis;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.blue.gis.service.SampleService;
import com.blue.gis.vo.SampleVO;
@Controller
public class SampleController {
	private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
	@Autowired
	private SampleService sampleService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sample",method = RequestMethod.GET)
	public String list(Model model) {
		List<SampleVO> list =this.sampleService.getAll();
		model.addAttribute("list",list);
		return "sample/SampleList";
	}
	@RequestMapping(value = "/form")
	public String form(@RequestParam(value ="sampleNo",required=true, defaultValue = "0") int sampleNo,ModelMap model) {
		SampleVO sampleVO = null;
		if (sampleNo>0){
			sampleVO = this.sampleService.get(sampleNo);
			System.out.println("ddddi"+sampleVO.getDescription());
			model.addAttribute("commandUrl","editsave");
		}else {
			sampleVO = new SampleVO();
			sampleVO.setSampleNo(sampleNo);
			model.addAttribute("commandUrl","addsave");
		}
		model.addAttribute("result",sampleVO);
		return "sample/SamgwpleView";
		
	}
	@RequestMapping(value="/addsave" ,method = RequestMethod.POST)
	public String add(@ModelAttribute("sampleVo") SampleVO sampleVO, RedirectAttributes redirectAttributes){
		System.out.println(sampleVO.getDescription());
		this.sampleService.add(sampleVO);
		redirectAttributes.addFlashAttribute("message","추가되었습니다.");
		return "redirect:sample";
		
	}
	@RequestMapping(value="/editsave" ,method = RequestMethod.POST)
	public String edit(@ModelAttribute("sampleVo") SampleVO sampleVO, RedirectAttributes redirectAttributes){
		this.sampleService.update(sampleVO);
		redirectAttributes.addFlashAttribute("message","수정되었습니다.");
		return "redirect:sample";
		
	}
	@RequestMapping(value="/delete" ,method = RequestMethod.POST)
	public String delete(@RequestParam(value="sampleNo",required=false) int sampleNo,RedirectAttributes redirectAttributes){
		this.sampleService.delete(sampleNo);
		redirectAttributes.addFlashAttribute("message","삭제되었습니다.");
		return "redirect:sample";
		
	}
}
