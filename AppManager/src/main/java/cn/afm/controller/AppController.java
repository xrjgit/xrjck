package cn.afm.controller;

import cn.afm.dao.Dictionary.DictionaryMapper;
import cn.afm.pojo.Category;
import cn.afm.service.Category.CategoryService;
import cn.afm.service.Dictionary.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/app")
public class AppController {
    @Autowired
    private DictionaryService dsi;
    @Autowired
    private CategoryService csi;

    @RequestMapping(value="/getStatusList",method = RequestMethod.GET)
    @ResponseBody
    public List getStatusList(){
        List<DictionaryMapper> list= dsi.getAppStatusList();
        return list;
    }

    @RequestMapping(value = "/getFlatformList",method = RequestMethod.GET)
    @ResponseBody
    public List getFlatformList(){
        List<DictionaryMapper> list= dsi.getFlatformList();
        return list;
    }

    @RequestMapping(value = "/getAppCate",method = RequestMethod.GET)
    @ResponseBody
    public List getAppCate(@RequestParam(value = "parentId",required = false) String parentId){
        List<Category> list=csi.getCategoryListByParentId((parentId==null||parentId.equals(""))?null:Integer.parseInt(parentId));
        return list;
    }
}
