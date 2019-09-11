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
import java.util.HashMap;
import java.util.Map;

@Controller
@SessionAttributes(value="devusersession")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService usi;

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    @ResponseBody
    public Map dologin(User user, Model model, @RequestParam(value = "issavepwd",required = false) String issavepwd, HttpServletResponse response, HttpSession session){
        Map<String, String> resultMap = new HashMap<String, String>();
        String devCode=user.getDevCode();
        String devPassword=user.getDevPassword();
        if(devCode==null||devCode.equals("")){
            resultMap.put("devCodemessage","登录名不能为空");
        }
        if(devPassword==null||devPassword.equals("")){
            resultMap.put("devPwdmessage","密码不能为空");
        }
        if(devCode!=null&&!devCode.equals("")&&devPassword!=null&&!devPassword.equals("")){
            User devuser=usi.getUserByCode(user);
            if(devuser!=null){
                if(!devuser.getDevPassword().equals(user.getDevPassword())){
                    resultMap.put("devPwdmessage","密码错误");
                }else{
                    //判断是否需要记住密码
                    if(issavepwd.equals("true")){
                        Cookie devuserCodecookie=new Cookie("devuserCode",user.getDevCode());
                        Cookie devuserPwdcookie=new Cookie("devuserPwd",user.getDevPassword());
                        devuserCodecookie.setMaxAge(60*60*24*3);
                        devuserPwdcookie.setMaxAge(60*60*24*3);
                        response.addCookie(devuserCodecookie);
                        response.addCookie(devuserPwdcookie);
                    }
                    //此处登录成功将该开发者添加到session域
//                    session.setAttribute("devusersession",user);
                    model.addAttribute("devusersession",user);
                }
            }else{
                resultMap.put("devCodemessage","登录名错误");
            }
        }
        return resultMap;
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
        System.out.println(devCode+devPwd);
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
    public String developershow(HttpSession session){
        return "DeveloperShow";
    }

    @RequestMapping(value="/developerselect",method = RequestMethod.GET)
    public void developerselect(){

    }
}
