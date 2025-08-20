-- Creación de la base de datos
Drop Database if exists DB_VentaZapatos; 
Create Database DB_VentaZapatos; 
Use DB_VentaZapatos; 

-- Clientes
Create table Clientes(
	codigoCliente int auto_increment,
	nit varchar(20) not null,
	nombreCliente varchar(100) not null,
	apellidoCliente varchar(100) not null,
	direccionCliente varchar(150),
	telefonoCliente varchar(20) not null,
	correoCliente varchar(200) not null,
	primary key PK_codigoCliente (codigoCliente)
);

-- Ventas
Create table Ventas(
	codigoVenta int auto_increment,
	fechaVenta date not null,
	totalVenta decimal(10, 2) not null,
	clienteID int,
	primary key PK_codigoVenta (codigoVenta),
	foreign key FK_clienteID (clienteID) references Clientes(codigoCliente)
);


-- --------------------------- Entidad Clientes ---------------------------
-- Agregar Cliente
Delimiter //
	Create procedure sp_AgregarCliente(
	in nit varchar(20),
	in nombreCliente varchar(100),
	in apellidoCliente varchar(100),
	in direccionCliente varchar(150),
	in telefonoCliente varchar(20),
	in correoCliente varchar(200))
		Begin
			Insert into Clientes(nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente)
				Values(nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente);
		End //
Delimiter ;
call sp_AgregarCliente('C/F', 'Público', 'General', 'Ciudad', '0000-0000', 'general@correo.com');
call sp_AgregarCliente('12345678-9', 'Ana', 'García', '123 Calle Principal', '1111-2222', 'ana.garcia@email.com');
call sp_AgregarCliente('98765432-1', 'Luis', 'Martínez', '456 Avenida Central', '3333-4444', 'luis.martinez@email.com');
call sp_AgregarCliente('55555555-5', 'Sofía', 'Pérez', '789 Boulevard Norte', '5555-6666', 'sofia.perez@email.com');
call sp_AgregarCliente('11223344-5', 'Carlos', 'López', '321 Calle del Sol', '7777-8888', 'carlos.lopez@email.com');
call sp_AgregarCliente('22334455-6', 'María', 'Fernández', 'Calle Luna 100', '9999-0000', 'maria.f@email.com');
call sp_AgregarCliente('33445566-7', 'José', 'Rodríguez', 'Avenida del Parque 200', '1234-5678', 'jose.r@email.com');
call sp_AgregarCliente('44556677-8', 'Valeria', 'Díaz', 'Ruta al Puerto', '2345-6789', 'valeria.d@email.com');
call sp_AgregarCliente('55667788-9', 'Pablo', 'Gómez', 'Barrio Los Sauces', '3456-7890', 'pablo.g@email.com');
call sp_AgregarCliente('66778899-0', 'Laura', 'Ramírez', 'Zona 1, Calle Real', '4567-8901', 'laura.r@email.com');


-- Listar Cliente
Delimiter //
	Create procedure sp_ListarCliente()
		Begin
			Select codigoCliente, nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente from Clientes;
		End //
Delimiter ;
call sp_ListarCliente();

-- Eliminar Cliente
Delimiter //
	Create procedure sp_EliminarCliente(
	in _codigoCliente int)
		Begin
			set foreign_key_checks = 0;
				Delete from Clientes
					where codigoCliente = _codigoCliente;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
		End//
Delimiter ;
call sp_EliminarCliente(5);

-- Buscar Cliente
Delimiter //
	Create procedure sp_BuscarCliente(
	in _codigoCliente int)
		Begin
			Select codigoCliente, nit, nombreCliente, apellidoCliente, direccionCliente, telefonoCliente, correoCliente from Clientes
				where codigoCliente = _codigoCliente;
		End //
Delimiter ;
call sp_BuscarCliente(1);

-- Editar Cliente
Delimiter //
	Create procedure sp_EditarCliente(
	in _codigoCliente int,
	in _nit varchar(20),
	in _nombreCliente varchar(100),
	in _apellidoCliente varchar(100),
	in _direccionCliente varchar(150),
	in _telefonoCliente varchar(20),
	in _correoCliente varchar(200))
		Begin
			Update Clientes
				set nit = _nit,
					nombreCliente = _nombreCliente,
					apellidoCliente = _apellidoCliente,
					direccionCliente = _direccionCliente,
					telefonoCliente = _telefonoCliente,
					correoCliente = _correoCliente
					where codigoCliente = _codigoCliente;
		End //
Delimiter ;
call sp_EditarCliente(2, '12345678-8', 'Ana María', 'García Pérez', '123 Calle Principal, Zona 1', '1111-2222', 'anamaria.garcia@email.com');

-- --------------------------- Entidad Ventas ---------------------------
-- Agregar Venta
Delimiter //
	Create procedure sp_AgregarVenta(
	in totalVenta decimal(10, 2),
	in clienteID int)
		Begin
			Insert into Ventas(fechaVenta, totalVenta, clienteID)
				Values(curdate(), totalVenta, clienteID);
		End //
Delimiter ;
call sp_AgregarVenta(450.00, 2);
call sp_AgregarVenta(275.50, 3);
call sp_AgregarVenta(150.00, 1);
call sp_AgregarVenta(625.75, 4);
call sp_AgregarVenta(210.00, 6);
call sp_AgregarVenta(550.00, 7);
call sp_AgregarVenta(125.50, 8);
call sp_AgregarVenta(800.00, 9);
call sp_AgregarVenta(345.99, 10);


-- Listar Venta
Delimiter //
	Create procedure sp_ListarVenta()
		Begin
			Select codigoVenta, fechaVenta, totalVenta, clienteID from Ventas;
		End //
Delimiter ;
call sp_ListarVenta();

-- Eliminar Venta
Delimiter //
	Create procedure sp_EliminarVenta(
	in _codigoVenta int)
		Begin
			set foreign_key_checks = 0;
				Delete from Ventas
					where codigoVenta = _codigoVenta;
				Select row_count() as filasEliminadas;
			set foreign_key_checks = 1;
		End//
Delimiter ;
call sp_EliminarVenta(5);


-- Buscar Venta
Delimiter //
	Create procedure sp_BuscarVenta(
	in _codigoVenta int)
		Begin
			Select codigoVenta, fechaVenta, totalVenta, clienteID from Ventas
				where codigoVenta = _codigoVenta;
		End //
Delimiter ;
call sp_BuscarVenta(1);

-- Editar Venta
Delimiter //
	Create procedure sp_EditarVenta(
	in _codigoVenta int,
	in _totalVenta decimal(10, 2))
		Begin
			Update Ventas
				set totalVenta = _totalVenta
					where codigoVenta = _codigoVenta;
		End //
Delimiter ;
call sp_EditarVenta(2, 280.00);