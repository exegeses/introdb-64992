# Modificar estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreViejo nombreNuevo tipoDato;  

    ALTER TABLE   
        CHANGE destAsientos modificado  
          tinyint unsigned not null;  

    ALTER TABLE billeteras  
        CHANGE stock cantidad tinyint unsigned not null;  

## Cambiar tipo de datos de una columna

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipoDato modificador;  

    ALTER TABLE destinos  
        MODIFY destNombre varchar(60) not null;  

## Agregar columna a una tabla 

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipo modificador;  

    ALTER TABLE billeteras  
        ADD descripcion varchar(500) not null;  

    ALTER TABLE billeteras
        ADD fechaAlta date default( curdate() ) not null;

## Eliminar columna a una tabla 

    ALTER TABLE nombreTabla  
        DROP nombreCampo; 

    ALTER TABLE billeteras   
        DROP descripcion;  

