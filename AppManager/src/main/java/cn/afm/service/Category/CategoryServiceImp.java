package cn.afm.service.Category;

import cn.afm.dao.Category.CategoryMapper;
import cn.afm.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImp implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Override
    public List<Category> getCategoryListByParentId(Integer parentId) {
        List<Category> clist=categoryMapper.getCategoryListByParentId(parentId);
        return clist;
    }
}
