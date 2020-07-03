package com.papeleria.agustin.ProductoController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.papeleria.agustin.Exceptions.ProductoExceptions;
import com.papeleria.agustin.model.Producto;
import com.papeleria.agustin.service.ProductoService;

@Controller
public class ProductoController {
	
	
	@Autowired 
	private ProductoService productoService;

	@RequestMapping(value="/producto",method = RequestMethod.GET)
	public String HomeProducto() {
		return "Producto/Producto";
	}
	
	@RequestMapping(value="/guardarProducto",method = RequestMethod.POST)
	public @ResponseBody Boolean GuardarProducto(@RequestBody Producto producto) {
		try {
			productoService.guardar(producto);
			return true;
		} catch (ProductoExceptions e) {
			System.out.print("ERROR EN GUARDAR POR "+ e.toString());
			System.out.print("MENSAJE DE ERROR INTERNO NO SE GUARDO EL PRODUCTO "+ e.getMessage());
			return false;
		}	
	}
	
	@RequestMapping(value="/listaProducto", method = RequestMethod.GET)
	public @ResponseBody List<Producto> todosLosProductos() {
		try {
			List<Producto> listarTodos = productoService.listarTodosProductos();
			return listarTodos;
		} catch (Exception e) {
			System.out.print("ERROR EN LISTAR POR "+ e.toString());
			System.out.print("MENSAJE DE ERROR INTERNO NO SE PUDO LISTAR LOS PRODUCTOS "+ e.getMessage());
			return null;
		}		
	}
	
	@RequestMapping(value="/eliminarProducto", method = RequestMethod.POST)
	public @ResponseBody Boolean eliminarProducto(@RequestBody Producto producto) {
		try {
			 productoService.eliminar(producto);
			 return true;
		} catch (ProductoExceptions e) {
			return false;
		}
		
	}
	
}
