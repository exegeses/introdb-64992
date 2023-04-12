# Crear tabla marcas
create table marcas
(
    idMarca tinyint unsigned not null auto_increment primary key,
    mkNombre varchar(45) unique not null
);

# Crear tabla categorias
create table categorias
(
    idCategoria tinyint unsigned not null auto_increment primary key,
    catNombre varchar(45) unique null
);

# Crear tabla productos
create table productos
(
    idProducto mediumint unsigned not null auto_increment primary key,
    prdNombre varchar(45) unique not null,
    prdPrecio float(8,2) not null,
    idMarca tinyint unsigned not null,
        constraint productos_marcas
            foreign key (idMarca)
                references marcas (idMarca),
    idCategoria tinyint unsigned not null,
        constraint productos_categorias
            foreign key (idCategoria)
                references categorias (idCategoria),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean
);

