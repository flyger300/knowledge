package com.cn.za.knowledge.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cn.za.knowledge.mapper.KnowledgeMapper;
import com.cn.za.knowledge.model.KnowledgeWithBLOBs;
import com.cn.za.knowledge.service.KnowledgeService;

@Repository(value = "knowledgeService")  
@Transactional  
public class KnowledgeServiceImpl implements KnowledgeService {  
	
	private static Logger logger = Logger.getLogger(KnowledgeServiceImpl.class);
	
    @Resource(name = "knowledgeMapper")  
    private KnowledgeMapper knowledgeMapper;  
    
    @Override  
    public List<KnowledgeWithBLOBs> findByCondition(int fromIndex,int rows,String condition) {  
    	
    	HashMap<String,Object> map = new HashMap<String,Object>();
    	
    	map.put("from", fromIndex);
    	map.put("to", rows);
    	map.put("condition", condition);
    	
        return this.knowledgeMapper.selectByCondition(map);
        
    }
        
    @Override
    public int countByCondition(String condition) {
    	
    	HashMap<String,Object> map = new HashMap<String,Object>();
    	
    	map.put("condition", condition);
    	
    	return this.knowledgeMapper.countByCondition(map);
    }
    
    @Override
    public int insert(KnowledgeWithBLOBs object) {
    	logger.info(String.format("title = [%s]", object.getTitle()));
    	
    	return this.knowledgeMapper.insert(object);
    }
    
    @Override
    public int update(KnowledgeWithBLOBs object) {
    	return this.knowledgeMapper.updateByPrimaryKeyWithBLOBs(object);
    }
    
    @Override  
    public int deleteById(String id) {  
    	
    	return this.knowledgeMapper.deleteByPrimaryKey(id);
        
    }   
   
   
}  
