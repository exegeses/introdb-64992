# Modificar estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreViejo nombreNuevo tipoDato;  

    ALTER TABLE   
        CHANGE destAsientos modificado  
          tinyint unsigned not null;  

## Cambiar tipo de datos de una columna

    ALTER TABLE nombreTabla  
        MODIFY nombreCampo tipoDato modificador;  

    ALTER TABLE destinos  
        MODIFY destNombre varchar(60) not null;  