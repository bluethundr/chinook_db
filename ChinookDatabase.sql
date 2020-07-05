CREATE TABLE public.user_info (
     id INT PRIMARY KEY,
	 name VARCHAR(25),
	 joined DATE,
	 email TEXT
);

CREATE TABLE public.event_info(
     id INT PRIMARY KEY,
	 name TEXT
);

CREATE TABLE public.event_log(
     event_key SERIAL PRIMARY KEY,
	 event_id INT,
     user_id INT,
     time TIMESTAMP,
     FOREIGN KEY (event_id) REFERENCES event_info(id),
	 FOREIGN KEY (user_id) REFERENCES user_info(id)
);

CREATE TYPE day_of_week AS ENUM ('Monday', 'Tuesday', 'Wednesday' , 'Thursday', 'Friday', 'Saturday');

CREATE TABLE public.test_table (
    student_id INT,
	week_day day_of_week,
	key SERIAL PRIMARY KEY
);

