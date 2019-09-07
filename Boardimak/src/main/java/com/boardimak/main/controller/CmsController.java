package com.boardimak.main.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boardimak.main.model.Blogs;
import com.boardimak.main.model.CmsOther;
import com.boardimak.main.services.CmsOtherServices;
import com.boardimak.main.services.CmsService;



@Controller
public class CmsController {

	@Autowired
	private CmsService blogService;

	@Autowired
	private CmsOtherServices cmsOtherService;

	@GetMapping("/cmsHome")
	public String Welcome1(HttpServletRequest request) {
		request.setAttribute("blogs", blogService.findAllBlogs());
		request.setAttribute("others", cmsOtherService.findAllOthers());
		return "cmshome";
	}

	@GetMapping("/savedOk")
	public String SavedOk(HttpServletRequest request) {
		request.setAttribute("blogs", blogService.findAllBlogs());
		return "cmshome";
	}

	@GetMapping("/delete-blog")
	public void deleteBlog(@RequestParam int id, HttpServletRequest request, HttpServletResponse res) throws IOException {
		blogService.deleteBlogs(id);
		res.sendRedirect("/cmsHome");
		
	}

	@GetMapping("/newBlog")
	public String newBlog(HttpServletRequest request) {
		return "new_blog";
	}

	@PostMapping("/saveBlog")
	public void saveBlog(@ModelAttribute Blogs blogs, HttpServletRequest request, HttpServletResponse res)
			throws IOException {

		blogService.saveBlog(blogs);
		res.sendRedirect("/cmsHome");
	}

	@GetMapping("/editBlog")
	public String editBlog(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("blogs", blogService.findOneBlog(id));
		
		return "edit_blog";
	}

	@GetMapping("/newPolicy")
	public String CmsPrivacy(HttpServletRequest request) {
		request.setAttribute("others", cmsOtherService.findAllOthers());
		return "cms_privacy_policy";
	}

	@PostMapping("/savePrivacyPolicy")
	public void savePrivacyPolicy(@ModelAttribute CmsOther other, HttpServletRequest request, HttpServletResponse res)
			throws IOException {

		cmsOtherService.saveCmsOther(other);
		res.sendRedirect("/newPolicy");

	}

	@GetMapping("/newTerm")
	public String CmsTerms(HttpServletRequest request) {
		request.setAttribute("others", cmsOtherService.findAllOthers());
		return "cms_terms";
	}

	@PostMapping("/saveTerm")
	public void saveTerms(@ModelAttribute CmsOther other, HttpServletRequest request, HttpServletResponse res)
			throws IOException {

		cmsOtherService.saveCmsOther(other);
		res.sendRedirect("/newTerm");

	}

	@GetMapping("/newFAQ")
	public String CmsFA(HttpServletRequest request) {
		request.setAttribute("others", cmsOtherService.findAllOthers());
		return "cms_faq";
	}

	@PostMapping("/saveFA")
	public void saveFAs(@ModelAttribute CmsOther other, HttpServletRequest request, HttpServletResponse res)
			throws IOException {

		cmsOtherService.saveCmsOther(other);
		res.sendRedirect("/newFAQ");

	}

	@GetMapping("/delete-cmsothers")
	public void deleteCmsothers(@RequestParam int id, HttpServletRequest request, HttpServletResponse res) throws IOException {
		cmsOtherService.deleteOthers(id);
		res.sendRedirect("/cmsHome");
	}

	@GetMapping("/editcmsothers")
	public String editcmsOther(@RequestParam int id, HttpServletRequest request) {
		
		CmsOther oth = cmsOtherService.findOneOthers(id);
		
		String type = oth.getType();
		String page = null ;
		String typeFA = "FA";
		String typePo = "Policy";
		String typeTC = "TC";
		
		if(type.equals(typeFA)) {
			request.setAttribute("other", oth);
			request.setAttribute("others", cmsOtherService.findAllOthers());
			cmsOtherService.deleteOthers(id);
			return "cms_faq";
		}else if(type.equals(typePo)){
			request.setAttribute("other", oth);
			request.setAttribute("others", cmsOtherService.findAllOthers());
			cmsOtherService.deleteOthers(id);
			return "cms_privacy_policy";
		}else if(type.equals(typeTC)) {
			request.setAttribute("other", oth);
			request.setAttribute("others", cmsOtherService.findAllOthers());
			cmsOtherService.deleteOthers(id);
			return "cms_terms";
		}else {
			request.setAttribute("blogs", blogService.findAllBlogs());
			request.setAttribute("others", cmsOtherService.findAllOthers());
			return "cmshome";
		}
		
		
		

	}
}
