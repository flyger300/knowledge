package com.cn.za.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileUtils {
	
	public static List<Node> getFiles(String strPath) throws Exception {
				
		List<Node> list = new ArrayList<Node>();		
		
		File dir = new File(strPath);
		if (!dir.exists()) {
			throw new CustomException("目录" + dir.getAbsolutePath() + "不存在");
		}
		
        File[] files = dir.listFiles(); // 该文件目录下文件全部放入数组
        if (files != null) {
            for (int i = 0; i < files.length; i++) {
            	
            	Node node = new Node();           	
                String fileName = files[i].getName();
                
                String id = UuidUtils.getId();
                node.setId(id);
                node.setName(fileName);
                node.setText(fileName);   
                
                if (files[i].isDirectory()) { // 判断是文件还是文件夹

                	node.setType("dir");
                	List<Node> clist = getFiles(files[i].getAbsolutePath()); // 获取文件绝对路径
//                	Node[] children = new Node[clist.size()];
                	
                	List<Node> children = new ArrayList<Node>();
                	
//                	int j = 0;
                	for (Node cn : clist) {
                		cn.setParent(node.getName());
                		children.add(cn);
//                		children[j] = cn;
//                		j ++ ;
                	}
                	
                	node.setChildren(children); 
                	if (clist.size() > 0) {
                		node.setState("closed");
                	}
                	
                	list.add(node);
                	
                } else if (fileName.endsWith(".txt")) { // 判断文件名是否以.avi结尾
                    String strFileName = files[i].getAbsolutePath(); 
                    node.setType("file");
                    node.setPath(strFileName);
                    System.out.println("---" + strFileName); 
                    node.setState("closed");                   
                    list.add(node);
                    
                } else {
                    continue;
                }
            }

        }
        
        return list;
        
    }
}
