package org.java201913.springboot_huitao.service;

import java.util.Date;
import java.util.List;

import org.java201913.springboot_huitao.mapper.ShopMapper;
import org.java201913.springboot_huitao.pojo.Shop;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopService {

	@Autowired
	private ShopMapper sm;
	
	public List<Shop> showAll(){
		return sm.selectByExample(null);
	}
	
	
	public int insert(Shop s){
		Date d =new Date();
		s.setSaddtime(d);
		Long l=d.getTime();
		s.setScode(l.toString());
		return sm.insertSelective(s);
	}
	
	
	//基于id删除
	public  int deleteByid(int id){
		return sm.deleteByPrimaryKey(id);
	}
}
