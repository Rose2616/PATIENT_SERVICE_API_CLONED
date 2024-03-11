-- Table: public.hospital
----Create Location Types for A wing, B wing, C wing, D wing, E wing

--Create Department Types for admissions, diagnostic imaging, emergency, caridology, neurology, oncology, pediatrics, ICU, surgery, maternity, mental health, and billing

--Create Hospital table with the following columns
--Hospital ID is defaulted to 1 and unchanged 
--Department ID
--DepartmentType
--Phone Number
--Email
--Location

-- DROP TABLE IF EXISTS public.hospital;
CREATE TYPE _Location AS ENUM ('A_wing', 'B_wing', 'C_wing', 'D_wing', 'E_wing');
CREATE TYPE _DepartmentType AS ENUM ('admissions', 'administration','food_hospitality','diagnostic_imaging','emergency','cardiology', 'neurology', 'oncology', 'pediatrics', 'ICU', 'surgery', 'maternity', 'mental_health', 'billing');

CREATE TABLE IF NOT EXISTS public.hospital
(
    "HospitalID" bigint NOT NULL DEFAULT 1,
    "DepartmentID" bigint NOT NULL,
    "DepartmentType" _departmenttype NOT NULL,
    "PhoneNumber" bigint NOT NULL,
    "Email" character varying COLLATE pg_catalog."default" NOT NULL,
    "Location" _location NOT NULL,
    CONSTRAINT hospital_pkey PRIMARY KEY ("HospitalID"),
    CONSTRAINT fk_department FOREIGN KEY ("DepartmentID")
        REFERENCES public.department ("DepartmentID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.hospital
    OWNER to postgres;