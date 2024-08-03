<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div   class="container-fluid p-0 m-0">
    
    <%@include file="navbar.jsp" %>
    
    </div>
    
   <br>
   
   <h2>This is Edit page</h2>
   <% 
   
   int noteId = Integer.parseInt(request.getParameter("note_id"));

   Session s = FactoryProvider.getFactory().openSession();

   Note note = (Note) s.get(Note.class, noteId);
   
   
   %>
   
    <form action="UpdateNoteServlet" method="post">
  <div class="form-group">
  <input value="<%= note.getId()%> " name="NoteId" type="hidden">
    <label for="title">Note title</label>
    <input
    name="title"
     required type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter here"
    style="width: 740px"
    value="<%=note.getTitle() %>"
    
    >
    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
    <label for="content">Note Contents</label>
    
    <textarea 
    name="content"
    required id="content"
      placeholder="Enter your content here" 
     class="form-control"
     style="height:200px; width: 740px">
    <%=note.getContent()%>
     </textarea>
  </div>
  <div class="container text-center">
  <button type="Add" class="btn btn-success">Save your note</button>
  
  </div>
  
    

</body>
</html>