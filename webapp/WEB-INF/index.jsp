<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Checkerboard</title>
		<link rel="stylesheet" type="text/css" href="css/checkerboard.css">
	</head>
	<body>
		<% String width = request.getParameter("width"); %>
		<% String height = request.getParameter("height"); %>
		<% Boolean switchColor = false; %>
		
		<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
		
		<table class="board">
			<% for(int i = 0; i < Integer.parseInt(height); i++) { %>
				<tr>
					<% for(int j = 0; j < Integer.parseInt(width); j++) { %>
						<% if(switchColor) { %>
							<td class="boxOne"></td>
						<% } %>
						<% if(!switchColor) { %>
							<td class="boxTwo"></td>
						<% } %>
						<% switchColor = !switchColor; %>
					<% } %>
					<% switchColor = !switchColor; %>
				</tr>
			<% } %>
		</table>
		
		
	</body>
</html>