package cn.afm.service.Manager;

import cn.afm.dao.Manager.ManagerMapper;
import cn.afm.pojo.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImp implements ManagerService {
    @Autowired
    private ManagerMapper managerMapper;
    @Override
    public Manager getManagerByCode(Manager manager) {
        Manager manager1=managerMapper.getManagerByCode(manager);
        return manager1;
    }
}
