
CREATE DATABASE Ddlap;
USE Ddlap;

CREATE TABLE Estado(
    id INT NOT NULL PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    pc_id INT,
    FOREIGN KEY (pc_id) REFERENCES Pc(id)
);

CREATE TABLE Pc(
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    nserie VARCHAR(255) NOT NULL,
    teclado BOOLEAN NOT NULL,
    mouse BOOLEAN NOT NULL,
    observacion VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

 
 Drop database Ddlap;