-- Change DOB column to use dates
ALTER TABLE public."patient" ALTER COLUMN "DOB" TYPE DATE
USING to_date("DOB"::text, 'YYYY-MM-DD');
