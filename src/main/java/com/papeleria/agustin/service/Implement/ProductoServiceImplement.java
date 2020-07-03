package com.papeleria.agustin.service.Implement;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.papeleria.agustin.Exceptions.ProductoExceptions;
import com.papeleria.agustin.model.Producto;
import com.papeleria.agustin.repository.ProductoRepository;
import com.papeleria.agustin.service.ProductoService;

@Service
public class ProductoServiceImplement implements ProductoService {

	private static final Logger log = Logger.getLogger(ProductoServiceImplement.class);

	@Autowired
	private ProductoRepository productoRepository;

	@Override
	public void guardar(Producto producto) throws ProductoExceptions {
		StringBuilder mensaje = new StringBuilder();
		try {
			if (producto.getNombre_producto() == null || producto.getPrecio_venta() <= 0
					|| producto.getStock_minimo() <= 0 || producto.getStock_actual() <= 0
					|| producto.getCod_barra() == null || producto.getDescripcion() == null) {
				log.warn("Algunos datos de producto vienen vacios o con 0 para su registro en BD");
				// Genera el error dentro de la ejecucion
				throw new ProductoExceptions(
						"EXISTEN ATRIBUTOS VACIOS NO SE PUEDE GUARDAR REGISTRO EN LA BD-> PRODUCTO");
			} else {
				productoRepository.save(producto);
			}
		} catch (ProductoExceptions e) {
			mensaje.append("NO SE PUDO GUARDAR EL PRODUCTO ERROR INTERNO").append(e.getMessage());
			log.error("ERROR NO SE PUDO REGISTRAR NADA");
			throw new ProductoExceptions(e.getMessage());
		}

	}

	@Override
	public List<Producto> listarTodosProductos() {
		return productoRepository.findAll();
	}

	@Override
	public void eliminar(Producto producto) throws ProductoExceptions {
		productoRepository.delete(producto);
	}


}
