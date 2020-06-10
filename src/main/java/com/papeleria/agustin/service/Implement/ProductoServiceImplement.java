package com.papeleria.agustin.service.Implement;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.papeleria.agustin.model.Producto;
import com.papeleria.agustin.repository.ProductoRepository;
import com.papeleria.agustin.service.ProductoService;

@Service
public class ProductoServiceImplement implements ProductoService {

	private static final Logger log = Logger.getLogger(ProductoServiceImplement.class);

	@Autowired
	private ProductoRepository productoRepository;

	@Override
	public void guardar(Producto producto) {
		if(producto.getNombre_producto()==null || producto.getPrecio_venta()<0 || producto.getStock_minimo()<0 || producto.getStock_actual()<0 
				|| producto.getCod_barra()==null || producto.getDescripcion()==null){
			log.error("Existe Valores Vacios");
		}else {
			productoRepository.save(producto);	
		}
		
	}

}
