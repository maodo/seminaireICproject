package sn.ept.ic;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = { "/","/index","/home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		LOGGER.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("user", System.getProperty("user.name") );
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}
	

	@RequestMapping(value = { "/errors/{code}"}, method = RequestMethod.GET)
	public String error(@PathVariable int code,  Model model) {
		model.addAttribute("code", code );
		return "error";
	}
	
	
}
