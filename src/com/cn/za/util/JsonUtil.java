package com.cn.za.util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

/**
 * ClassName: JsonUtil
 * 
 * @Description: TODO JSON转换工具类
 * @author caowei
 * @date 2015年11月20日
 */
public class JsonUtil {

	/**
	 * 对象转换成json字符串
	 * 
	 * @Description: TODO
	 * @param @param obj
	 * @param @return
	 * @return String
	 * @throws
	 * @author caowei
	 * @date 2015年11月20日
	 */
	public static String toJson(Object obj) {
		String result = "";
		Gson gson = new GsonBuilder().serializeNulls().create();
		try {
			result = gson.toJson(obj);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	/**
	 * json字符串转成对象
	 * 
	 * @Description: TODO
	 * @param @param str
	 * @param @param type
	 * @param @return
	 * @return T
	 * @throws
	 * @author caowei
	 * @date 2015年11月20日
	 */
	public static <T> T fromJson(String str, Type type) {
		Gson gson = new Gson();
		try {
			T t = gson.fromJson(str, type);
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * json字符串转成对象
	 * 
	 * @Description: TODO
	 * @param @param str
	 * @param @param type
	 * @param @return
	 * @return T
	 * @throws
	 * @author caowei
	 * @date 2015年11月20日
	 */
	public static <T> T fromJson(String str, Class<T> type) {
		Gson gson = new Gson();
		try {
			T t = gson.fromJson(str, type);
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * @创建人: ZYC
	 * @Method描述: 字符串返回成Map
	 * @创建时间: 2015年11月27日上午9:50:01
	 * @param str
	 *            Json字符串
	 * @return Map
	 */
	public static Map<String, String> toMap(String str) {
		Gson gson = new Gson();
		Map<String, String> gsonMap = gson.fromJson(str,
				new TypeToken<Map<String, String>>() {
				}.getType());
		return gsonMap;
	}

	/**
	 * Json字符串转JsonArray对象
	 * 
	 * @Description: TODO
	 * @param @param strJson
	 * @param @return
	 * @return JsonObject
	 * @throws
	 * @author caowei
	 * @date 2015年12月28日
	 */
	public static JsonArray String2JsonArray(String strJson) {
		JsonParser jsonParser = new JsonParser();
		return jsonParser.parse(strJson).getAsJsonArray();
	}

	/**
	 * Json字符串转JsonObject对象
	 * 
	 * @Description: TODO
	 * @param @param strJson
	 * @param @return
	 * @return JsonObject
	 * @throws
	 * @author caowei
	 * @date 2015年12月28日
	 */
	public static JsonObject String2JsonObject(String strJson) {
		JsonParser jsonParser = new JsonParser();
		strJson = strJson.replace("[", "");
		strJson = strJson.replace("]", "");
		return jsonParser.parse(strJson).getAsJsonObject();
	}

	private static <T> Map<String, Object> EntToMap(Object model, Class<T> t,
			Map<String, Object> map) {
		try {
			Field[] fields = t.getDeclaredFields();
			if (fields.length > 0 && map == null)
				map = new HashMap<String, Object>();
			for (Field f : fields) {
				String name = f.getName();
				name = name.substring(0, 1).toUpperCase() + name.substring(1); // 将属性的首字符大写，方便构造get，set方法
				Method m = model.getClass().getMethod("get" + name);
				String value = String.valueOf(m.invoke(model));
				if (map != null && value != null)
					map.put(f.getName(), value);
				else
					map.put(f.getName(), "");
			}
			if (t.getSuperclass() != null) {
				EntToMap(model, t.getSuperclass(), map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	/**
	 * 实体类转成Map对象
	 * 
	 * @param model
	 * @return
	 */
	public static <T> Map<String, Object> Entity2Map(Object model) {
		Map<String, Object> map = null;
		try {
			map = EntToMap(model, model.getClass(), map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	private <T> JsonObject EntToObj(Object model, Class<T> t, JsonObject jsonObj) {
		try {
			Field[] fields = t.getDeclaredFields();
			if (fields.length > 0 && jsonObj == null)
				jsonObj = new JsonObject();
			for (Field f : fields) {
				String name = f.getName();
				name = name.substring(0, 1).toUpperCase() + name.substring(1); // 将属性的首字符大写，方便构造get，set方法
				Method m = model.getClass().getMethod("get" + name);
				String value = String.valueOf(m.invoke(model));
				if (jsonObj != null && value != null)
					jsonObj.addProperty(f.getName(), value);
				else
					jsonObj.addProperty(f.getName(), "");
			}
			if (t.getSuperclass() != null) {
				EntToObj(model, t.getSuperclass(), jsonObj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonObj;
	}

	/**
	 * 实体转为Json对象
	 * 
	 * @param model
	 * @return
	 */
	public <T> JsonObject Entity2JsonObject(Object model) {
		JsonObject jsonObject = null;
		try {
			jsonObject = EntToObj(model, model.getClass(), jsonObject);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonObject;
	}
}