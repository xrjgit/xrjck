package cn.afm.dao.Category;

import cn.afm.pojo.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryMapper {
    List<Category> getCategoryListByParentId(@Param("parentId") Integer parentId);
}
