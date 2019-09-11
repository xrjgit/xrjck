package cn.afm.service.Dictionary;

import cn.afm.dao.Dictionary.DictionaryMapper;

import java.util.List;

public interface DictionaryService {
    List<DictionaryMapper> getAppStatusList();
    List<DictionaryMapper> getFlatformList();

}
