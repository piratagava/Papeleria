<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app="producto" data-ng-controller="controlador">
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/Vistas/include.jsp"%>
<%@ include file="/WEB-INF/Vistas/bootstrap.jsp"%>
<%@ include file="/WEB-INF/Vistas/angular.jsp"%>
<%@ include file="/WEB-INF/Vistas/menu.jsp"%>
<%@ include file="/WEB-INF/Vistas/notificaciones.jsp"%>
<%@ include file="/WEB-INF/Vistas/dataTable.jsp"%>

<title>Producto</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div class="contenedor">
		<br>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" data-whatever="@mdo">RegistrarProducto</button>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Nuevo Producto</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					
					<div class="modal-body">
						<form>
						
							<div class="form-group">
								<label for="recipient-name" class="col-form-label">Nombre del Producto:</label>
								<input type="text" class="form-control" id="recipient-name" data-ng-model="producto.nombre_producto" required="required">
							</div>
							
							<div class="form-group">
								<label for="recipient-price" class="col-form-label">Precio del Producto:</label>
								<input type="number" min="1" class="form-control" id="recipient-price" data-ng-model="producto.precio_venta" required="required"> 
							</div>
							
							<div class="form-group">
								<label for="recipient-stock_minimo" class="col-form-label">Stock Minimo del Producto:</label>
								<input type="number" min="1" class="form-control" id="recipient-stock_minimo" data-ng-model="producto.stock_minimo" required="required">  
							</div>
							
							<div class="form-group">
								<label for="recipient-stock_actual" class="col-form-label">Stock Actual del Producto:</label>
								<input type="number" min="0" class="form-control" id="recipient-stock_actual" data-ng-model="producto.stock_actual" required="required"> 
							</div>
							
							
							<div class="form-group">
								<label for="recipient-cod_barra" class="col-form-label">Code Barra del Producto:</label>
								<input type="text" min="0" class="form-control" id="recipient-cod_barra" data-ng-model="producto.cod_barra" required="required"> 
							</div>
							
							
													
							<div class="form-group">
								<label for="recipient-descripcion" class="col-form-label">Descripcion del Producto:</label>
								<textarea class="form-control" id="recipient-descripcion" data-ng-model="producto.descripcion" required="required"></textarea> 
							</div>
													
							
						</form>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						<button type="submit" class="btn btn-primary" data-ng-click="guardar()">Guardar Producto</button>
					</div>
					
				</div>
			</div>
		</div>

	</div>


	<script src="js/Producto/angularProducto.js"></script>
	
	
</body>
</html>