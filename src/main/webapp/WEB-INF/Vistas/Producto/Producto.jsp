<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app="producto" data-ng-controller="controlador">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/WEB-INF/Vistas/include.jsp"%>
<%@ include file="/WEB-INF/Vistas/bootstrap.jsp"%>
<%@ include file="/WEB-INF/Vistas/angular.jsp"%>
<%@ include file="/WEB-INF/Vistas/menu.jsp"%>
<%@ include file="/WEB-INF/Vistas/notificaciones.jsp"%>
<%@ include file="/WEB-INF/Vistas/dataTable.jsp"%>

<script src="js/Producto/angularProducto.js"></script>

<title>Producto</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div class="contenedor">
		<br>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" data-whatever="@mdo">Registrar Nuevo Producto</button>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Nuevo  Producto</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					
					<div class="modal-body">
						<form id="productoForm">
						
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">Nombre del Producto:</label>
								<input id="txtProductoName" type="text" class="form-control" placeholder="Nombre del Producto" data-ng-model="producto.nombre_producto" required="required" pattern="^[A-Z\u00C0-\u00DCa-z\u00E0-\u00FC0-9\s]{1,99}$">
							</div>
							
							<div class="form-group" id="contenedor-campos">
								<label for="recipient-price" class="col-form-label">Precio del Producto:</label>
								<input type="number" id="txtProductoPrecio" class="form-control" data-ng-model="producto.precio_venta" required="required" min="1" step="0.01" pattern="^\d+(\.\d{1,2})?$">								
							</div>
							
							<div class="form-group">
								<label for="recipient-stock_minimo" class="col-form-label">Stock Minimo del Producto:</label>
								<input type="number" id="txtProductoStockMinimo" class="form-control" data-ng-model="producto.stock_minimo" required="required" min="1" pattern="^[0-9]{1,5}$"> 
							</div>
							
							<div class="form-group">
								<label for="recipient-stock_actual" class="col-form-label">Stock Actual del Producto:</label>
								<input type="number" class="form-control" id="txtProductoStockActual" data-ng-model="producto.stock_actual" required="required" min="1" pattern="^[0-9]{1,5}$"> 
							</div>
							
							
							<div class="form-group">
								<label for="recipient-cod_barra" class="col-form-label">Code Barra del Producto:</label>
								<input type="text" class="form-control" id="txtProductoCodeBarra" data-ng-model="producto.cod_barra" required="required" pattern="^[0-9]{1,8}$"> 
							</div>
							
																				
							<div class="form-group">
								<label for="recipient-descripcion" class="col-form-label">Descripcion del Producto:</label>
								<input type="text" class="form-control" id="txtProductoDescripcion" data-ng-model="producto.descripcion" required="required" pattern="^[A-Z\u00C0-\u00DCa-z\u00E0-\u00FC0-9\s]{1,99}$"> 
							</div>
																				
						</form>						
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-primary" data-ng-click="guardar()">Guardar Producto</button>
					</div>
					
				</div>
			</div>
		</div>



	<div class="card-body">
		<table id="tablaProductos" class="clasic" datatable="ng">
				<thead>
					<tr>
						<th>Id Producto</th>
						<th>Nombre Producto</th>
						<th>Precio</th>
						<th>Stock Minimo</th>
						<th>Stock Actual</th>
						<th>Code Barra</th>
						<th>Descripción</th>
						<th>Actualizar</th>
						<th>Eliminar</th>
					</tr>
				</thead>
				
				<tbody>
					<tr data-ng-repeat="datoProducto in productos">
						<td>{{datoProducto.id_producto}}</td>
						<td>{{datoProducto.nombre_producto}}</td>
						<td>{{datoProducto.precio_venta}}</td>
						<td>{{datoProducto.stock_minimo}}</td>
						<td>{{datoProducto.stock_actual}}</td>
						<td>{{datoProducto.cod_barra}}</td>
						<td>{{datoProducto.descripcion}}</td>
						<td><button id="btndisable" type="submit" class="btn btn-outline-success" data-ng-click="enviar(datoProducto.id_producto,datoProducto.nombre_producto,
																									datoProducto.precio_venta,datoProducto.stock_minimo,datoProducto.stock_actual,
																									datoProducto.cod_barra,datoProducto.descripcion)">Actualizar</button></td>
						<td><button type="button" data-ng-click="eliminarProducto(datoProducto.id_producto)" class="btn btn-outline-danger custom-width">Eliminar</button></td>
					</tr>
				</tbody>
				
		</table>
			
	</div>
						
</div><!-- fin del contenedor -->
		
</body>
</html>