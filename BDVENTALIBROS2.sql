/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 8.2.0 : Database - bdventas_libros
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdventas_libros` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bdventas_libros`;

/*Table structure for table `autor` */

DROP TABLE IF EXISTS `autor`;

CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `autor` */

insert  into `autor`(`id_autor`,`nombre`) values 
(2,'Raul Perez'),
(3,'Ana Torres'),
(4,'Ricardo Santos'),
(5,'Juan Ramirez'),
(6,'Maria Gomez'),
(7,'Luis Fernandez'),
(8,'Sofia Martinez'),
(9,'Pedro Rodriguez'),
(10,'Laura Gonzales'),
(11,'Carlos Sanchez'),
(12,'Mariana Castro'),
(13,'Jose Lopez'),
(14,'Gabriela Morales'),
(15,'Alejandro Diaz'),
(16,'Valeria Herrera'),
(17,'Francisco Ortega'),
(18,'Daniela Navarro'),
(19,'Andres Guzman'),
(20,'Carolina Paredes'),
(21,'Hector Castro'),
(22,'Paola Morales'),
(23,'Javier Aguilar'),
(24,'Camila Rojas');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `cod_cliente` int NOT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cliente` */

insert  into `cliente`(`cod_cliente`,`dni`,`cliente`,`direccion`,`telefono`,`email`) values 
(1,'0147854','Percy Torres Santos','av valencia 17 santiago','3214741','torres@gmail.com'),
(2,'0258947','Maria Fernandez Palma','av sauce 17 breña','av sauce 17 breña','maria@gmail.com');

/*Table structure for table `detalle_ventas` */

DROP TABLE IF EXISTS `detalle_ventas`;

CREATE TABLE `detalle_ventas` (
  `cod_venta` int DEFAULT NULL,
  `cod_libro` int DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `precio` char(10) DEFAULT NULL,
  `cantidad` char(10) DEFAULT NULL,
  `importe` char(10) DEFAULT NULL,
  KEY `cod_libro` (`cod_libro`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`cod_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detalle_ventas` */

insert  into `detalle_ventas`(`cod_venta`,`cod_libro`,`descripcion`,`precio`,`cantidad`,`importe`) values 
(1,2,'Programacion II','90','1','90.0'),
(1,1,'Diseño Grafico','90','4','360.0'),
(2,2,'Programacion II','100','2','200.0'),
(1,2,'Programacion II','90','1','90.0'),
(1,1,'Diseño Grafico','90','4','360.0'),
(2,2,'Programacion II','100','2','200.0'),
(3,4,'Redes de Computadoras','80','3','240.0'),
(4,3,'Base de Datos','75','2','150.0'),
(5,1,'Diseño Grafico','90','1','90.0'),
(5,2,'Programacion II','90','2','180.0'),
(6,2,'Programacion II','100','1','100.0'),
(6,3,'Base de Datos','75','3','225.0'),
(7,1,'Diseño Grafico','90','2','180.0'),
(8,4,'Redes de Computadoras','80','2','160.0'),
(8,3,'Base de Datos','75','1','75.0'),
(9,4,'Redes de Computadoras','80','1','80.0'),
(9,2,'Programacion II','90','3','270.0'),
(10,1,'Diseño Grafico','90','1','90.0'),
(10,3,'Base de Datos','75','4','300.0'),
(11,4,'Redes de Computadoras','80','2','160.0'),
(11,2,'Programacion II','90','2','180.0'),
(12,3,'Base de Datos','75','1','75.0'),
(12,1,'Diseño Grafico','90','3','270.0');

/*Table structure for table `libro` */

DROP TABLE IF EXISTS `libro`;

CREATE TABLE `libro` (
  `cod_libro` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `cantidad` char(10) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `libro` */

insert  into `libro`(`cod_libro`,`nombre`,`titulo`,`cantidad`,`categoria`) values 
(1,'Alice Johnson','Introduction to Python','100','Programming'),
(2,'Bob Davis','History of Art','75','Art'),
(3,'Charlie Brown','Cooking Basics','120','Cooking'),
(4,'David Smith','The Universe Explained','90','Science'),
(5,'Emma Wilson','Business Strategies','200','Business'),
(6,'Frank Miller','Fitness Fundamentals','150','Health'),
(7,'Grace Thompson','Travel Adventures','180','Travel'),
(8,'Henry Lee','Mathematics for Beginners','80','Education'),
(9,'Ivy White','Poetry Anthology','110','Literature'),
(10,'Jack Turner','DIY Home Repairs','130','Home Improvement'),
(11,'Kate Martin','Music Theory','160','Music'),
(12,'Leo Garcia','Introduction to Robotics','95','Technology'),
(13,'Mia Robinson','Environmental Science','70','Science'),
(14,'Noah Harris','Psychology Insights','140','Psychology'),
(15,'Olivia Taylor','Fashion Design','110','Fashion'),
(16,'Peter Clark','World History','200','History'),
(17,'Quinn Parker','Healthy Cooking','120','Cooking'),
(18,'Ryan Evans','Digital Marketing Strategies','180','Business'),
(19,'Sara Mitchell','Yoga and Meditation','100','Health'),
(20,'Tom Johnson','Photography Basics','160','Art'),
(21,'ses','sus','21','sis'),
(215,'asas','asas','asasa','asas'),
(333,'sasa','asas','313','asasas'),
(23121321,'asas','asasas','sasasasa','asasa');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `cod_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `personal` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`cod_usuario`,`usuario`,`contraseña`,`cargo`,`personal`,`direccion`,`telefono`,`email`) values 
(1,'pepe','123','Administrador','pedro lomas','av lince 17 breña','3214785','pedro@gmail.com'),
(2,'axe','123456','Supervisor','axel fernandez','av  arbol 17 santiago','3214741','axel@gmail.com'),
(3,'maria','1234','Cajera','maria fernandez','av lomas 47 santos','23210474','maria@gmail.com'),
(4,'juan','abc123','Analista','Juan López','Calle Alegre 123','555-1234','juan@gmail.com'),
(5,'ana','qwerty','Asistente','Ana González','Avenida Principal 456','555-5678','ana@gmail.com'),
(6,'carlos','password','Técnico','Carlos Rodríguez','Calle Principal 789','555-9012','carlos@gmail.com'),
(7,'laura','secure123','Programadora','Laura Hernández','Avenida Central 1011','555-3456','laura@gmail.com'),
(8,'pedrito','ilovecats','Diseñador','Pedro Martínez','Calle Secundaria 1213','555-7890','pedrito@gmail.com');

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `cod_venta` int NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `cod_cliente` int DEFAULT NULL,
  `cod_usuario` int DEFAULT NULL,
  `subtotal` char(10) DEFAULT NULL,
  `igv` char(10) DEFAULT NULL,
  `total` char(10) DEFAULT NULL,
  PRIMARY KEY (`cod_venta`),
  KEY `cod_cliente` (`cod_cliente`),
  KEY `cod_usuario` (`cod_usuario`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `ventas_ibfk_5` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  CONSTRAINT `ventas_ibfk_6` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  CONSTRAINT `ventas_ibfk_7` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ventas` */

insert  into `ventas`(`cod_venta`,`serie`,`documento`,`fecha`,`cod_cliente`,`cod_usuario`,`subtotal`,`igv`,`total`) values 
(1,'001','Documento de Venta','27/06/2023',2,1,'450.0','81.0','531.0'),
(2,'001','Documento de Venta','27/06/2023',2,1,'200.0','36.0','236.0');

/* Trigger structure for table `detalle_ventas` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `STOCK_VENTA` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `STOCK_VENTA` AFTER INSERT ON `detalle_ventas` FOR EACH ROW BEGIN
DECLARE  IDP INT DEFAULT 0;
DECLARE  STOCK INT DEFAULT 0;
SET IDP= NEW.cod_libro;
SET STOCK=NEW.CANTIDAD;
UPDATE libro SET cantidad=cantidad-STOCK WHERE cod_libro=IDP;
    END */$$


DELIMITER ;

/* Procedure structure for procedure `autogenerar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `autogenerar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `autogenerar_cliente`()
BEGIN
SELECT  MAX(cod_cliente) FROM cliente;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `autogenerar_libro` */

/*!50003 DROP PROCEDURE IF EXISTS  `autogenerar_libro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `autogenerar_libro`()
BEGIN
SELECT  MAX(cod_libro) FROM libro;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `autogenerar_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `autogenerar_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `autogenerar_venta`()
BEGIN
select  max(cod_venta) from VENTAS;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cliente`(
 
 P_COD_CLIENTE INT 
 )
BEGIN
 
 delete from cliente    
 WHERE  COD_CLIENTE=P_COD_CLIENTE;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_libro` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_libro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_libro`(
p_cod_libro int 
 )
BEGIN
delete from libro WHERE cod_libro=p_cod_libro;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `eliminar_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `eliminar_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario`(
 
 p_cod_usuario int
 
 
 
 )
BEGIN
 
 DELETE FROM usuarios WHERE cod_usuario=p_cod_usuario;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `guardar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `guardar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_cliente`(
 P_COD_CLIENTE INT,
 P_DNI VARCHAR(50),
 P_CLIENTE VARCHAR(50),
 P_DIRECCION VARCHAR(50),
 P_TELEFONO VARCHAR(50),
 P_EMAIL VARCHAR(50)
 
 )
BEGIN
INSERT INTO  CLIENTE VALUES (
P_COD_CLIENTE,
 P_DNI ,
 P_CLIENTE ,
 P_DIRECCION ,
 P_TELEFONO ,
 P_EMAIL 
 
);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `guardar_detalle_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `guardar_detalle_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_detalle_venta`(
 
 
 p_cod_venta int,
 p_cod_libro int,
 p_descripcion varchar(50),
 p_precio char(10),
 p_cantidfad char(10),
 p_importe char(10)
 
 
 
 
 
 )
BEGIN
insert into  detalle_ventas(cod_venta,cod_libro,descripcion,precio,cantidad,importe) values (
 p_cod_venta,
 p_cod_libro,
 p_descripcion,
 p_precio ,
 p_cantidfad ,
 p_importe 
 
 
 
);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `guardar_libro` */

/*!50003 DROP PROCEDURE IF EXISTS  `guardar_libro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_libro`(
 
 
 p_cod_libro INT,
 p_descripcion VARCHAR(50),
 p_precio_compra CHAR(10),
 p_precio_venta CHAR(10),
 p_cantidad CHAR(10),
 p_medida VARCHAR(50),
 p_categoria  VARCHAR(50),
 p_autor INT
 
 )
BEGIN
 INSERT INTO libro(cod_libro,titulo,precio_compra,precio_venta,cantidad,medida,categoria,id_autor)  VALUES(
 
 p_cod_libro,
 p_descripcion ,
 p_precio_compra,
 p_precio_venta,
 p_cantidad ,
 p_medida ,
 p_categoria,
 p_autor 
 );
   
 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `guardar_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `guardar_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_usuarios`(
 
 
 p_cod_usuario int,
 p_usuario varchar(50),
 p_contraseña  VARCHAR(50),
 p_cargo  VARCHAR(50),
 p_personal  VARCHAR(50),
 p_direccion  VARCHAR(50),
 p_telefono  VARCHAR(50),
 p_email  VARCHAR(50)
 
 
 
 
 )
BEGIN
insert into usuarios (cod_usuario,usuario,contraseña,cargo,personal,direccion,telefono,email) values(
 p_cod_usuario ,
 p_usuario ,
 p_contraseña  ,
 p_cargo  ,
 p_personal  ,
 p_direccion  ,
 p_telefono  ,
 p_email 
);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `guardar_venta` */

/*!50003 DROP PROCEDURE IF EXISTS  `guardar_venta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_venta`(
 
 p_cod_venta int,
 p_serie varchar(50),
 p_documento VARCHAR(50),
 p_fecha VARCHAR(50),
 p_cod_cliente int,
 p_cod_usuario int,
 p_subtotal char(10),
 p_igv char(10),
 p_total char(10)
 
 
 
 
 
 )
BEGIN
insert into  ventas (cod_venta,serie,documento,fecha,cod_cliente,cod_usuario,subtotal,igv,total) values(
 p_cod_venta ,
 p_serie ,
 p_documento ,
 p_fecha ,
 p_cod_cliente ,
 p_cod_usuario ,
 p_subtotal,
 p_igv ,
 p_total 
 
);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listado_autor` */

/*!50003 DROP PROCEDURE IF EXISTS  `listado_autor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listado_autor`(
 
 
 
 p_nombre varchar(50)
 )
BEGIN
 
 SELECT  * FROM autor WHERE nombre LIKE CONCAT('%',P_nombre,'%')
    ORDER BY id_autor DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listado_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `listado_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listado_cliente`(
 
P_CLIENTE VARCHAR(50)
 )
BEGIN
SELECT  * FROM  CLIENTE  WHERE cliente LIKE CONCAT('%',P_CLIENTE,'%')
    ORDER BY cod_CLIENTE DESC;
 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listado_libro` */

/*!50003 DROP PROCEDURE IF EXISTS  `listado_libro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listado_libro`(
 
 
 p_titulo varchar(50)
 )
BEGIN
SELECT        libro.cod_libro, libro.titulo, libro.precio_compra, libro.precio_venta, libro.cantidad, libro.medida, libro.categoria, autor.id_autor,autor.nombre
FROM            libro INNER JOIN
                         autor ON libro.id_autor = autor.id_autor where titulo LIKE CONCAT('%',P_titulo,'%')
    ORDER BY cod_libro DESC;
 
 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listado_usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `listado_usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listado_usuario`(
 
 
p_usuario varchar(50) 
 )
BEGIN
 
  
 SELECT  * FROM  usuarios WHERE usuario LIKE CONCAT('%',P_usuario,'%')
    ORDER BY cod_usuario DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `LOGIN` */

/*!50003 DROP PROCEDURE IF EXISTS  `LOGIN` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `LOGIN`(`p_login` VARCHAR(50))
BEGIN
SELECT  usuario,contraseña,cargo FROM usuarios  where  usuario=p_login;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificar_cliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificar_cliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cliente`(
 
 P_COD_CLIENTE INT,
 P_DNI VARCHAR(50),
 P_CLIENTE VARCHAR(50),
 P_DIRECCION VARCHAR(50),
 P_TELEFONO VARCHAR(50),
 P_EMAIL VARCHAR(50)
  
 )
BEGIN
 
 update cliente   set   dni=P_DNI,CLIENTE=P_CLIENTE,DIRECCION=P_DIRECCION,TELEFONO=P_DIRECCION,EMAIL=P_EMAIL
 
 WHERE  COD_CLIENTE=P_COD_CLIENTE;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificar_libro` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificar_libro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_libro`(
 
 
 
 
 p_cod_libro INT,
 p_descripcion VARCHAR(50),
 p_precio_compra CHAR(10),
 p_precio_venta CHAR(10),
 p_cantidad CHAR(10),
 p_medida VARCHAR(50),
 p_categoria  VARCHAR(50),
 p_autor INT
 
 )
BEGIN
 UPDATE libro SET titulo=p_descripcion,precio_compra=p_precio_compra,precio_venta=p_precio_venta,cantidad=p_cantidad,medida=p_medida,categoria=p_categoria,id_autor=p_autor
 
 WHERE cod_libro=p_cod_libro;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modificar_usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `modificar_usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_usuarios`(
 
 
  p_cod_usuario INT,
 p_usuario VARCHAR(50),
 p_contraseña  VARCHAR(50),
 p_cargo  VARCHAR(50),
 p_personal  VARCHAR(50),
 p_direccion  VARCHAR(50),
 p_telefono  VARCHAR(50),
 p_email  VARCHAR(50)
 
 
 
 
 )
BEGIN
update usuarios  set  
 
 usuario=p_usuario ,
 contraseña=p_contraseña  ,
 cargo=p_cargo  ,
 personal=p_personal  ,
 direccion=p_direccion  ,
 telefono=p_telefono  ,
 email= p_email 
 
 where cod_usuario=p_cod_usuario;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `USPEliminarLibro` */

/*!50003 DROP PROCEDURE IF EXISTS  `USPEliminarLibro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USPEliminarLibro`(IN codLib int)
DELETE FROM libro WHERE cod_libro = codLib */$$
DELIMITER ;

/* Procedure structure for procedure `USPInsertarLibro` */

/*!50003 DROP PROCEDURE IF EXISTS  `USPInsertarLibro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USPInsertarLibro`(
	IN cod_libro INT(11),
	IN nombre VARCHAR(50),
	IN titulo VARCHAR(35),
	IN cantidad CHAR(10),
	IN categoria VARCHAR(50)
)
BEGIN
    INSERT INTO LIBRO VALUES(cod_libro, nombre, titulo, cantidad, categoria);
END */$$
DELIMITER ;

/* Procedure structure for procedure `USPListarLibros` */

/*!50003 DROP PROCEDURE IF EXISTS  `USPListarLibros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USPListarLibros`()
select * from `libro` */$$
DELIMITER ;

/* Procedure structure for procedure `USPModificarLibro` */

/*!50003 DROP PROCEDURE IF EXISTS  `USPModificarLibro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `USPModificarLibro`(
	IN cod_libro int,
	in nombre varchar(50),
	IN titulo VARCHAR(50),
	IN cantidad VARCHAR(50),
	IN categoria VARCHAR(50)
)
UPDATE 	libro
SET cod_libro = codLib,
    nombre = Autor,
    titulo = Titulo,
    cantidad	= Cantidad, 						
    categoria  = categoria			
WHERE cod_libro = codLib */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
