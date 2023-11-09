CREATE DATABASE veterinary;

CREATE TABLE owner
(
    ownerid INT,
    ofirstname VARCHAR(50) NOT NULL,
    olastname VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,

    PRIMARY KEY (ownerid)
);

CREATE TABLE animals
(
   animalid INT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   species VARCHAR(50) NOT NULL,
   breed VARCHAR(50) NOT NULL,
   dateofbirth DATE,
   gender VARCHAR(10) NOT NULL,
   color VARCHAR(50) NOT NULL,
   ownerid_fk INT,
   
   FOREIGN KEY (ownerid_fk) REFERENCES owners(ownerid)
   
   );