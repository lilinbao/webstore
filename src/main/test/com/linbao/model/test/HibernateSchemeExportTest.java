package com.linbao.model.test;

import static org.junit.Assert.fail;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

public class HibernateSchemeExportTest {

	public static LocalSessionFactoryBean localSessionFactory = null;
	public void test() {
		fail("Not yet implemented");
	}
	@BeforeClass
	public static void beforeClass(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		localSessionFactory = (LocalSessionFactoryBean) ctx.getBean("&sessionFactory");
	}
	@Test
	public void testSchemaEcport(){
		
		Configuration conf = localSessionFactory.getConfiguration();
		new SchemaExport(conf).create(true,true);
	}
	@AfterClass
	public static void destroy(){
		localSessionFactory.destroy();
	}
	

}
