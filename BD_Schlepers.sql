-- Creación de la base de datos
CREATE DATABASE schlepers;

-- Elección de la base de datos 
use schlepers;

/* Se definen dos tablas, una llamada 'tablaautos' y otra denominada 'autosimages'. La primera tabla generará el renderizado de una tabla ubicada en la sección 3 
del frontend utilizado en la primera parte del trabajo, mientras que la segunda tabla hará el renderizado de la sección 4 del frontend ubicando imágenes con una 
descripción y precio del producto. Son 6 imágenes por fila y luego al seguir insertando se hace un wrap. */

-- CREACIÓN DE LA TABLA 'tablaautos'

create table tablaautos(
id int(7) primary key auto_increment,
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP,
marca varchar(50),
modelo varchar(50),
año varchar(4),
precio varchar(30),
color varchar(30)
);

-- CREACIÓN DE LA TABLA 'autosimages'

CREATE TABLE `autosimages` (
  `id` int(7) primary key auto_increment,
  `fecha` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `urlImage` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `precio` varchar(30) DEFAULT NULL
) ;

--                                     ********** CRUD **************

-- Función CREATE (crea el recurso, en este caso esa acción significa insertar un registro en una tabla)
-- Inserción de datos en ambas tablas

-- TABLA 'tablaautos'

insert into tablaautos (marca, modelo, año, precio, color) 
values
("FIAT", "Cronos", 2024, 20000000, "azul"),
("Toyota", "Corolla Cross", 2022, 23500000, "rojo"),
("Ford", "Focus", 2017, 15000, "verde"),
("Volkswagen", "Gacel", 2001, 7200000, "amarillo"),
("Renault", "Laguna", 2005, 9200000, "bordó"),
("FIAT", "Cronos", 2020, 14700000, "gris titanio"),
("Toyota", "Corolla con techo", 2024, 30700000, "negro"),
("Honda", "Civic con GNC", 2011, 6500000, "verde"),
("Citroen", "3CV de colección", 1982, 9200000, "blanco tiza"),
("Volkswagen", "Vento", 2010, 19500000, "azul mate"),
("Mercedes Benz", "Sedan Clase E", 2024, 80900000, "blanco"),
("Ferrari", "Testarrosa", 2014, 803500000, "roja"),
("BMW", "Serie 5 Gran Turismo", 2022, 350000000, "chocolate"),
("Volkswagen", "Vento", 2010, 19500000, "azul mate"),
("Volkswagen", "Vento", 2010, 19500000, "azul mate");

-- TABLA 'autosimages'

insert into autosimages (urlImage, descripcion, precio) 
values
("/images/file01.jpg", "Auto rojo Fiat 600 flamante", "10200 U$S"),
("/images/file02.jpg", "FIAT 600 preparado competición", "18200 U$S"),
("/images/file03.jpg", "Espectacular descapotable amarillo PREMIUM", "22700 U$S"),
("/images/file04.jpg", "Tremendo auto deportivo rojo flamante JOYA", "48700 U$S"),
("/images/file05.jpg", "Alfa Romeo amarillo de exposición", "82500 U$S"),
("/images/file06.jpg", "Alfa Romeo descapotable blanco princesa", "76700 U$S"),
("/images/file07.jpg", "Coupé gris flamante a nuevo pintura y motor", "50800 U$S"),
("/images/file08.jpg", "Auto de Fangio remate museo Balcarce", "147900 U$S"),
("/images/file09.jpg", "Corolla cross modelo nuevo Brasil 2025", "38095000 ARS"),
("/images/file10.jpg", "Corolla Cross SEG Oportunidad !!!", "40200 U$S"),
("/images/file11.jpg", "Toyota Corolla híbrido con techo eléctrico", "22500000 ARS"),
("/images/file12.jpg", "Renault fuego 84 con GNC. Aros nuevos y junta de cárter soplada", "77000 U$S");

-- Función READ (lee el recurso, en este caso esa acción significa leer uno o varios registros en una tabla)
select * from tablaautos;

select *
from autosimages; 

select * 
from tablaautos; 

-- función UPDATE (actualiza un recurso, en este caso puede ser algún campo de un registro de una tabla), por lo general identificado por su id
-- Modificar un campo de una tabla

UPDATE tablaautos
SET color = 'verde' , marca = '20000' and precio >10000
WHERE id = 1; 

/* El comando ALTER en SQL se utiliza para modificar la estructura de una tabla existente. Puedes utilizar ALTER TABLE para añadir, eliminar, o modificar columnas,
 así como para cambiar otras propiedades de la tabla. */
 
ALTER TABLE tablaautos
MODIFY año int(4); 

ALTER TABLE empleados
ADD edad INT; 

-- función DELETE (borra un registro en una tabla a partir de su id)

DELETE FROM tablaautos
WHERE id =17;

-- Comando para describir el modelo de una tabla
describe autosimages;

-- La siguiente consulta borra toda la tabla
truncate table autosimages;

