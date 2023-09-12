-- borra la bd si existe
DROP DATABASE IF EXISTS NOGAMENOLIFE;
-- creamos la bd
CREATE DATABASE NOGAMENOLIFE;
-- activamos la bd
USE NOGAMENOLIFE;



create table tb_tipos(
idtipo		int not null primary key,
descripcion varchar(15)
);

CREATE TABLE tb_usuarios(
codigo  int auto_increment,
nombre varchar(15),
apellido varchar(25),
usuario  char(45) NOT NULL,
clave    char(5),
facceso date  null,
tipo    int DEFAULT 2,
estado  int(1) DEFAULT 1,
primary key (codigo),
foreign key (tipo) references tb_tipos(idtipo)
);

-- tipo : administrativo  : 1
--        cliente  : 2
-- estado : activo : 1
--          suspendido : 2
--          eliminado  : 3
            
create table tb_categorias(
idcategoria	int not null primary key,
descripcion varchar(45)
);

create table tb_productos(
idprod char(5) not null,
descripcion varchar(45),
stock int,
precio decimal(8,2),
idcategoria int,
estado boolean,
primary key (idprod), 
foreign key (idcategoria) references tb_categorias(idcategoria)
);
 select * from tb_productos;
 select * from tb_usuarios;
 

create table tb_ventas(
numvta      char(5) not null,
idprod      char(5) not null,
-- descripcion varchar(30),
cantidad    int,
preciovta   decimal(8,2),
fechavta    date,
codvendedor int not null,
primary key (numvta,idprod),
foreign key (idprod) references tb_productos(idprod),
foreign key (codvendedor) references tb_usuarios(codigo)
);

-- inserts
insert into tb_tipos values (1, 'administrativo');
insert into tb_tipos values (2, 'cliente');

insert into tb_usuarios values (null,'Tito', 'Ciber','U001@gmail.com', '10001', curdate(),1,1);
insert into tb_usuarios values (null,'Zoila', 'Baca','U002@gmail.com', '10002', curdate(),2,1);
insert into tb_usuarios values (null,'Willy', 'Wonka','U003@gmail.com', '10003', curdate(),2,2);
insert into tb_usuarios values (null,'Giuseppe', 'Atuncar','U004@hotmail.com', '10004', curdate(),2,3);
insert into tb_usuarios values (null,'Henry', 'Castillo','U004@peru.pe', 'henry', curdate(),2,3);
insert into tb_usuarios values (null,'Henry', 'Castillo','U005@peru.pe', 'henry', curdate(),1,3);
insert into tb_usuarios values (null,'Henry', 'Castillo','U006@peru.pe', 'danie', curdate(),2,3);
insert into tb_usuarios values (null,'Henry', 'Castillo','U007@peru.pe', 'asdfg', curdate(),1,3);


insert into tb_categorias values (1, 'Juego->Guerra');
insert into tb_categorias values (2, 'Juego->Accion');
insert into tb_categorias values (3, 'Juego->Drama');
insert into tb_categorias values (4, 'Juego->Battle Royal');
insert into tb_categorias values (5, 'Juego->Fantasia');
insert into tb_categorias values (6, 'Juego->Carreras');

insert into tb_productos values ('P0001','Call of Duty',20,1.85,1,1);
insert into tb_productos values ('P0002','Call of Duty Modern Warfare',100,1.0,3,1);
insert into tb_productos values ('P0003','Mario Bros',80,15.0,2,1);
insert into tb_productos values ('P0004','Fornite',120,1.0,1,1);
insert into tb_productos values ('P0005','PES',120,1.0,3,1);
insert into tb_productos values ('P0006','Diablo III',80,2.8,5,1);
insert into tb_productos values ('P0007','FIFA19',40,10.5,2,1);
insert into tb_productos values ('P0008','Assassin Creed',55,1.8,1,1);
insert into tb_productos values ('P0009','Celeste',60,15.0,4,1);
insert into tb_productos values ('P0010','Sekiro Shadows',10,1.5,1,1);
insert into tb_productos values ('P0011','Death Stranding',10,1.5,2,1);
insert into tb_productos values ('P0012','Mortal Kombat',40,8.5,4,1);
insert into tb_productos values ('P0013','Outer Wilds',10,1.5,5,1);
insert into tb_productos values ('P0014','Zelda',10,1.5,1,1);
insert into tb_productos values ('P0015','Control',50,0.99,5,1);
insert into tb_productos values ('P0016','Borderlands 3',10,1.5,4,1);
insert into tb_productos values ('P0017','FIFA20',23,1.5,6,1);
insert into tb_productos values ('P0018','Mario Kart Tour',10,1.5,2,1);
insert into tb_productos values ('P0019','The Surge 2',10,1.5,1,1);
insert into tb_productos values ('P0020','Tetris 99',10,1.5,3,1);
insert into tb_productos values ('P0021','Astral Chain',10,1.5,2,1);
insert into tb_productos values ('P0022','Days Gone',10,1.5,1,1);
insert into tb_productos values ('P0023','Super Mario Maker 2',10,1.5,1,1);
insert into tb_productos values ('P0024','Metro Exodus',10,1.5,2,1);
insert into tb_productos values ('P0025','Apex Legends',10,1.5,1,1);
insert into tb_productos values ('P0026','Gears 5',10,1.5,3,1);
insert into tb_productos values ('P0027','Star Wars',10,1.5,1,1);
insert into tb_productos values ('P0028','Devil Mary Cry',10,1.5,4,1);
insert into tb_productos values ('P0029','Death Standing',10,1.5,1,1);
insert into tb_productos values ('P0030','Resident Evil',10,1.5,5,1);
insert into tb_productos values ('P0031','Pro Evolution Soccer 4',10,0.99,5,1);

	select * from tb_productos where idcategoria = 1
insert into tb_ventas values ('V0001','P0001', 1, 1.50, '2017/04/15',1 );
insert into tb_ventas values ('V0001','P0004', 2, 1.0,  '2017/04/15',1 );
insert into tb_ventas values ('V0002','P0002', 1, 1.0,  '2017/04/25', 2);
insert into tb_ventas values ('V0003','P0003', 1, 15.0,  '2017/04/26',2 );
insert into tb_ventas values ('V0004','P0002', 1, 1.0,  '2017/05/01',1);
insert into tb_ventas values ('V0004','P0005', 1, 1.0,  '2017/05/01',1 );


-- consultas
SELECT * FROM tb_usuarios;
SELECT * FROM tb_ventas;
SELECT * FROM tb_productos;

select * from tb_categorias;


-- ejemplo de procedimientos almancenados de consulta
DELIMiTER $$
create procedure usp_validaAcceso (usr char(20), pas char(5))
begin
select * from tb_usuarios where usuario = usr and clave = pas;
end$$
DELIMiTER ;

CALL usp_validaAcceso ('U001@gmail.com','10001');

DELIMiTER $$
create procedure usp_reporte1 ()
begin
SELECT numvta, fechavta, p.descripcion as 'Nombre del Producto', 
	concat(u.nombre, " ",u.apellido) as 'Nombre del vendedor', 
    (v.cantidad * v.preciovta) as 'Monto de la venta'
 FROM tb_ventas v
INNER JOIN tb_usuarios u ON v.codvendedor = u.codigo
INNER JOIN tb_productos p ON v.idprod = p.idprod;

end$$
DELIMiTER ;

CALL usp_reporte1 ();
 
select c.descripcion as categoria, count(*) as cantidad
from tb_productos as p 
inner join tb_categorias as c 
on p.idcategoria=c.idcategoria 
group by c.idcategoria;
	
    select p.idprod, p.descripcion, p.stock, p.precio, c.idcategoria 
		from tb_productos as p
		inner join
		tb_categorias as c
		on p.idcategoria=c.idcategoria
		group by c.idcategoria;
	
    
 

select c.descripcion as categoria, p.descripcion as producto,
p.stock as disponible, p.precio as preciovta
from tb_productos as p 
inner join tb_categorias as c 
on p.idcategoria=c.idcategoria 
group by categoria


 