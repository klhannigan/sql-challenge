select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries
on employees.emp_no = salaries.emp_no
order by salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where extract(year from employees.hire_date) = 1986;

select dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from dept_manager
inner join departments
on dept_manager.dept_no = departments.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no
order by dept_manager.dept_no;

select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no = employees.emp_no
inner join departments
on departments.dept_no = dept_emp.dept_no
order by dept_emp.dept_no;

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%'
order by employees.last_name;

select dept_emp.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from dept_emp
inner join departments
on dept_emp.dept_no = departments.dept_no
inner join employees
on employees.emp_no = dept_emp.emp_no
where departments.dept_name = 'Sales'
order by employees.last_name;

select dept_emp.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from dept_emp
inner join departments
on dept_emp.dept_no = departments.dept_no
inner join employees
on employees.emp_no = dept_emp.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
order by employees.last_name;

select employees.last_name, count(last_name) as frequency
from employees
group by employees.last_name
order by frequency desc;