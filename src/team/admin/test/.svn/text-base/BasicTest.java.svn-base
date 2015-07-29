package team.admin.test;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.admin.service.basic.IBasicService;

public class BasicTest {

	private static IBasicService service;
		
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		try {
			ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
			service=(IBasicService) ac.getBean("basicService");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void test(){
		
	}
}
