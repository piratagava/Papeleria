package com.papeleria.agustin.service;

import java.util.List;

import com.papeleria.agustin.Exceptions.ProductoExceptions;
import com.papeleria.agustin.model.Producto;

public interface ProductoService {
			
	public void guardar(Producto producto) throws ProductoExceptions;
	
	public List<Producto> listarTodosProductos();
	
	public void eliminar(Producto producto) throws ProductoExceptions;
}
