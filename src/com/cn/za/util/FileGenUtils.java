package com.cn.za.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

public class FileGenUtils {

	public static void genDir(String filePath) throws IOException {
		File file = new File(filePath);
		if (!file.exists()) {
			file.mkdirs();
		} else if (file.isFile()) {
			file.delete();
			file.mkdirs();
		}
	}

	public static void genFile(String filePath, String fileName)
			throws IOException {
		genDir(filePath);
		File file = new File(filePath + File.separator + fileName);
		if (!file.exists()) {
			file.createNewFile();
		} else {
			file.delete();
			file.createNewFile();
		}
	}

	public static void genFile(String filePath, String fileName,
			String fileHisPath, String fileHisName) throws IOException {
		genDir(fileHisPath);
		genDir(filePath);
		File file = new File(filePath + File.separator + fileName);
		if (!file.exists()) {
			file.createNewFile();
		} else {
			FileUtils.copyFile(file, new File(fileHisPath + File.separator
					+ fileHisName));
			file.delete();
			file.createNewFile();
		}
	}

	public static String[] getFilesByPath(String path) {
		File dir = new File(path);
		if (dir.exists()) {
			return dir.list();
		} else {
			return null;
		}
	}

	public static long getFileSize(String fullFileName) {
		File f = new File(fullFileName);
		return f.length();
	}

	public static long getFileModify(String fullFileName) {
		File f = new File(fullFileName);
		return f.lastModified();
	}

	public static boolean isDirectory(String fullFileName) {
		File f = new File(fullFileName);
		return f.isDirectory();
	}

	public static boolean isHidden(String fullFileName) {
		File f = new File(fullFileName);
		return f.isHidden();
	}

}
