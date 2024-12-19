USE db_zooTest2
GO

-- Assignment 1 --
SELECT * FROM tbl_habitat;

SELECT species_name FROM tbl_species
WHERE species_order = 3;

SELECT nutrition_type, nutrition_cost FROM tbl_nutrition
WHERE nutrition_cost <= 600;


-- ASSIGNMENT 4 --
SELECT species_name
FROM tbl_species
INNER JOIN tbl_nutrition ON nutrition_id = species_nutrition
WHERE nutrition_id IN (2202, 2203, 2204, 2205, 2206)
;


-- Assignment 5 --
SELECT species_name AS 'Species Name', nutrition_type AS 'Nutrition Type' 
FROM tbl_species
INNER JOIN tbl_nutrition ON nutrition_id = species_nutrition
;


-- Assignment 6 --
SELECT specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist
INNER JOIN tbl_care ON tbl_care.care_specialist = tbl_specialist.specialist_id
INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id
WHERE species_name = 'Penguin'
;


-- SSMS ASSIGNMENT --
BEGIN TRY
	SELECT 1000/0 AS Result;
END TRY

BEGIN CATCH
	SELECT
		ERROR_NUMBER() AS [Error_Code],
		ERROR_PROCEDURE() AS [Invalid_PROC],
		ERROR_MESSAGE() AS [Error_Details];
END CATCH
