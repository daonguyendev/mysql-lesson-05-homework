/*create database or schema*/
create database if not exists student_management;/*way 1*/
create schema if not exists student_management;/*way 2*/

/*drop database or schema if incorrect*/
drop database if exists student_management;/*way 1*/
drop schema if exists student_management;/*way 2*/

/*create student table include fields: id, full_name, gender, age, city, weight*/
create table if not exists student_management.student (
	id int not null auto_increment primary key,
    full_name varchar(50) not null,
    gender varchar(3),
    age int,
    city varchar(20),
    weight float
);

/*set character as utf8mb4 for student_management database*/
alter database student_management character set utf8mb4 collate utf8mb4_general_ci;

/*add 7 rows in student table*/
insert into student_management.student (full_name, gender, age, city, weight) values 
('Nguyen Thanh Nhan', 'Nam', 19, 'Can Tho', 56.5674), 
('Pham Thu Huong', 'Nu', 20, 'Vinh Long', 72.456),
('Nguyen Nhu Ngoc', 'Nu', 20, 'Soc Trang', 85.387),
('Bui Thanh Bao', 'Nam', 19, 'Soc Trang', 49.3),
('Le My Nhan', 'Nu', 22, 'Can Tho', 62.963),
('Tan Thuc Bao', 'Nam', 35, 'An Giang', 55.5678),
('Trinh Giao Kim', 'Nam', 44, 'Bac Lieu', 67.34);

/*select values in student table*/
select * from student_management.student;
select id, full_name from student_management.student where id = 3 and id = 4; /*incorrect statement*/
select id, full_name from student_management.student where id = 3 or id = 4; /*correct statement*/
select id, full_name from student_management.student where id in (3, 4); /*short correct statement*/