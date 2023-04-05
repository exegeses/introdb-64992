# Insertar datos en una tabla 

> Para insertar datos dentro del una tabla 
> utilizamos el comando "INSERT"
> ***Nota:*** Vamos a ver dos variantes de este comando 

> Sintáxis variante a (mencionando los campos) 

    INSERT INTO nombreTabla  
            ( nCampo3, nCampo4, nCampo6 )  
        VALUES  
            ( valor3, valor4, valor6 );  


> Ejemplo práctico  

    INSERT INTO billeteras  
            ( nombre, precio, stock )  
        VALUES   
            ( 'Ledger Nano S', 16000, 30 );


> Sintáxis variante b ( sin mencionar los campos)  

    INSERT INTO nombreTabla  
        VALUES  
            ( valor1, valor2, valor3, ... )  

> Ejemplo práctico

    INSERT INTO billeteras  
        VALUES  
            ( DEFAULT, 'Trezor One', 19500, 30 );  


## Insertando multiples registros

    INSERT INTO billeteras  
            ( id, nombre, precio, stock )  
        VALUES  
            ( DEFAULT, 'Trezor T', 78000, 20 ),
            ( DEFAULT, 'Ledger Nano X', 56000, 20 );
   
