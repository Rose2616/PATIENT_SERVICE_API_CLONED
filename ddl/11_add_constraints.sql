-- "PhysicianID" BIGINT NOT NULL,
-- "PatientRecordNumber" BIGINT NOT NULL,
-- "MedicationID" BIGINT NOT NULL,
-- "AppointmentID" BIGINT NOT NULL,

ALTER TABLE "prescription"
    ADD CONSTRAINT fk_physician FOREIGN KEY ("PhysicianID") REFERENCES physician ("PhysicianID");
ALTER TABLE "prescription"
    ADD CONSTRAINT fk_patient_record_number 
        FOREIGN KEY ("PatientRecordNumber")
        REFERENCES patient ("PatientRecordNumber");
ALTER TABLE "prescription"
    ADD CONSTRAINT fk_medication FOREIGN KEY ("MedicationID") REFERENCES medication ("MedicationID");
ALTER TABLE "prescription"
    ADD CONSTRAINT fk_appointment FOREIGN KEY ("AppointmentID") REFERENCES appointment ("AppointmentID");