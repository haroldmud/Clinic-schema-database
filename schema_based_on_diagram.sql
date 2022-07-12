CREATE TABLE medical_histories ( ID SERIAL PRIMARY KEY, admitted_at TIMESTAMP, patient_Id INT, status VARCHAR, 
CONSTRAINT fk_medical_histories FOREIGN KEY(ID) REFERENCES medical_histories(ID));
CREATE TABLE patients ( ID SERIAL PRIMARY KEY, name VARCHAR, date_of_birth DATE, CONSTRAINT fk_patients FOREIGN KEY(ID) REFERENCES patients(ID));
CREATE TABLE MedTreatment ( ID SERIAL PRIMARY KEY, medical_history_id INT );  ---> child table
CREATE TABLE treatments ( ID SERIAL PRIMARY KEY, type VARCHAR, NAME varchar, CONSTRAINT fk_treatment FOREIGN KEY(ID) REFERENCES treatments(ID));
CREATE TABLE invoices_items ( ID SERIAL PRIMARY KEY, unit_price DECIMAL, quantity INT, total_price DECIMAL, invoice_id INT, treatment_id INT); ---> child table of invoices and treatments
CREATE TABLE invoices ( ID SERIAL PRIMARY KEY, total_amount DECIMAL, generated_at TIMESTAMP, payed_at TIMESTAMP, medical_history_id INT, CONSTRAINT fk_invoices FOREIGN KEY (ID) REFERENCES invoices(ID));























CREATE TABLE patients ( ID SERIAL PRIMARY KEY )
CREATE TABLE visits (id SERIAL PRIMARY KEY, animal varchar(100), vet varchar(100), visit_date date, animals_id INT, vets_id, CONSTRAINT fk_visit_animals FOREIGN KEY(animals_id) REFERENCES animals(ID), CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id) );