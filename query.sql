# Creación del script
create schema schlepers;
use schlepers;
create table autosimages(
id int(7) primary key auto_increment,
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP,
urlImage varchar(100),
descripcion varchar(200),
precio varchar(15));

insert into autosimage (urlImage, descripcion, precio) 
values("/images/auto_01", "El AUDI es un auto de gama alta, seguro y confiable", "U$S 19.000");

insert into autosimage (urlImage, descripcion, precio) 
values("/images/auto_02", "El Toyota corolla cross en su nueva versión 2025 con cambio de parrilla e incorporación del Toyota safety safe", "$ 36.281.000");

insert into autosimage (urlImage, descripcion, precio) 
values("/images/auto_03", "El Fiat Cronos es el número 1 en ventas del mercado argentino. Líder en su rubro", "CONSULTAR STOCK");

insert into autosimage (urlImage, descripcion, precio) 
values("/images/auto_04", "Chatarra usada de última generación", "$ 85.000");


