<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import=" org.hibernate.*"%>
<%@page import=" java.util.*"%>
<%@page import="com.Helper.*"%>
<%@page import=" com.entries.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="All_js_css.jsp"%>
<meta charset="UTF-8">
<title>All Notes....</title>
</head>
<body>
	<div class="container ">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">....All Notes....</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryMaker.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-5">
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px"
						src="image/sticky-notes.png" alt="Card image cap">
					<div class="card-body text-center">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p ><b class="text-primary"><%=note.getAddDate() %></b></p>
						<div class="container text-center mt-2">
							<a href="Edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a> 
							<a href="Deleteservelet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>

						</div>
					</div>
				</div>

				<%
				}

				s.close();
				%>
			</div>
		</div>

	</div>
</body>
</html>