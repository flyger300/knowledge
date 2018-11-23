package com.cn.za.knowledge.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.za.knowledge.model.KnowledgeWithBLOBs;
import com.cn.za.knowledge.service.KnowledgeService;
import com.cn.za.util.UuidUtils;

@Controller
@RequestMapping(value = "")
public class KnowledgeController {

	private static Logger logger = Logger.getLogger(KnowledgeController.class);

	@Resource
	private KnowledgeService knowledgeService;
	
	@RequestMapping(value = "getKnowledgeList")
	@ResponseBody
	public Map<String, Object> getKnowledgeList(
			@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "rows", required = false) Integer rows,
			@RequestParam(value = "condition", required = false) String condition)
			throws Exception {
		
		if (condition == null || "".equals(condition)) {
			condition = "1=1";
		}
		
		logger.info(String.format("page = [%d],rows = [%d],condition = [%s]", page, rows,condition));
		
		int fromIndex = (page - 1) * rows;  		
		
		int total = this.knowledgeService.countByCondition(condition);
        
        List<KnowledgeWithBLOBs> result = this.knowledgeService.findByCondition(fromIndex, rows, condition);
        
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", total);		
		map.put("rows", result);		
		
		logger.info(String.format("total = [%d]", result.size()));
		
		return map;

	}
	
	@RequestMapping(value = "addKnowledge")
	@ResponseBody
	public void addKnowledge(KnowledgeWithBLOBs object) {		
		
		logger.info(String.format(" ***  ==="));
		logger.info(String.format("title = [%s]", object.getTitle()));
		object.setId(UuidUtils.getId());
		this.knowledgeService.insert(object);
		///this.collectorService.insert(collector);

		return;

	}
	
	@RequestMapping(value = "deleteKnowledgeById")
	@ResponseBody
	public void deleteKnowledgeById(@RequestParam(value = "ids[]") String[] ids)
			throws Exception {

		for (int i = 0; i < ids.length; i++) {
			this.knowledgeService.deleteById(ids[i]);
		}

		return;

	}

	@RequestMapping(value = "updateKnowledge")
	@ResponseBody
	public void updateKnowledge(KnowledgeWithBLOBs object) {

		logger.info("id = [" + object.getId() + "]");
		logger.info("name = [" + object.getTitle() + "]");

		this.knowledgeService.update(object);

		return;

	}

}
