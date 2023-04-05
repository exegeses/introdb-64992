# Modificación de datos  

> Para modificar datos (registros) utilizamos el comando  
> "UPDATE"  

> Sintáxis

    UPDATE nombreTabla  
        SET nombreCampo = valor  
        WHERE campoID = valorID;

> Ejemplo práctico 

    UPDATE billeteras  
        SET precio = 50000
        WHERE id = 5;


> Aumentar el precio un 5% un registro 

    UPDATE billeteras  
        SET precio = precio*1.05  
        WHERE id = 4;