package co.com.psl.elitemovie.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspPagesController {

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		return "index";
	}

	@RequestMapping("/rsvp")
	public String rsvp(Map<String, Object> model) {
		return "rsvp";
	}

	@RequestMapping("/information")
	public String info(Map<String, Object> model) {
		return "information";
	}

}
