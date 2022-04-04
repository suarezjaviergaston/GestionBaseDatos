
/* Carga de articulos */

INSERT INTO negocio.articulos (descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo) VALUES ('Dulce de Leche', 'LACTEOS', 430, 500, 25, 5, 50);
INSERT INTO negocio.articulos (descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo) VALUES ('Gini 1.25 lts', 'BEBIDAS', 100, 150, 12, 5, 30);
INSERT INTO negocio.articulos (descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo) VALUES ('Manaos Cola 2.25', 'BEBIDAS', 150, 200, 40, 20, 100);
INSERT INTO negocio.articulos (descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo) VALUES ('Cuadril', 'CARNICERIA', 600, 900, 300, 50, 300);
INSERT INTO negocio.articulos (descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo) VALUES ('Ariel 3Lts', 'LIMPIEZA', 750, 1150, 10, 5, 20);

/* carga de clientes */

INSERT INTO negocio.clientes (nombre, apellido, estado_civil, cuit, direccion, telefono, email, comentarios) VALUES ('Javier', 'Suarez', 'CASADO', '20243350728', 'Condarco 215', '1165067007', 'jsuarez@sion.com', 'es un buen cliente');
INSERT INTO negocio.clientes (nombre, apellido, estado_civil, cuit, direccion, telefono, email) VALUES ('Leonardo', 'Sbaraglia', 'SOLTERO', '20193752408', 'Madame Curie 1940', '42275848', 'lsbaraglia@gmail.com');
INSERT INTO negocio.clientes (nombre, apellido, estado_civil, cuit, direccion, telefono, email) VALUES ('Violeta', 'Rivas', 'CASADO', '27142572483', 'Mejor Vida 434', '4666-3533', 'violetar@hotmail.com');
INSERT INTO negocio.clientes (nombre, apellido, estado_civil, cuit, direccion, telefono, email) VALUES ('Juan', 'Petruchi', 'VIUDO', '23045132439', 'Medrano 520', '1161632748', 'jcpetrucchi@infovia.com.ar');
INSERT INTO negocio.clientes (nombre, apellido, estado_civil, cuit, direccion, telefono, email) VALUES ('Claudia', 'Villafañe', 'VIUDO', '27816345924', 'Las Violetas 45', '1121658729', 'lamujerdeldiez@hotmail.com');

/* carga de facturas */

INSERT INTO negocio.facturas (letra, numero, fecha, monto, forma_de_pago, id_cliente) VALUES ('B', 1, current_date(), 2250, 'EFECTIVO', 1);
INSERT INTO negocio.facturas (letra, numero, fecha, monto, forma_de_pago, id_cliente) VALUES ('A', 1, current_date(), 2420, 'CHEQUE', 2);
INSERT INTO negocio.facturas (letra, numero, fecha, monto, forma_de_pago, id_cliente) VALUES ('B', 2, current_date(), 1150, 'TARJETA', 3);

/* carga de detalle */

INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (1, 1, 1, 500);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (1, 4, 1, 1350);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (1, 3, 2, 400);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (2, 2, 1, 150);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (2, 3, 1, 200);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (2, 4, 2, 2070);
INSERT INTO negocio.detalles (id_factura, id_articulo, cantidad, precio_unitario) VALUES (3, 5, 1, 1150);
