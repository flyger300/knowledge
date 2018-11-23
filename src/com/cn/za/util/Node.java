package com.cn.za.util;

import java.util.List;

public class Node {
	String id;
	String name;
	String text;
	String type;
	String parent;
	String state;
	String path;
	boolean leaf;
//	Node[] children;
	List<Node> children;
	
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setParent(String parent) {
		this.parent = parent;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPath(String path) {
		this.path = path;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public void setLeaf(boolean leaf) {
		this.leaf = leaf;
	}
		
	public void setChildren(List<Node> children) {
		this.children = children;
	}
	
	public String getId() {
		return this.id;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getPath() {
		return this.path;
	}
	
	public String getType() {
		return this.type;
	}
	
	public String getState() {
		return this.state;
	}
	
	public boolean getLeaf() {
		return this.leaf;
	}
	
	public String getParent() {
		return this.parent;
	}
	
	public List<Node> getChildren() {
		return this.children;
	}
	
	public void setText(String text) {
		this.text = text;
	}
	
	public String getText() {
		return this.text;
	}
	
}
