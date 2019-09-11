package cn.afm.service.Category;

import cn.afm.pojo.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategoryListByParentId(Integer parentId);
}
