
var app = angular.module('producto', []);
app.controller('controlador', function($scope, $http) {

	var almacenaProducto = $scope.producto = {};
	console.log(almacenaProducto);

	$scope.guardar = function() {
		$http.post("guardarProducto", almacenaProducto)
			.success(function(resultado) {
				if (resultado == false) {
				alertify.notify('Se genero error interno','error', 2, null);
				} else {
				alertify.notify("Se Registro Correctamente","success");
				}
		})
	}
});
