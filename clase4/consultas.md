# Consultas en SQL

## Consultas a server

> Para hacer consultas al server utilizamos 
> la palabra reservada ***SELECT***

    SELECT CURDATE();  

## Consultas a tablas de una base de datos 

> Para generar consultas a tablas de una BBDD
> también utilizamos la sentencia ***"SELECT"***,  
> pero además debemos especificar las/s tablas  
> con la palabra ***FROM***  

    SELECT * FROM destinos;  

> Si queremos trar sólo los datos de algunas (no todas)
> de las columnas  

> Sintáxis 

    SELECT nCampo3, campo5  
        FROM nTabla;  

> Ejemplo  

    SELECT destNombre, destPrecio
        FROM destinos;

## Orden de registros

> Para ordenas registros utilizamos 
> las palabras ***ORDER BY***

> Sintáxis  
 
    SELECT nCampo3, campo5  
        FROM nTabla  
        ORDER BY nCampo4;  

> Ejemplo  

    SELECT destNombre, destPrecio
        FROM destinos
        ORDER BY destPrecio;

## Filtrado de registros

> Filtrar registros significa traer sólamente los registros que cumplan alguna condición dada

> Para especificar condiciones de filtrado usamos la palabra ***WHERE***  

> Ejemplo práctico: 
> Traer nombre y precio de destinos 
> con un precio que no supere los 8000 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000;  

> Ejemplo práctico:
> Traer nombre y precio de destinos
> con un precio que no supere los 8000 
> y además ordenas por precio.

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000  
        ORDER BY destPrecio;  

> Ejemplo práctico:
> Traer nombre y precio de destinos
> con un precio esté entre 6600 y 8000 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio >= 6600  
          AND  destPrecio <= 8000  
        ORDER BY destPrecio; 

> Ahora la misma práctica utilizando 
> la palabra ***BETWEEN*** 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio    
        BETWEEN  6600 AND 8000  
        ORDER BY destPrecio; 

> Traer nombre y precio de la región 5

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5;  

> Traer nombre y precio de la región 5
> y además de la región 3

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5  
          OR idRegion = 3;    

