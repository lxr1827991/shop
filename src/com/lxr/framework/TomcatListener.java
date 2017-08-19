package com.lxr.framework;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class TomcatListener implements ServletContextListener{


    /**
     * 监听web容器关闭
     */
   
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("web容器关闭");

    }

    /**
     * 监听web容器启动
     */
    
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("web容器启动");
        WebContext.WEB_ROOT =  sce.getServletContext().getRealPath("/");

    }

}