package com.junblog.controller.admin;

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
import com.junblog.service.IUserService;

@Controller(value = "blogControllerOfAdmin")
public class BlogController {
	@Autowired private IBlogService blogService;
	@Autowired private ITagService tagService;
	@Autowired private ICategoryService categoryService;
	@Autowired private IUserService userService;
	
	@RequestMapping(value = "/admin/blog", method = RequestMethod.GET)
	public ModelAndView findAll(@ModelAttribute("model") BlogDTO model) {
		ModelAndView mav = new ModelAndView("admin/list");
		BlogSearchBuilder builder = initBlogSearchBuilder(model);
		mav.addObject("categorys", categoryService.findAll());
		mav.addObject("tags", tagService.findAll());
		mav.addObject("authors", userService.findAll());
		Pageable pageable = new PageRequest(model.getPage() - 1, model.getMaxPageItem());
		BlogOutPut blogOutPut = blogService.findAll(builder, pageable);
		model.setTotalItems(blogOutPut.getCount());
		model.setTotalPage((int)Math.ceil((double)model.getTotalItems() / model.getMaxPageItem()));
		model.setListResult(blogOutPut.getBlogDTOs());
		return mav;
	}
	
	@RequestMapping(value = "/admin/blog/edit", method = RequestMethod.GET)
	public ModelAndView editPage(@ModelAttribute("model") BlogDTO model) {
		ModelAndView mav = new ModelAndView();
		if(model.getId() != null) {
			//findById
			BlogDTO blogDetail = blogService.findById(model.getId());
			mav.addObject("blogDetail", blogService.findById(model.getId()));
		}
		mav.addObject("tags", tagService.findAll());
		mav.addObject("categorys", categoryService.findAll());
		mav.setViewName("admin/edit");
		return mav;
	}
	
	@RequestMapping(value = "/admin/blog/tagAndCategory", method = RequestMethod.GET)
	public ModelAndView editTagAndCategory(@ModelAttribute("model") BlogDTO model) {
		ModelAndView mav = new ModelAndView();
		if(model.getId() != null) {
			//findById
		}
		mav.addObject("categorys", categoryService.findAll());
		mav.addObject("tags", tagService.findAll());
		mav.setViewName("admin/editTagAndCategory");
		return mav;
	}
	
	private BlogSearchBuilder initBlogSearchBuilder(BlogDTO model) {
		BlogSearchBuilder builder = new BlogSearchBuilder.Builder()
				.setName(model.getName()).setAuthorId(model.getAuthorId())
				.setCategoryId(model.getCategoryId()).setTagId(model.getTagId())
				.setSlider(model.getSlider())
				.build();
		return builder;
	}
		
}
