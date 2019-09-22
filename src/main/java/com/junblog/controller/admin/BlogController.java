package com.junblog.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.junblog.dto.BlogDTO;
import com.junblog.service.IBlogService;

@Controller(value = "blogControllerOfAdmin")
public class BlogController {
	@Autowired
	private IBlogService blogSevice;
	
	@RequestMapping(value = "/admin/blog", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("admin/list");
		return mav;
	}
	
	@RequestMapping(value = "/admin/blog/edit", method = RequestMethod.GET)
	public ModelAndView editPage(@ModelAttribute("model") BlogDTO model) {
		ModelAndView mav = new ModelAndView();
		if(model.getId() != null) {
			//findById
		}
		mav.setViewName("admin/edit");
		return mav;
	}
		
}
