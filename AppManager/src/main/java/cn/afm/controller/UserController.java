package cn.afm.controller;

import cn.afm.pojo.User;
import cn.afm.service.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
@SessionAttributes(value = "devuser")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService usi;

    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    @ResponseBody
    public Map dologin(User user, Model model){
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
                    //此处登录成功将该开发者添加到session域
                    model.addAttribute("devuser",user);
                }
            }else{
                resultMap.put("devCodemessage","登录名错误");
            }
        }
        return resultMap;
    }
}
