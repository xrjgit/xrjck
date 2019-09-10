package cn.afm.dao.User;

import cn.afm.pojo.User;

import java.util.List;

public interface UserMapper {
    User getUserByCode(User user);
    int isexistsCode(String code);
    int isexistsEmail(String email);
    int addUser(User user);
}
