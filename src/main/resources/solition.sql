--1
CREATE TABLE doctor(
id bigint GENERATED ALWAYS AS IDENTITY primary key,
name character varying,
surname character varying,
proficiency character varying
);
--2
CREATE TABLE nurse(
id bigint GENERATED ALWAYS AS IDENTITY primary key,
name character varying,
surname character varying,
proficiency character varying
);
--3
CREATE TABLE patient(
id bigint GENERATED ALWAYS AS IDENTITY primary key,
name character varying,
surname character varying,
email character varying,
complaint text
);
CREATE TABLE surgery(
id bigint GENERATED ALWAYS AS IDENTITY primary key,
nurse_id bigint,
patient_id bigint,
doctor_id bigint,
foreign key(nurse_id ) references nurse(id),
foreign key(patient_id) references patient(id),
foreign key(doctor_id) references doctor(id)
);

CREATE TABLE operation(
id bigint GENERATED ALWAYS AS IDENTITY primary key,
patient_id bigint,
doctor_id bigint,
foreign key(patient_id) references patient(id),
foreign key(doctor_id) references doctor(id)
);
DROP TABLE surgery CASCADE;
DROP TABLE operation CASCADE;
DROP TABLE nurse,doctor,patient;