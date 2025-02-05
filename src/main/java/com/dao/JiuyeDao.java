package com.dao;

import com.entity.JiuyeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.JiuyeView;

/**
 * 就业信息 Dao 接口
 *
 * @author 
 * @since 2021-03-17
 */
public interface JiuyeDao extends BaseMapper<JiuyeEntity> {

   List<JiuyeView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
