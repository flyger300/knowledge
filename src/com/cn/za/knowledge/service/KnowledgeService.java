package com.cn.za.knowledge.service;

import java.util.List;

import com.cn.za.knowledge.model.KnowledgeWithBLOBs;

public interface KnowledgeService {
	
	public List<KnowledgeWithBLOBs> findByCondition(int fromIndex,int rows,String condition);
	
	public int countByCondition(String condition);
	
	public int insert(KnowledgeWithBLOBs object);

	public int update(KnowledgeWithBLOBs object);

	public int deleteById(String id);
	
}
