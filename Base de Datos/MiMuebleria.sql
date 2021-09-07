 
CREATE USER 'UsuarioMuebleria'@'localhost' IDENTIFIED BY 'muebleria123';
GRANT USAGE,INSERT,DELETE,UPDATE,SELECT ON mi_muebleria.* TO 'UsuarioMuebleria'@'localhost';

mysql -u root2 -p
CREATE DATABASE mi_muebleria;
USE mi_muebleria;

CREATE TABLE USUARIO (
        Nombre_De_Usuario VARCHAR (25) NOT NULL,
        Password CHAR(20) NOT NULL, 
        Tipo INT NOT NULL,
        Estado BOOLEAN NOT NULL,
        CONSTRAINT PK_USUARIO PRIMARY KEY (Nombre_De_Usuario)
);


CREATE TABLE MUEBLE(
        Nombre VARCHAR (45) NOT NULL,
        Precio DECIMAL (7,2) NOT NULL,
        CONSTRAINT PK_MUEBLE PRIMARY KEY (Nombre)
);



CREATE TABLE VENTA(
        Nombre_De_Usuario VARCHAR (25) NOT NULL,
        Nombre VARCHAR (45) NOT NULL,
        CONSTRAINT PK_VENTA PRIMARY KEY(Nombre_De_Usuario,Nombre),
        CONSTRAINT FK_TO_USUARIO FOREIGN KEY(Nombre_De_Usuario)
        REFERENCES USUARIO(Nombre_De_Usuario),
        CONSTRAINT FK_TO_MUEBLE FOREIGN KEY(Nombre)
        REFERENCES MUEBLE(Nombre)
);



CREATE TABLE ENSAMBLE_PIEZAS(
       Mueble VARCHAR (45) NOT NULL,
       Pieza INT NOT NULL,
       Cantidad INT NOT NULL,
       CONSTRAINT PK_ENSAMBLE_PIEZAS PRIMARY KEY (Mueble) 
);

CREATE TABLE PIEZA(
       Codigo_Pieza INT NOT NULL,
       Tipo VARCHAR (45) NOT NULL,
       Costo DECIMAL (7,2) NOT NULL,
       CONSTRAINT PK_PIEZA PRIMARY KEY (Codigo_Pieza)      
);

CREATE TABLE CLIENTE(
       Nit INT NOT NULL,
       Nombre VARCHAR (45) NOT NULL,
       Dirección VARCHAR (45) NOT NULL,
       Municipio VARCHAR (45),
       Departamento VARCHAR (45),
       CONSTRAINT PK_CLIENTE PRIMARY KEY (Nit)
);

CREATE TABLE COMPRA(
       Nit INT NOT NULL,
       Nombre VARCHAR (45) NOT NULL,
       CONSTRAINT PK_COMPRA PRIMARY KEY(Nit,Nombre),
       CONSTRAINT FK_TO_CLIENTE FOREIGN KEY(Nit)
       REFERENCES CLIENTE(Nit),
       CONSTRAINT FK_MUEBLE FOREIGN KEY(Nombre)
       REFERENCES MUEBLE(Nombre)
);

CREATE TABLE ENSAMBLAR_MUEBLE(
       Mueble VARCHAR (45) NOT NULL,
       Usuario VARCHAR (25) NOT NULL,
       Fecha DATE NOT NULL,
       CONSTRAINT PK_ENSAMBLAR_MUEBLE PRIMARY KEY (Mueble,Usuario)
);
