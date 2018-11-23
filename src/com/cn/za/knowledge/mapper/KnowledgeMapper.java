package com.cn.za.knowledge.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.za.knowledge.model.Knowledge;
import com.cn.za.knowledge.model.KnowledgeExample;
import com.cn.za.knowledge.model.KnowledgeWithBLOBs;

public interface KnowledgeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int countByExample(KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int deleteByExample(KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int insert(KnowledgeWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int insertSelective(KnowledgeWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    List<KnowledgeWithBLOBs> selectByExampleWithBLOBs(KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    List<Knowledge> selectByExample(KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    KnowledgeWithBLOBs selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByExampleSelective(@Param("record") KnowledgeWithBLOBs record, @Param("example") KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByExampleWithBLOBs(@Param("record") KnowledgeWithBLOBs record, @Param("example") KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByExample(@Param("record") Knowledge record, @Param("example") KnowledgeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByPrimaryKeySelective(KnowledgeWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByPrimaryKeyWithBLOBs(KnowledgeWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table knowledge
     *
     * @mbggenerated Fri Jun 22 17:04:50 CST 2018
     */
    int updateByPrimaryKey(Knowledge record);
    
    int countByCondition(HashMap<String,Object> map);
	
	List<KnowledgeWithBLOBs> selectByCondition(HashMap<String,Object> map);
}