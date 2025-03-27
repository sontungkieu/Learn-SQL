create table "departments"(
  "department_id" int,
  "department_name" varchar(30),
  "manager_id" int,
  "location_id" int
  primary key ("department_id")
  foreign key location_id references locations(location_id)
)

create table "job_history"(
  "employee_id" int,
  "start_date" date,
  "end_date" date?,
  "job_id" varchar(10)?,
  "department_id" int,
  primary key("employee_id","start_date"),
  foreign key (employee_id)
  foreign key ("department_id") references "departments"("department_id")
)

create table "locations"(
  "location_id" int,
  "street_address" varchar(25)?,
  postal_code varchar(12)?,
  city varchar(30)?,
  state_province varchar(25)?,
  country_id varchar(2)?
  primary key (location_id)
  foreign key (country_id) references countries(country_id)
  foreign key (job_id) references jobs(job_id)
)

create table countries(
  country_id varchar(2)?,
  country_name varchar(40)?,
  region_id int?
  primary key (country_id)
  foreign key (region_id) references regions(region_id)
)

create table regions(
  "region_id" int,
  region_name varchar(25)?
  primary key (region_id)
)

create table employees(
  "employee_id" int,
  first_name varchar(20)?,
  last_name varchar(25)?,
  email varchar(25)?,
  phone_number varchar(20)?,
  hire_date date?,
  job_id varchar(10)?,
  salary int?,
  commission_pct decimal(18,3),
  manager_id int?,
  department_id int?,
  primary key (employee_id)
  foreign key (employee_id) references job_history(employee_id)
  foreign key (job_id) references jobs(job_id)
)

create table jobs(
  job_id varchar(10),
  job_title varchar(35)?,
  min_salary int?,
  max_salary int?,
  primary key job_id
)

create table job_grades(
  grade_level varchar(2),
  lowest_sal int?,
  highest_sal int?,
  primary key (grade_level)
)










