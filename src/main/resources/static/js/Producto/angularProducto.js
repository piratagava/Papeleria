
var app = angular.module('producto', ['datatables','ngResource']);
app.controller("controlador", ["$scope", "$http", function ($scope, $http) {


	var almacenaProducto = $scope.producto = {};
	console.log(almacenaProducto);

	$scope.guardar = function() {
		// variables para hacer validaciones no campos vacios		
		var nombreProducto = document.getElementById("txtProductoName").value;		
		var precioProducto = document.getElementById("txtProductoPrecio").value;
		var stockMinimoProducto = document.getElementById("txtProductoStockMinimo").value;
		var stockActualProducto = document.getElementById("txtProductoStockActual").value;
		var codeBarraProducto = document.getElementById("txtProductoCodeBarra").value;
		var descripcionProducto = document.getElementById("txtProductoDescripcion").value;	
		
		var validado= validarDatosProducto(nombreProducto, precioProducto,stockMinimoProducto,stockActualProducto,codeBarraProducto,descripcionProducto);
				
		if(validado==1){			
			$http.post("guardarProducto",almacenaProducto).then(function onSuccess(response) {
			    /* Handle success
			    var data = response.data;
			    console.log(data)
			    var status = response.status;
			    console.log(status)
			    var statusText = response.statusText;
			    console.log(statusText)
			    var headers = response.headers;
			    console.log(headers)
			    var config = response.config;
			    console.log(config)
			    */
				alertify.notify("Se Registro Correctamente", "success",5, null);
	       		 $("#productoForm")[0].reset();	       		 
	       		 //location.reload(true);
	       		
	       		
			  }).
			  catch(function onError(response) {	       	
	       		 if(response==false){        	 
		        	 alertify.notify('Se genero error interno intente mas tarde','error',5, null);
		       		}
			  });
					
		}else{
			alertify.notify('Porfavor Asegurate llenar los campos correctamente','error',7, null);
		}
	}
	
	//funcio para validar campo por campo el form
	function validarDatosProducto(nombreProducto,precioProducto,stockMinimoProducto,stockActualProducto,codeBarraProducto,descripcionProducto) {		
		//variable binary de inicio	
		var valido=64;
		
         if (nombreProducto.length > 0 ) {
             let validaNombre = /^[A-Z\u00C0-\u00DCa-z\u00E0-\u00FC0-9\s]{1,99}$/                         
             let esValido = validaNombre.exec(nombreProducto);                                     
             if (esValido == null || nombreProducto.length == 0 || /^\s+$/.test(nombreProducto)) {
            	 alertify.notify('Nombre del Producto es incorrecto','error',3, null);            	 
             }else {
            	 //recorre en binary a la derecha uno para posicionar en otro estado (32) test no acepte espacios todo en blanco
            	 valido >>= 1;
             }
         }
         
         // precioProducto ^\d+(\.\d{1,2})?$
         if(precioProducto.length > 0 ){
        	 var validaPrecio = /^\d+(\.\d{1,2})?$/         	
             let esValido = validaPrecio.exec(precioProducto);        	 
        	 if(esValido == null || precioProducto <=0 ){        		 
        		 alertify.notify('Precio del Producto es Incorrecto','error',3, null);
        	 }else{
        		 valido >>=1;
        	 }        		                      	
         }
         
      // stockMinimoProducto ^[0-9]{1,5}$
         if(stockMinimoProducto.length > 0 ){
        	 var validaStockMinimo = /^[0-9]{1,5}$/         	
             let esValido = validaStockMinimo.exec(stockMinimoProducto);        	 
        	 if(esValido == null || stockMinimoProducto <=0 ){        		 
        		 alertify.notify('Stock Minimo del Producto es Incorrecto','error',3, null);
        	 }else{
        		 valido >>=1;
        	 }        		                      	
         }
         
         
         // validaStockActual ^[0-9]{1,5}$ Cifra de 1 a 5 dígitos
         if(stockActualProducto.length > 0 ){
        	 var validaStockActual = /^[0-9]{1,5}$/         	
             let esValido = validaStockActual.exec(stockActualProducto);        	 
        	 if(esValido == null || stockActualProducto <=0 ){        		 
        		 alertify.notify('Stock Actual del Producto es Incorrecto','error',3, null);
        	 }else{
        		 valido >>=1;
        	 }        		                      	
         }
         
         // codeBarraProducto
         if(codeBarraProducto.length > 0 ){
        	 var validaCodeBarra = /^[0-9]{1,8}$/         	
             let esValido = validaCodeBarra.exec(codeBarraProducto);        	 
        	 if(esValido == null || codeBarraProducto <=0 ){        		 
        		 alertify.notify('Codigo de Barra del Producto es Incorrecto','error',3, null);
        	 }else{
        		 valido >>=1;
        	 }        		                      	
         }
         	
         // descripcionProducto
         if (descripcionProducto.length > 0 ) {
             let validaDescripcion = /^[A-Z\u00C0-\u00DCa-z\u00E0-\u00FC0-9\s]{1,99}$/                         
             let esValido = validaDescripcion.exec(descripcionProducto);                                     
             if (esValido == null || descripcionProducto.length == 0 || /^\s+$/.test(descripcionProducto)) {
            	 alertify.notify('Descripcion del Producto es Incorrecto','error',3, null);            	 
             }else {
            	 valido >>= 1;
             }
         }         
         return valido;                       
	}
	
	
	//listar Productos
	$http.get("listaProducto").then(function(response) {
		var listaProducto= $scope.productos = response.data;
		console.log(listaProducto)			
	  });
	
	$(document).ready( function () {
    $('#tablaProductos').DataTable();
	} );
		
	
	$scope.eliminarProducto = function (id_producto) {
		
		let confirm = alertify.confirm('Eliminar Producto','Desea eliminar el registro ?', null, null).set('labels', {
					ok : 'Si',
					cancel : 'Cancelar'
				});
			confirm.set({
			transition : 'slide'
		});

		confirm.set('onok', function() { //llamamos el boton positivo de confirmacion					 
			var registra = $scope.productos = {};			
			var idProducto = id_producto;							
			registra.id_producto = idProducto;
			
			$http.post("eliminarProducto",registra).then(function onSuccess(response) {			
				alertify.notify("Se Elimino Correctamente el Producto", "success",5, null);									       	
			  }).catch(function onError(response) {
	       		alertify.notify('Se genero error interno en la red','error',5, null);	 		       		
			  });
			
		});//termina boton positivo de confirmacion

		confirm.set('oncancel', function() { //llama al pulsar botón negativo
			alertify.error('Cancelo eliminar su registro', 3);

		});
	}
	

}]);

