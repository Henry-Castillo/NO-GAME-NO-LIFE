<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado General</title>
<sj:head />
<sb:head />
</head>

<body background="imagenes/f4.png" style="width: 120%">



	<s:form action="cons" theme="bootstrap">
		<s:url id="idcat" action="llenacombo" />
		<sj:select label="Categoria" name="p.idcategoria" list="lstCategoria"
			href="%{idcat}" listKey="idcategoria" listValue="descripcion"
			headerKey="-1" headerValue="Seleccione" cssClass="form-control" />




		<s:submit value="Listar" cssClass="btn btn-warning" />
		<a class="btn btn-primary" href="reporteGrafico" target="_blank">Reporte</a>
		<a class="btn btn-primary" href="reporteGrafico2" target="_blank">Estadistica</a>
		<a class="btn btn-danger" href="administrador.jsp">Volver</a>

	</s:form>

	<div class="container">
		<table class="table">

			<tr>
				<th></th>
				<th style="color: black; background-color: white;">Codigo Juego</th>
				<th style="color: black; background-color: white;">Nombre Juego</th>
				<th style="color: black; background-color: white;">Estado</th>
				<th style="color: black; background-color: white;">Codigo
					Categoria</th>
				<th style="color: black; background-color: white;">Stock</th>
				<th style="color: black; background-color: white;">Precio</th>

			</tr>
			<s:iterator value="lstProductos">
				<tr class="grilla_campo">
					<td><s:if test="estado == 0">
							<img width="120px" alt="" src="imagenes/productos/nohay.png">
						</s:if> <s:else>
							<img width="120px" alt=""
								src="imagenes/juegos/<s:property value="idprod"/>.png">
						</s:else></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="idprod" /></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="descripcion" /></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="estado" /></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="idcategoria" /></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="stock" /></td>
					<td style="color: darkred; font-family: fantasy;"><s:property
							value="precio" /></td>

					<!-- Hipervinculo HTML con struts -->
					<td><a href="buscar?codigo=<s:property value="idprod" />">
							<img alt="cargando" src="imagenes/iconos/edit1.png"
							onmouseover="src='imagenes/iconos/edit2.png'"
							onmouseout="src='imagenes/iconos/edit1.png'">
					</a></td>

					<td><a
						href="borra?p.idprod=<s:property value="idprod"/>&nombre=<s:property value="descripcion"/>">
							<img alt="" src="imagenes/iconos/eliminar.png" style="width: 8%;">

					</a></td>

				</tr>
			</s:iterator>
		</table>
	</div>


</body>
</html>