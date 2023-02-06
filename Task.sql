DROP TABLE IF EXISTS public.employees;
DROP TABLE IF EXISTS public."position";
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS public."contracts";

CREATE TABLE public.employees
(
    employees_id integer NOT NULL,
    first_name character varying(128) NOT NULL,
    middle_name character varying(128),
    last_name character varying(128) NOT NULL,
    born date,
    other text,
    PRIMARY KEY (employees_id)
);

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;

CREATE TABLE departments
(
	departments_id int PRIMARY KEY,
	name text NOT NULL
);

INSERT INTO employees (employees_id, first_name, last_name)
VALUES
	(1,'Давид','Манукян'),
	(2,'Давид','Микеланджело'),
	(3, 'Николай', 'Рихтер'),
	(4, 'Богдан', 'Шинкарев')
;
INSERT INTO employees (employees_id, first_name, middle_name, last_name, born, other)
VALUES
	(5,'Марина','Андреевна','Коротыгина','24-02-1985','Hope in better'),
	(6,'Дмитрий','Павлович','Пушкин','13-08-1984','Has no email'),
	(7,'Петр','Канатбекович','Азаматов','4-07-1986','id: 132123461'),
	(8,'Динара','Сергеевна','Азаматова','01-02-1988','sdfsdaf@gmaol.com')
;
INSERT INTO departments (departments_id, name)
VALUES
	(1,'Снабжение'),
	(2,'Разработка'),
	(3,'Логистика');
	
CREATE TABLE public."position"
(
    position_id serial NOT NULL,
    name character varying(128) NOT NULL,
    PRIMARY KEY (position_id)
);

ALTER TABLE IF EXISTS public."position"
    OWNER to postgres;

CREATE TABLE public."contracts"
(
    contracts_id serial NOT NULL,
    startdate date NOT NULL,
	employees_id int NOT NULL,
	departments_id int NOT NULL,
	position_id int NOT NULL,
	enddate date,
	salary float,
    PRIMARY KEY (contracts_id)
);
INSERT INTO public."contracts" (startdate,employees_id,departments_id,position_id,salary)
VALUES
	('01-01-2020',1,1,1,50000),
	('01-01-2021',2,2,2,60000),
	('01-01-2022',3,1,1,70000),
	('01-08-2020',4,1,2,80000),
	('15-01-2020',5,1,3,90000),
	('31-03-2022',6,1,1,100000);

ALTER TABLE IF EXISTS public."contracts"
    OWNER to postgres;
	
INSERT INTO public."position" (position_id,name)
VALUES
	(1,'Менеджер'),
	(2,'Дизайнер'),
	(3,'Водитель');

SELECT *
FROM public.employees


