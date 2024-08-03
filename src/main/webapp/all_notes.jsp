<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.entities.Note" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="navbar.jsp" %>
    <br>
    <h1 class="text-uppercase">All Notes :</h1>
    
    <div class="row">
    
    <div class="col-12">
    
    <%
    Session s = null;
    try {
        s = FactoryProvider.getFactory().openSession();
        Query q = s.createQuery("from Note");
        List<Note> list2 = q.list();

        for (Note note : list2) {
           %>
           
           <div class="card mt-4" >
  <img src="img/pencil.png"  style="max-width: 100px;" class="card-img-top pl-4 pt-4" alt="...">
  <div class="card-body px-5">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
  </div>
</div>
           
           <%
        }
    } catch (Exception e) {
        // Log the full stack trace to server logs
        e.printStackTrace();
        
        // Display a user-friendly error message
        out.println("<div class='alert alert-danger'>");
        out.println("<strong>Error:</strong> An unexpected error occurred while fetching the notes.");
        out.println("</div>");
        
        // Optionally display the exception message for debugging purposes
        out.println("<div class='alert alert-warning'>");
        out.println("<strong>Exception Message:</strong> " + e.getMessage());
        out.println("</div>");
    } finally {
        if (s != null) {
            s.close();
        }
    }
%>
    
    
    </div>
    </div>
</div>


</body>
</html>
