<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="error_ex.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="All_js_css.jsp"%>
</head>
<body>
	<div class="container ">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>
			...... Write your note ......
		</h1>
		<br>
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Tittle</label> <input name="title" required
					type="text" class="form-control" id="tittle"
					aria-describedby="emailHelp" placeholder="Enter your tittle" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your Note content" class="form-control"
					style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>


</body>
</html>