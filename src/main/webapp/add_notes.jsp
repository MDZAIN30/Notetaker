<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
  <div   class="container-fluid p-0 m-0">
    
    <%@include file="navbar.jsp" %>
    
    </div>
    
    <br>
    
    <h2>Please fill your note detail</h2>
    
    
    <!--This is add forms  -->
    
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input
    name="title"
     required type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp" 
    placeholder="Enter here"
    style="width: 740px"
    
    >
    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
    <label for="content">Note Contents</label>
    
    <textarea 
    name="content"
    id="content"
     required placeholder="Enter your content here" 
     class="form-control"
     style="height:200px; width: 740px"
     
     ></textarea>
  </div>
  <div class="container text-center">
  <button type="Add" class="btn btn-primary">Add</button>
  
  </div>
  
    

</form>
</body>
</html>