package cn.afm.controller;

import cn.afm.pojo.Manager;
import cn.afm.service.Manager.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
@SessionAttributes(value = "backenduser")
@RequestMapping("/backenduser")
public class ManagerController {
    @Autowired
    private ManagerService managerService;

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String dologin(Manager manager, Model model, HttpServletResponse response, @RequestParam(value = "missavepwd",required = false) String missavepwd){
        String userCode=manager.getUserCode();
        String userPassword=manager.getUserPassword();
        boolean messageflag=false;
        if(userCode==null||userCode.equals("")){
            model.addAttribute("backendCodeMessage","登录名不能为空");
            model.addAttribute("mpwd",manager.getUserPassword());
            messageflag=true;
        }
        if(userPassword==null||userPassword.equals("")){
            model.addAttribute("backendPasswordMessage","密码不能为空");
            model.addAttribute("mcode",manager.getUserCode());
            messageflag=true;
        }
        if(messageflag){
            return "ManagerLogin";
        }else{
            Manager manager1=managerService.getManagerByCode(manager);
            if(manager1!=null){
                if(!manager1.getUserPassword().equals(manager.getUserPassword())){
                    model.addAttribute("backendPasswordMessage","密码错误");
                    model.addAttribute("mcode",manager.getUserCode());
                    return "ManagerLogin";
                }else{
                    if(missavepwd!=null&&!missavepwd.equals("")){
                        Cookie managerCodecookie=new Cookie("managerCode",manager.getUserCode());
                        Cookie managerPwdcookie=new Cookie("managerPwd",manager.getUserPassword());
                        managerCodecookie.setMaxAge(60*60*24*3);
                        managerPwdcookie.setMaxAge(60*60*24*3);
                        response.addCookie( managerCodecookie);
                        response.addCookie(managerPwdcookie);
                    }
                    model.addAttribute("backenduser",manager);
                    return "DeveloperRegist";
                }
            }else{
                model.addAttribute("backendCodeMessage","登录名错误");
                model.addAttribute("mpwd",manager.getUserPassword());
                return "ManagerLogin";
            }
        }
    }

    @RequestMapping("/login")
    public String loginview(){
        return "ManagerLogin";
    }
}
