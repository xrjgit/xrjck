package cn.afm.service.User;

import cn.afm.pojo.User;

import java.util.List;

public interface UserService {
    User getUserByCode(User user);
    Boolean isexistsCode(String code);
    Boolean isexistsEmail(String email);
    Boolean addUser(User user);
}
