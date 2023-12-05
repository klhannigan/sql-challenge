create table departments (
	dept_no VARCHAR primary key not NULL,
	dept_name VARCHAR not NULL
);

create table titles (
    title_id VARCHAR primary key not NULL,
    title VARCHAR not NULL
);

create table employees (
    emp_no INT primary key not NULL,
    emp_title_id VARCHAR not NULL,
    birth_date DATE not NULL,
    first_name VARCHAR not NULL,
    last_name VARCHAR not NULL,
    sex VARCHAR not NULL,
    hire_date DATE not NULL,
	foreign key(emp_title_id) references titles(title_id)
);

create table dept_emp (
    emp_no INT not NULL,
    dept_no VARCHAR not NULL,
    foreign key(emp_no) references employees(emp_no),
    foreign key(dept_no) references departments(dept_no)
);

create table dept_manager (
    dept_no VARCHAR not NULL,
    emp_no INT not NULL,
    foreign key(dept_no) references departments(dept_no),
    foreign key(emp_no) references employees(emp_no)
);

create table salaries (
    emp_no INT not NULL,
    salary INT not NULL,
    foreign key(emp_no) references employees(emp_no)
);