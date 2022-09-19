package com.Helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryMaker {
   public static SessionFactory factory;
   public static SessionFactory getFactory()
   {
	   if (factory==null)
	   {
		   factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	   }
	return factory;
	   
   } 
   public void closefactory() {
	   if(factory.isOpen()) {
		   factory.close();
	   }
	   
   }
   
}
