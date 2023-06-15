-- Tabla empresa
create table empresa(
	rut varchar(10) not null primary key,
	nombre varchar(120) not null,
	direccion varchar(120) not null,
	telefono varchar(15) not null,
	correo varchar(80) not null,
	web varchar(50) not null	
);

--Tabla Cliente
create table cliente (
	rut varchar(10) not null primary key,
	nombre varchar(120) not null,
	correo varchar(80) not null,
	direccion varchar(120) not null,
	celular varchar(15) not null,	
	alta char(1) not null	
);

--Tabla marca
create table marca (
	idmarca integer not null primary key,
	nombre varchar(120) not null
);

--Tabla tipovehiculo
create table tipovehiculo(
	idtipovehiculo integer not null primary key,
	nombre varchar(120) not null
);

--Tabla vehiculo
create table vehiculo(
	idvehiculo integer not null primary key,
	patente varchar(10) not null,
	marca varchar(20) not null,
	modelo varchar(20) not null,
	color varchar(15) not null,
	precio numeric(12) not null,
	frecuenciamantencion numeric(5) not null,
	marca_idmarca integer not null references marca(idmarca),
	tipovehiculo_idtipovehiculo integer not null references tipovehiculo(idtipovehiculo)	
);

--Tabla venta

create table venta(
	folio integer not null primary key,
	fecha date not null,
	monto numeric(12) not null,
	vehiculo_idvehiculo integer not null unique references vehiculo(idvehiculo),
	cliente_rut varchar(10) not null references cliente(rut)
);

--Tabla mantencion
	create table mantencion(
	idmantencion integer not null primary key,
	fecha date not null,
	trabajosrealizados varchar(1000) not null,
	venta_folio integer not null references venta(folio)
);
