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

   CREATE TABLE appointments
   (
    appointid INT PRIMARY KEY,
    animalid_fk INT,
    appointdate DATE NOT NULL,
    reason VARCHAR(255) NOT NULL,

    FOREIGN KEY (animalid_fk) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices
(
   invoiceid INT PRIMARY KEY,
   paymentdate TIME NOT NULL,
   totalamount NUMERIC(10,2) NOT NULL,
   appointi_fk INT,

   FOREIGN KEY (appointid_fk) REFERENCES appointments(appointid)
   
   );

   CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid_fk INT,
    recorddate TIMESTAMP NOT NULL,
    doctorid_fk INT,
    diagnosis TEXT NOT NULL,
    prescription TEXT NOT NULL,
    notes TEXT NOT NULL,

    FOREIGN KEY (animalid_fk) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid_fk) REFERENCES doctors(doctorid)
);
