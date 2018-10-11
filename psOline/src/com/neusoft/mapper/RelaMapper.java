package com.neusoft.mapper;

import com.neusoft.po.Rela;
import com.neusoft.po.RelaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RelaMapper {
    int countByExample(RelaExample example);

    int deleteByExample(RelaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Rela record);

    int insertSelective(Rela record);

    List<Rela> selectByExample(RelaExample example);

    Rela selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Rela record, @Param("example") RelaExample example);

    int updateByExample(@Param("record") Rela record, @Param("example") RelaExample example);

    int updateByPrimaryKeySelective(Rela record);

    int updateByPrimaryKey(Rela record);
}