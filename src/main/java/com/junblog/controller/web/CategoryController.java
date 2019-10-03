package com.junblog.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.junblog.builder.BlogSearchBuilder;
import com.junblog.dto.BlogDTO;
import com.junblog.output.BlogOutPut;
import com.junblog.service.IBlogService;
import com.junblog.service.ICategoryService;
import com.junblog.service.ITagService;

@Controller(value = "categoryControllerOfWeb")
public class CategoryController {
	@Autowired private ICategoryService categoryService;
	@Autowired private ITagService tagService;
	@Autowired private IBlogService blogService;
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView categoryPage(@ModelAttribute("model") BlogDTO model) {
		ModelAndView mav = new ModelAndView("web/category");
		//category
		mav.addObject("categorys", categoryService.findAll());
		//tag
		mav.addObject("tags", tagService.findAll());
		//slider
		mav.addObject("sliders", blogService.sliders());
		//post popular
		mav.addObject("populars", blogService.postPopulars());
		//about me
		mav.addObject("aboutMe", blogService.aboutMe());
		//blog
		BlogSearchBuilder builder = initBlogSearchBuilder(model);
		Pageable pageable = new PageRequest(model.getPage() - 1, model.getMaxPageItem());
		BlogOutPut blogOutPut = blogService.findAll(builder, pageable);
		model.setListResult(blogOutPut.getBlogDTOs());
		return mav;
	}
	private BlogSearchBuilder initBlogSearchBuilder(BlogDTO model) {
		BlogSearchBuilder builder = new BlogSearchBuilder.Builder()
				.setName(model.getName()).setAuthorId(model.getAuthorId())
				.setCategoryId(model.getCategoryId()).setTagId(model.getTagId())
				.build();
		return builder;
	}
}
