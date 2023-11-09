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