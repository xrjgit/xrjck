package cn.afm.service.Dictionary;

import cn.afm.dao.Dictionary.DictionaryMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DictionaryServiceImp implements DictionaryService {
    @Autowired
    private DictionaryMapper dictionaryMapper;
    @Override
    public List<DictionaryMapper> getAppStatusList() {
        List<DictionaryMapper> diclist=dictionaryMapper.getAppStatusList();
        return diclist;
    }

    @Override
    public List<DictionaryMapper> getFlatformList() {
        List<DictionaryMapper> diclist=dictionaryMapper.getFlatformList();
        return diclist;
    }
}
