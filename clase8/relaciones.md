# Consultas a varias tablas (relaciones)

> Cuando queremos traer información de dos o más tablas debemos relacionar dichas tablas.

## Table relation 
> La técnica ***"table relation"*** se logra igualando la columna en común a ambas tablas (la columna de relación). 

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos, marcas, categorias  
    WHERE productos.idMarca = marcas.idMarca  
    AND productos.idCategoria = categorias.idCategoria;  

## JOIN
> La técnica JOIN también puede trear datos de varias tablas. 

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos  
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos  
    JOIN marcas  
    ON productos.idMarca = marcas.idMarca  
    JOIN categorias  
    ON categorias.idCategoria = productos.idCategoria;   

