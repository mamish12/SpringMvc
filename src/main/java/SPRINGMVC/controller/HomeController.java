package SPRINGMVC.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("name","Manish Kumar Sahu");
		model.addAttribute("id",1421);
		List<String> frnd=new ArrayList<String>();
		frnd.add("rajan");
		frnd.add("sohan");
		frnd.add("mohan");
		frnd.add("raji");
		model.addAttribute("fr",frnd);
		System.out.println("This is home url");
		return "index";
		
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("This is about controller");
		return "about";
	}
	
	//services
	//help
	
	@RequestMapping("/help")
	public ModelAndView help()
	{
		System.out.println("This is help controller");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("name","urvarshi urvi");
		modelAndView.addObject("roll",12573);
		LocalDateTime now=LocalDateTime.now();
		modelAndView.addObject("time",now);
		return modelAndView;
	}

}
