package lt.bit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    
    @GetMapping("login")
    public ModelAndView login (@RequestParam(value = "error", required = false) Boolean err) {
        ModelAndView maw = new ModelAndView("login");
        if (err != null && err) {
            maw.addObject("error", true);
        } else {
            maw.addObject("error", false);
        }
        return maw;
    }
    
}
