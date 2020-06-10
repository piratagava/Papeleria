package com.papeleria.agustin.ProductoController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		} catch (Exception e) {
			System.out.print("ERROR EN GUARDAR POR "+ e);
			return false;
		}
		
	}
	
}
