package controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import action.CommandAction;
//@WebServlet("/ControllAction")
public class ControlAction extends HttpServlet {
	//private static final long serialVersionUID = 1L;
    private Map commandMap = new HashMap();
	
    public void init(ServletConfig config) throws ServletException {
    	String props= config.getInitParameter("propertyConfig");
    	
    	Properties pr= new Properties();
    	FileInputStream f = null;
    	
    	try{
    		f = new FileInputStream(props);
    		
    		pr.load(f);
    		
    	}catch(Exception e){
    		throw new ServletException(e);
    	}finally{
    		if(f!=null) try{f.close();}catch(IOException ex){}
    	}
    	
    	Iterator keyiter = pr.keySet().iterator();
    	
    	while(keyiter.hasNext()){
    		String command = (String)keyiter.next();
    		
    		String className=pr.getProperty(command);
    		
    		try{
    			Class commandClass = Class.forName(className);
    			
    			Object commandInstance = commandClass.newInstance();
    			
    			commandMap.put(command, commandInstance);
    			
    		} catch (ClassNotFoundException e) {
                throw new ServletException(e);
            } catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            }
    	}
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request,response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	requestPro(request,response);
	}
    
    private void requestPro(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
    	// 여기서 처리
    	// 현재문제점 include 코드가 실행됨으로 원하는 notice.do 가 아닌 main.jsp 를 반환해서 이곳에 옴.. ㅡㅡ..
    	String view =null;
    	CommandAction com=null;
    	
    	try{
    		String command=request.getRequestURI();
    		
    		System.out.println(request.getRequestURI());
    		System.out.println(request.getContextPath());
    		
    		if(command.indexOf(request.getContextPath())==0){
    			command=command.substring(request.getContextPath().length());
    			System.out.println("수정한Command="+command);
    		}
    		
    		com=(CommandAction)commandMap.get(command);
    		System.out.println("com="+com);
    		// Action 불러오는 코드
    		view=com.requestPro(request,response);
    		System.out.println("view="+view);
    	}catch(Throwable e){
    		throw new ServletException(e);
    	}
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher(view);
    	dispatcher.forward(request, response);
    	System.out.println("forward 후");
    }

}
