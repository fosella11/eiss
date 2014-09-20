
	<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
		<title>Bienvenido G+</title>

	<link href="${pageContext.request.contextPath}/resources/css/est_pantlogeo.css" rel="stylesheet" >
	
	
	</head>
	<body>
			<div id="panelsup">
				<center><H1><u>Bienvenido a su panel de control</u><br></H1></center>
			
			  Nombre: ${ nombreModel}<br>
			Apellido: ${ apellidoModel}<br>
					<br>
			</div>		
					
		<table id="Table_02" width="50" height="400" border="20" cellpadding="10" cellspacing="0">
			<tr>
				<td colspan="2" width="101" height="31">
				
					<ul id="list">
						<li hspace="12"><a href="http://localhost:8080/onlinestore/productList.htm">Lista de PRODUCTOS</a></li><br><br>
						<li hspace="12"><a href="http://localhost:8080/onlinestore/productList.htm">Lista de PROVEEDORES</a></li><br><br>
						<li hspace="12"><a href="http://localhost:8080/onlinestore/productList.htm">Lista de CATEGORIAS</a></li><br><br>
						<li hspace="12"><a href="http://localhost:8080/onlinestore/productList.htm">SALIR</a></li><br><br>
					</ul>
				</td>
				<td>
					
				</td>
			</tr>	
		</table>
			
			
			
</body>
</html>