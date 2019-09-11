package cn.afm.controller;

import cn.afm.pojo.User;
import cn.afm.service.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@Controller
@SessionAttributes(value = "devusersession")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService usi;

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String dologin(User user, Model model, @RequestParam(value = "issavepwd",required = false) String issavepwd, HttpServletResponse response){
        String devCode=user.getDevCode();
        String devPassword=user.getDevPassword();
        boolean messageflag=false;
        if(devCode==null||devCode.equals("")){
            model.addAttribute("devCodeMessage","登录名不能为空");
            model.addAttribute("dpwd",devPassword);
            messageflag=true;
        }
        if(devPassword==null||devPassword.equals("")){
            model.addAttribute("devPasswordMessage","密码不能为空");
            model.addAttribute("dcode",devCode);
            messageflag=true;
        }
        if(messageflag){
            return "DeveloperLogin";
        }else{
            User user1=usi.getUserByCode(user);
            if(user1!=null){
                if(!user1.getDevPassword().equals(devPassword)){
                    model.addAttribute("devPasswordMessage","密码错误");
                    model.addAttribute("dcode",devCode);
                    return "DeveloperLogin";
                }else{
                    if(issavepwd!=null&&!issavepwd.equals("")){
                        Cookie devuserCodecookie=new Cookie("devuserCode",devCode);
                        Cookie devuserPwdcookie=new Cookie("devuserPwd",devPassword);
                        devuserCodecookie.setMaxAge(60*60*24*3);
                        devuserPwdcookie.setMaxAge(60*60*24*3);
                        response.addCookie(devuserCodecookie);
                        response.addCookie(devuserPwdcookie);
                    }
                    model.addAttribute("devusersession",user1);
                    return "DeveloperShow";
                }
            }else{
                model.addAttribute("devCodeMessage","登录名错误");
                model.addAttribute("dpwd",devPassword);
                return "DeveloperLogin";
            }
        }
    }

    @RequestMapping(value = "/regist",method = RequestMethod.GET)
    public String registview(@ModelAttribute("user") User user){
        return "DeveloperRegist";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    public String doregist(@Valid User user, BindingResult bindingResult, Model model,
                           @RequestParam(value = "repwd",required = false)String repwd,
                           HttpServletResponse response, HttpServletRequest request){
        if(bindingResult.hasErrors()){
            model.addAttribute("user",user);
            return "DeveloperRegist";
        }
        boolean flag1=usi.isexistsCode(user.getDevCode());
        boolean flag2=usi.isexistsEmail(user.getDevEmail());
        boolean flag3=false;
        if(flag1){
            model.addAttribute("devcodeerror","该账户已存在");
        }
        if(flag2){
            model.addAttribute("devemailerror","该邮箱已存在");
        }
        if(repwd==null||repwd.equals("")){
            model.addAttribute("devrepwderror","请再次输入密码");
            flag3=true;
        }else if(!repwd.equals(user.getDevPassword())){
            model.addAttribute("devrepwderror","两次输入的密码不一致");
            flag3=true;
        }
        if(flag1||flag2||flag3){
            model.addAttribute("user",user);
            model.addAttribute("repwd",repwd);
            return "DeveloperRegist";
        }
        user.setCreationDate(new Date());
        boolean flag4=usi.addUser(user);
        PrintWriter out=null;
        try {
             out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(!flag4){
            model.addAttribute("user",user);
            model.addAttribute("repwd",repwd);
            return "DeveloperRegist";
        }else{
            out.print("<script>alert('恭喜您，注册成功！');window.location.href='/user/login?devCode="+user.getDevCode()+"&devPwd="+user.getDevPassword()+"';</script>");
            out.flush();
            out.close();
            return null;
        }
    }

    @RequestMapping("/login")
    public String loginview(@RequestParam(value = "devCode",required = false) String devCode,@RequestParam(value = "devPwd",required = false) String devPwd,Model model){
        model.addAttribute("devCode",devCode);
        model.addAttribute("devPwd",devPwd);
        return "DeveloperLogin";
    }

    @RequestMapping("/enter")
    public String appentrance(){
        return "Entrance";
    }

    @RequestMapping(value = "/isexistscode",method = RequestMethod.GET)
    @ResponseBody
    public Object isexistscode(@RequestParam(value = "devCode",required = false) String devCode){
        boolean flag=usi.isexistsCode(devCode);
        return flag;
    }

    @RequestMapping(value = "isexistsemail",method = RequestMethod.GET)
    @ResponseBody
    public Object isexistsemail(@RequestParam(value = "devEmail",required = false) String devEmail){
        boolean flag=usi.isexistsEmail(devEmail);
        return flag;
    }

    @RequestMapping("/developershow")
    public String developershow(){
        return "DeveloperShow";
    }

    @RequestMapping(value="/developerselect",method = RequestMethod.GET)
    public void developerselect(){

    }
}
