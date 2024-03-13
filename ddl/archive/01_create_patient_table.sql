-- Table: public.patient

-- DROP TABLE IF EXISTS public.patient;

CREATE TABLE IF NOT EXISTS public."patient"
(
    "PatientRecordNumber" bigint NOT NULL,
    "Firstname" character varying COLLATE pg_catalog."default",
    "Lastname" character varying COLLATE pg_catalog."default",
    -- TODO: // add encryption
    "SSN" character varying(11)[] COLLATE pg_catalog."default" NOT NULL,
    "DOB" character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    "Gender" character varying COLLATE pg_catalog."default",
    "Address" character varying COLLATE pg_catalog."default",
    "PhysicianID" bigint NOT NULL,
    CONSTRAINT patient_pkey PRIMARY KEY ("PatientRecordNumber")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.patient
    OWNER to postgres;