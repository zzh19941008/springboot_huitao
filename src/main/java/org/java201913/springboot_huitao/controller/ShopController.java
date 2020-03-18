package org.java201913.springboot_huitao.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.java201913.springboot_huitao.pojo.Shop;
import org.java201913.springboot_huitao.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop")
public class ShopController {

	@Autowired
	private ShopService ss;
	
	//查看全部商品
	@RequestMapping("showall")
	public String showAll(HttpServletRequest request){
		List<Shop> list=ss.showAll();
		request.setAttribute("list", list);
		return "index";
	}
	
	
	//商品添加的controller方法
	@RequestMapping("insert")
	public String insert(Shop s){
		System.out.println(s);
		int i=ss.insert(s);
		//添加完毕，重定向到查询的controller方法，执行查询操作，
		return "redirect:/shop/showall";
	}
	
	
	//基于id删除
	@RequestMapping("delete")
	public  String delete(int id){
		int i=ss.deleteByid(id);
		//删除完毕，重定向到查询的controller方法，执行查询操作，
		return "redirect:/shop/showall";
	}
}
