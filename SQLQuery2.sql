/* ZOO DATABASE ASSIGNMENT 1 */
USE db_zoo

SELECT * FROM tbl_habitat;

/* ZOO DATABASE ASSIGNMENT 2 */
USE db_zoo

SELECT especies_name, species_order
FROM tbl_species
WHERE species_order = 3;

SELECT * FROM tbl_species;

/* ZOO DATABASE ASSIGNMENT 3 */
USE db_zoo

SELECT nutrition_type, nutrition_cost
FROM tbl_nutrition
WHERE nutrition_cost <= 600;

SELECT * FROM tbl_nutrition;

/* ZOO DATABASE ASSIGNMENT 4 */
USE db_zoo

SELECT especies_name, species_nutrition
FROM tbl_species
WHERE species_nutrition BETWEEN 2202 AND 2206;

SELECT * FROM tbl_species;

/* ZOO DATABASE ASSIGNMENT 5 */
USE db_zoo

SELECT * FROM tbl_species;
SELECT * FROM tbl_nutrition;

SELECT 
	especies_name AS 'Species Name', nutrition_type AS 'Nutrition Type'
FROM tbl_species, tbl_nutrition


/* ZOO DATABASE ASSIGNMENT 6 */
USE db_zoo

GO
SELECT * FROM tbl_specialist;
SELECT * FROM tbl_species;
SELECT * FROM tbl_care;

SELECT 
	a1.specialist_fname, a1.specialist_lname, a1.specialist_contact
FROM 
	tbl_specialist a1 
	INNER JOIN tbl_care a2 ON a2.care_specialist=a1.specialist_id
	INNER JOIN tbl_species a3 ON a3.species_care=a2.care_id
WHERE 
	a3.especies_name='penguin'
;