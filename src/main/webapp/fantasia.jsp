<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<sb:head />
<sj:head />

<link href="css/principal2.css" rel="stylesheet">

</head>

<header>
	<nav>
		<ul>
			<li id="linav"><a id="letra" href="principal.jsp">Inicio</a></li>


			<li id="linav"><a id="letra" href="carreras.jsp">Carreras</a></li>


			<li id="linav"><a id="letra" href="guerra.jsp">Guerra</a></li>


			<li id="linav"><a id="letra" href="lstFan">Fantasia</a></li>

			<li id="linav"><a id="letra" href="futbol.jsp">Futbol</a></li>
			<li id="navlogin"><a href="login.jsp"><img id="imglogin"
					alt="lol" src="imagenes/iconos/login.png"></img></a></li>

			<li id="ingreso"
				style="color: white; background-color: black; margin-top: 29px; margin-left: 5px;">Bienvenido
				${u.nombre} ${u.apellido}</li>
		</ul>
	</nav>
	<img style="margin-top: 15px; margin-left: 20px" id="imglogo" alt="lol"
		src="imagenes/iconos/gamestore.png"></img>



</header>

<img
	style="margin-top: 15px; margin-left: 20px; width: 95%; height: 70%;"
	alt="lol" src="imagenes/iconos/gamestore.png"></img>



<body>


	<s:actionerror theme="bootstrap" />
	<s:actionmessage theme="bootstrap" />
	<s:fielderror theme="bootstrap" />

	<div class="container"></div>

	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th style="color: black; background-color: white;">Juego</th>
				<th style="color: black; background-color: white;">Nombre del
					Juego</th>
				<th style="color: black; background-color: white;">Precio</th>
				<th style="color: black; background-color: white;">Stock</th>
			</tr>



			<s:iterator value="lstCar">
				<tr class="grilla_campo">



					<td><s:if test="estado == 0">
							<img width="120px" alt="" src="imagenes/productos/nohay.png">
						</s:if> <s:else>
							<img width="120px" alt=""
								src="imagenes/juegos/<s:property value="idprod"/>.png">
						</s:else></td>

					<td style="color: white;"><s:property value="descripcion" /></td>
					<td style="color: white;"><s:property value="precio" /></td>
					<td style="color: white;"><s:property value="stock" /></td>

					<td><a href="buscar?codigo=<s:property value="idprod"/>">

							<img alt="" src="img/edit1.png" onmouseover="src='img/edit2.png'"
							onmouseout="src='img/edit1.png'">

					</a></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	<a class="btn btn-primary" href="lstFan">Ver Juegos</a>

</body>

<div id="contenedor">
	<footer>
		<p>Nuestras redes</p>
		<a href="https://www.facebook.com"><img alt="lol"
			style="width: 40px; height: 40px;" src="imagenes/iconos/facebook.png"></a>
		<a href="https://www.youtube.com"><img alt="lol"
			style="width: 60px;" src="imagenes/iconos/youtube.png"></a>
	</footer>
</div>


</html>