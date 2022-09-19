<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import=" org.hibernate.*"%>
    <%@page import="com.Helper.*"%>
<%@page import=" com.entries.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file="All_js_css.jsp" %> 
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <%@include file="navbar.jsp" %>
      <br>
      <h1>.... Edit your Note ...</h1><br>
      <%
      int noteId =Integer.parseInt(request.getParameter("note_id").trim());
      Session s = FactoryMaker.getFactory().openSession();
	
		Note note=(Note)s.get(Note.class,noteId);
      %>
    <form action="UpdateServelet" method="post">
    
    <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="title">Note Tittle</label> <input name="title" required
					type="text" class="form-control" id="tittle"
					aria-describedby="emailHelp" placeholder="Enter your tittle" value=" <%=note.getTitle()%>" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your Note content" class="form-control"
					style="height: 300px;"><%=note.getContent() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your Note</button>
			</div>
		</form>
    </div>
</body>
</html>