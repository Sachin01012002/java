<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            padding: 50px;
        }
    </style>
    <body>
        <%@ page import="java.util.*,Emp.*,EmpDao.*" %>  
        <%  
        String spageid=request.getParameter("page");  
        int pageid=Integer.parseInt(spageid);  
        int total=5;
        if(pageid!=1){  
            pageid=pageid-1;  
            pageid=pageid*total+1;  
        }  
        List<Emp> list=EmpDao.getRecords(pageid,total);  
        out.print("<h1>Page No: "+spageid+"</h1>");  
        out.print("<table border='1' cellpadding='4' width='60%'>");  
        out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>");  
        for(Emp e:list){  
            out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getSalary()+"</td></tr>");  
        }  
        out.print("</table>");  
        %>  
        <a href="view.jsp?page=1">1</a>  
        <a href="view.jsp?page=2">2</a>  
        <a href="view.jsp?page=3">3</a>
    </body>
</html>