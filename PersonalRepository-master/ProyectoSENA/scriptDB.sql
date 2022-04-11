-- Creacion de la base de datos del proyecto para la empresa Unikasas
create database dbUnikasas;

-- usar base de datos
use dbUnikasas;
-- creaciion de tablas 
-- crear tabla etapa

create table tblEtapa(
idEtapa int not null auto_increment primary key,
nombreEtapa varchar(30) not null
)engine = InnoDB;

-- crear tabla privilegio

create table tblPrivilegio(
idPrivilegio int not null auto_increment primary key,
nombrePrivilegio varchar(30) not null
)engine = InnoDB;

-- crear tabla rol

create table tblRol(
idRol int not null auto_increment primary key,
nombreRol varchar(15) not null
)engine = InnoDB;

-- crear tabla rolprivilegio

create table tblRolPrivilegio(
idRol int not null,
idPrivilegio int not null,
primary key(idRol, idPrivilegio),
constraint FkRolRolPrivilegio foreign key(idRol)
references tblRol(idRol)
on delete cascade
on update cascade,
constraint FkPrivilegioRolPrivilegio foreign key(idPrivilegio)
references tblPrivilegio(idPrivilegio)
on delete cascade
on update cascade
)engine = InnoDB;

-- crear tabla usuarios

create table tblUsuario(
idUsuario int not null auto_increment primary key,
primerNombreUsario varchar(20) not null,
segundoNombreUsuario varchar(20),
primerApellidoUsuario varchar(20) not null,
segundoApellidoUsuario varchar(20),
tipoDocumento varchar(30) not null,
numeroDocumento varchar(10) not null,
telefonoUusario varchar(10) not null,
correoUsuario varchar(30) not null,
passwordUsuario varchar(15) not null,
estadoUsuario boolean not null,
idRol int not null,
constraint FkRolUsuario foreign key(idRol)
references tblRol(idRol)
on delete cascade
on update cascade
)engine = InnoDB;

-- crear tabla producto

create table tblProducto(
idProducto int not null auto_increment primary key,
nombreProducto varchar(25) not null,
descripcionProducto varchar(200)not null,
precioProducto decimal(11,2) not null,
fechaRegistroProducto datetime not null,
estadoProducto boolean not null
)engine = InnoDB;

-- crear tabla proyecto

create table tblProyecto(
idProyecto int not null auto_increment primary key,
nombreProyecto varchar(18) not null,
costoEstimadoProyecto decimal(11,2) not null,
costoFinalProyecto decimal(11,2) not null,
ciudadProyecto varchar(30) not null,
direccionProyecto varchar(50) not null,
fechaRegistroProyecto datetime,
fechaInicioProyecto date not null,
fechaFinEstimadaProyecto date not null,
fechaFinProyecto date not null,
idUsuarioEncargado int not null,
idProducto int not null,
idUsuarioCliente int not null,
constraint FkUsuarioProyecto foreign key(idUsuarioEncargado)
references tblUsuario(idUsuario)
on delete cascade
on update cascade,
constraint FkProductoProyecto foreign key(idProducto)
references tblProducto(idProducto)
on delete cascade
on update cascade,
constraint FKUsuarioProyectoCliente foreign key(idUsuarioCliente)
references tblUsuario(idUsuario)
on delete cascade
on update cascade
)engine = InnoDB;

-- crear tabla evento

create table tblEvento(
idEvento int not null auto_increment primary key,
nombreEvento varchar(60) not null,
fechaEvento date not null,
horarioInicioEvento time not null,
horarioFinEvento time not null,
idProyecto int not null,
notificacionEvento int not null,
invitadosEvento varchar(255),
lugarEvento varchar(90) not null,
asuntoEvento varchar(255) not null,
mensajeEvento varchar(255) not null,
constraint FkProyectoEvento foreign key(idProyecto)
references tblProyecto(idProyecto)
)engine = InnoDB;

-- crear tabla cotizacion

create table tblCotizacion(
idCotizacion int not null auto_increment primary key,
idProducto int not null,
primerNombreCotizante varchar(20) not null,
segundoNombreCotizante varchar(20),
primerApellidoCotizante varchar(20) not null,
segundoApellidoCotizante varchar(20),
correoCotizante varchar(35) not null,
estadoCotizacion varchar(10) not null,
respuestaCotizacion varchar(200),
fechaRegistroCotizacion datetime not null,
constraint FkProductoCotizacion foreign key(idProducto)
references tblProducto(idProducto)
)engine = InnoDB;

-- crear tabla proyectoetapa

create table tblProyectoEtapa(
idProyecto int not null,
idEtapa int not null,
primary key(idProyecto, idEtapa),
constraint FkProyectoProyectoEtapa foreign key(idProyecto)
references tblProyecto(idProyecto)
on delete cascade
on update cascade,
constraint FkEtapaProyectoEtapa foreign key(idEtapa)
references tblEtapa(idEtapa)
on delete cascade
on update cascade
)engine = InnoDB;

-- create table Actividad

create table tblActividad(
idActividad int not null auto_increment primary key,
idEtapa int not null,
nombreActividad varchar(60) not null,
nombreEncargado varchar(60) not null,
objetivoActividad varchar(120) not null,
fechaInicioActividad date not null,
fechaFinActividad date,
observacionesActividad varchar(120),
estadoActividad varchar(15) not null,
constraint FkEtapaActividad foreign key(idEtapa)
references tblEtapa(idEtapa)
on delete cascade
on update cascade
)engine = InnoDB;
