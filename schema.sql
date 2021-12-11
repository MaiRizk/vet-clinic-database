reatedb vet_clinic;

CREATE TABLE animals(id SERIAL PRIMARY kEY, name TEXT NOT NULL, date_of_birth DATE, escape_attempts INT, neutered BOOLEAN, weight_kg DECIMAL, CONSTRAINT species_id FOREIGN KEY(id) REFERENCES species(id), CONSTRAINT owner_id FOREIGN KEY(id) REFERENCES owners(id));
CREATE TABLE owners(id SERIAL PRIMARY kEY, full_name TEXT, age INT);
CREATE TABLE species(id SERIAL PRIMARY KEY, name TEXT);