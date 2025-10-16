

CREATE DATABASE thur_example;


use thur_example;


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO users (username, email) VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('carol', 'carol@example.com');


create table products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
)



CREATE TABLE EMPLOYEES(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
)


INSERT INTO EMPLOYEES (name, email, department, salary) VALUES
('jill Johnson', 'jill.johnson@example.com', 'Marketing', 52000),
('jack White', 'jack.white@example.com', 'Finance', 58000),
('anna Nowak', 'anna.nowak@example.com', 'HR', 56000),
('adam Kowalski', 'adam.kowalski@example.com', 'Sales', 54000),
('ewa Nowak', 'ewa.nowak@example.com', 'Marketing', 57000),
('marek Kowalski', 'marek.kowalski@example.com', 'IT', 59000),
('monika Nowak', 'monika.nowak@example.com', 'HR', 51000),
('piotr Kowalski', 'piotr.kowalski@example.com', 'Sales', 50000),
('anna Nowak', 'anna.nowak@example.com', 'Marketing', 52000);







show tables;

select * from users;

SELECT username, email FROM users;
select name, salary, department from employees;


create view view_a as select name, department, salary from employees;
create view_b as select name, salary from employees where salary > 55000;



##Constarit Types

select * from employees;

CREATE TABLE children (
    eid VARCHAR(20) PRIMARY KEY,
    age INT CHECK (age > 18),
    gender CHAR(1) CHECK (gender = 'M' OR gender = 'F'),
    DOJ TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ename VARCHAR(20),
    email VARCHAR(100),
    telno INT,
    salary INT,
    designation VARCHAR(20)
);

ALTER TABLE children ADD CONSTRAINT fk_employee FOREIGN KEY (eid) REFERENCES employees(id);