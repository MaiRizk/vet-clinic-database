/*Queries that provide answers to the questions from all projects.*/

SELECT name FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered = 'yes' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = 'yes';
SELECT * FROM animals EXCEPT SELECT * FROM animals WHERE name = 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
RENAME COLUMN species TO unspecified;
ROLLBACK;

BEGIN;
RENAME COLUMN species TO digimon WHERE name LIKE "%mon";
RENAME COLUMN species TO pokemon WHERE species IS NULL;
COMMIT; 

BEGIN;
DROP TABLE animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT BIRTH_DATE_DELETION;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT BIRTH_DATE_DELETION;
UPDATE animals SELECT weight_kg = weight_kg *  -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
SELECT * FROM animals WHERE neutered = 'yes';
SELECT * FROM animals WHERE neutered = 'no';
SELECT MIN(weight_kg) FROM animals;
SELECT MAX(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01'; 