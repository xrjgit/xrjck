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
    public List<User> getUserList() {
        List<User> users=userMapper.getUserList();
        return users;
    }
}
