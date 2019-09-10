package cn.afm.service.User;

import cn.afm.dao.User.UserMapper;
import cn.afm.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImp implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByCode(User user) {
        User devuser=userMapper.getUserByCode(user);
        return devuser;
    }

    @Override
    public Boolean isexistsCode(String code) {
        boolean flag=false;
        int k=userMapper.isexistsCode(code);
        if(k>0){
            flag=true;
        }
        return flag;
    }

    @Override
    public Boolean isexistsEmail(String email) {
        boolean flag=false;
        int k=userMapper.isexistsEmail(email);
        if(k>0){
            flag=true;
        }
        return flag;
    }

    @Override
    public Boolean addUser(User user) {
        boolean flag=false;
        int k=userMapper.addUser(user);
        if(k>0){
            flag=true;
        }
        return flag;
    }
}
