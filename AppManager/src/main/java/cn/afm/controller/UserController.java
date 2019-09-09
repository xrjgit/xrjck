package cn.afm.controller;

import cn.afm.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String dologin(@Valid User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            System.out.println("错误");
            return "DeveloperLogin";
        }
        return "DeveloperRegist";
    }
}
