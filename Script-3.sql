create table cliente(
	rut varchar(12) primary key,
	nombre varchar(30) not null,
	giro varchar(30) not null,
	direccion varchar(30) not null,
	ciudad varchar(30) not null,
	telefono varchar(30) not null
);

create table venta( 
	numerofactura integer primary key,
	fechaventa date not null,
	total integer not null,
	cliente_rut varchar(12) not null references cliente(rut)
);

create table detalleventa(
	id integer primary key,
	cantidad integer not null,
	descripcion varchar(30) not null,
	unitario integer not null,
	venta_numerofactura integer not null references venta(numerofactura)
);

create table proveedor(
	rut varchar(12) primary key,
	nombre varchar(30) not null
);

create table compra( 
	numerofactura integer primary key,
	fecha date not null,
	total integer not null,
	proveedor_rut varchar(12) not null references proveedor(rut)
);

create table detallecompra(
	id integer primary key,
	cantidad integer not null,
	descripcion varchar(30) not null,
	unitario integer not null,
	compra_numerofactura integer not null references compra(numerofactura)
);


INSERT INTO Cliente (Rut, Nombre, Giro, Direccion, Ciudad, Telefono) VALUES ('123456-k', 'Cecil', 'Carpintero', 'San Diego 1314', 'Santiago', '555666');
INSERT INTO Cliente (Rut, Nombre, Giro, Direccion, Ciudad, Telefono) VALUES ('456789-0', 'Salim', 'Militar', 'Sierra Leona 2489', 'Puerto Montt', '555888');
INSERT INTO Cliente (Rut, Nombre, Giro, Direccion, Ciudad, Telefono) VALUES ('789123-8', 'Dafne', 'Panadero', 'Santa Rosa 0284', 'Arica', '555000');

INSERT INTO Venta (NumeroFactura, FechaVenta, Total, Cliente_Rut) VALUES (1, '2020-01-15', 10000, '789123-8');
INSERT INTO Venta (NumeroFactura, FechaVenta, Total, Cliente_Rut) VALUES (2, '2020-06-18', 15000, '789123-8');
INSERT INTO Venta (NumeroFactura, FechaVenta, Total, Cliente_Rut) VALUES (3, '2020-07-05', 20000, '456789-0');
INSERT INTO Venta (NumeroFactura, FechaVenta, Total, Cliente_Rut) VALUES (4, '2020-09-20', 18000, '123456-k');
INSERT INTO Venta (NumeroFactura, FechaVenta, Total, Cliente_Rut) VALUES (5, '2020-12-29', 8000, '123456-k');

INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (1, 4, 'Pichanga surtida', 250, 1);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (2, 5, 'Lomo liso', 1800, 1);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (3, 30, 'Jam�n de cerdo', 500, 2);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (4, 3, 'Jam�n de pavo', 1000, 3);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (5, 6, 'Queso de cabeza', 500, 3);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (6, 14, 'Guachalomo', 1000, 3);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (7, 18, 'Chicarr�n', 100, 4);
INSERT INTO DetalleVenta (Id, Cantidad, Descripcion, Unitario, Venta_NumeroFactura) VALUES (8, 4, 'Tocino', 2000, 5);

INSERT INTO Proveedor (Rut, Nombre) VALUES ('123456-1', 'Cecinas Mustaf�');
INSERT INTO Proveedor (Rut, Nombre) VALUES ('987654-9', 'Faena San Nicolas');

INSERT INTO Compra (NumeroFactura, fecha, Total, Proveedor_Rut) VALUES (1, '2020-01-12', 50000, '987654-9');
INSERT INTO Compra (NumeroFactura, fecha, Total, Proveedor_Rut) VALUES (2, '2020-02-12', 80000, '123456-1');
INSERT INTO Compra (NumeroFactura, fecha, Total, Proveedor_Rut) VALUES (3, '2020-08-12', 70000, '987654-9');
INSERT INTO Compra (NumeroFactura, fecha, Total, Proveedor_Rut) VALUES (4, '2020-09-18', 50000, '123456-1');

INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (1, 2, 'Cerdo Entero', 10000, 1);
INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (2, 1, 'Vaca entera', 30000, 1);
INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (3, 1, 'Surtido de cecinas', 80000, 2);
INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (4, 1, 'Surtido de cecinas', 70000, 3);
INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (5, 3, 'Cerdo Entero', 9000, 4);
INSERT INTO DetalleCompra (Id, Cantidad, Descripcion, unitario, Compra_NumeroFactura) VALUES (6, 1, 'Vasa entera', 32000, 4);

