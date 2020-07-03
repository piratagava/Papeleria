package com.papeleria.agustin.Exceptions;

import org.apache.commons.lang.exception.NestableException;

public class ProductoExceptions extends NestableException {

	private static final long serialVersionUID = 1L;

	public ProductoExceptions() {
		super();
	}

	public ProductoExceptions(String msg, Throwable cause) {
		super(msg, cause);
	}

	public ProductoExceptions(String msg) {
		super(msg);
	}

	public ProductoExceptions(Throwable cause) {
		super(cause);
	}

}
