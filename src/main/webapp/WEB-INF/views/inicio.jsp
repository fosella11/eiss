<!DOCTIPE HTML>
<html lang="es-AR">
<head>
	<title>Ferreteria G+</title>
<link href="${pageContext.request.contextPath}/resources/css/est_principal_inicio.css" rel="stylesheet" >


</head>
<body> 
	<header>
	
		<center>
		
    <img src="${pageContext.servletContext.contextPath}/resources/images/cabecera.png"/>			
		</center>
	</header>
<center>
		<ul id= menu>
			<li><a href="inicio.htm">Home</a></li>
			
			<li><a href="#">Consultas</a></li>
			
				<div id=ocultar >
					<%@include file="/common/taglibs.jsp"%>
				</div>

			<li>			<a href="<c:url value="/productList.htm"/>">Productos</a>
</li>
<li><a href="<c:url value="/irFormulario.htm"/>">login</a></li>
<li><a href="#">Contacto</a></li>

</ul>
</center>
<div id="noticias"  style=" border-radius: .3em; color: white;">
		<h2>
			Noticias
		</h2>
		<HR>
		<table  cellpadding="20" cellspacing="3" border=4 width="100%" margin="0.5" style="text-align: left; border-radius: .3em; max-height: 20px; ">
			<tr border=3 margin=5 id="publicidad">
				<th>
						<a href="http://www.stihl.com.ar/podadoras-de-altura.aspx" target="_blank">
						<h4><u>Podadoras STHIL</u></h4>
						<p>Cuando hay que trabajar en lo alto de los arboles, <br> las podadoras de altura STIHL demuestran todo su poder. <br>Con estas maquinas trabajara hasta <br>en lo mas alto del arbol, con toda comodidad <br>y desde el suelo, ya que pueden cortar <br> ramas de hasta aprox. 5 m de altura <br>(dependiendo del modelo).
						</p></a>
				</th>
				
				<th>
					<a href="http://www.tiemposur.com.ar/nota/74910-comenz%C3%B3-capacitaci%C3%B3n-en-seguridad-e-higiene-laboral-para-emprendedores-de-la" target="_blank"><h4>Curso Seguridad Laboral</h4><img src="${pageContext.servletContext.contextPath}/resources/images/publicidad.gif" text= white WIDTH=200 HEIGTH= 200></a>
				</th>
			</tr>

			<tr id="publicidad">
				<th>
					<h4>OFERTA!! Paint Zoom >> $560</h4>
					<a href="images/paintzoom.jpg"><img src="${pageContext.servletContext.contextPath}/resources/images/paintzoom.jpg" WIDTH=250 HEIGTH= 250></a>
				</th>

				<th>
					<a href="http://www.argentina.bosch.com.ar/es/ar/newsroom_2/topics_2/sierrascircularesexpertfor/sierras_circulares_expert_for.html" target="_blank">
					<h4><u>Sierras Bosch</u></h4>
					<p>Llegaron los discos de sierra de maxima precision<br> y economia, en todos los cortes. <br> Con dientes de metal duro, producidos con aleaciones de metal <br> de alta calidad, cuerpo de acero <br> de primera clase y revestimiento exclusivo <br> contra corrosion.
					</p></a>
				</th>
			</tr>
		</table>
	</div>

	<footer>
			<h1>
				Ferreteria G+  -  Rivadavia 528  -  Telefono: 0351-234736
			</h1>	
	</footer>

</body>
</html>

