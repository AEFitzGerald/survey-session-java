package com.fitzgerald.survey;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {
	
	@GetMapping("/survey")
	public String viewSurvey() {
		return "survey.jsp";
	}
	
	
	@PostMapping(value="/complete-survey")
	public String inputSurvey(@RequestParam(value="user") String user, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment") String comment, Model model,  HttpSession session) {
		
		model.addAttribute("user", user);
		model.addAttribute("location", location);
		model.addAttribute("language", language);
		model.addAttribute("comment", comment);
		
		session.setAttribute("user", user);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		
		return "redirect:/results";
	}
	
	@GetMapping("/results")
	public String showResults(String user, String location, String language, String comment, HttpSession session, Model model) {
		String userName = (String) session.getAttribute(user);
		String userLocation = (String) session.getAttribute(location);
		String userLanguage = (String) session.getAttribute(language);
		String userComment = (String) session.getAttribute(comment);
		
		model.addAttribute("user", userName);
		model.addAttribute("location", userLocation);
		model.addAttribute("language",userLanguage);
		model.addAttribute("comment", userComment);
		
		
		return "results.jsp";
	}
}
