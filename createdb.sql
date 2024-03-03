-- create database school;
-- create table students(id int primary key auto_increment,student_name varchar(255));
-- insert into students (student_name)values
-- ("Celeb"),("Samantha"),("Raj"),("Carlos"),("Lisa");
-- create table papers(title varchar(255),grade int,student_id int,Foreign key (student_id) references students(id));
-- insert into papers(title,grade,student_id)values
-- ("Java",60,1),
-- ("Python",75,1),
-- ("Flutter",95,2),
-- ("React",98,2),
-- ("CPP",89,4);

-- task1
-- select student_name,title,grade from students
-- join papers on papers.student_id = students.id order by grade desc;

-- task2
-- select student_name,title,grade from students
-- left join papers on papers.student_id = students.id;

-- select student_name,title,grade from students
-- left join papers on papers.student_id = students.id;

-- task4
-- select student_name,ifnull(avg(grade),0) as average_grade from students
-- left join papers on papers.student_id = students.id group by student_name order by average_grade desc;

-- task3
-- select student_name,ifnull(title,"missing") as sub,ifnull(grade,0) as grades from students
-- left join papers on papers.student_id = students.id;

-- task5
-- select student_name,ifnull(grade,0) as grades,ifnull(title,"missing") as sub, 
-- case 
--     when grade >= 75 then "pass"
-- else 
--     "fail"
-- end as passing_status
-- from students
-- left join papers on papers.student_id = students.id;
-- select 
--     student_name,
--     ifnull(grade,0) as grade, 
--     case 
--         when grade >= 75 then "pass"
--     else 
--         "fail"
--     end as passing_status
-- from students
-- left join papers on papers.student_id = students.id;
-- select 
--     student_name,
--     ifnull(avg(grade),0) as grades, 
--     case 
--         when avg(grade) >= 75 then "pass"
--     else 
--         "fail"
--     end as passing_status
-- from students
-- left join papers on papers.student_id = students.id group by student_name order by grades desc;
