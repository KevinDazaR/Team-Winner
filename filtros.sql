SHOW TABLES


/* HOMBRES COLOMBIA*/
CREATE VIEW usuarios_hombres_en_colombia AS
SELECT * FROM users WHERE pais = 'Colombia';


SELECT * FROM usuarios_hombres_en_colombia;

/* MUJERES COLOMBIA */

CREATE VIEW usuarios_mujeres_en_colombia AS
SELECT * FROM users WHERE pais = 'Colombia';

SELECT *FROM usuarios_mujeres_en_colombia;


/* CORREO FINALICE EN .NET */

CREATE VIEW usuarios_con_email_terminado_en_net AS
SELECT * FROM users where (correo LIKE '%.net');

SELECT * FROM usuarios_con_email_terminado_en_net;

/* VIEW USERS NO COLOMBIA NO ENCUADOR*/

CREATE VIEW usuarios_no_colombia_no_ecuador AS
SELECT * FROM users where pais <> 'Colombia' AND pais <> 'Ecuador';

SELECT * FROM usuarios_no_colombia_no_ecuador;

DROP VIEW usuarios_no_colombia_no_ecuador;


/*   5)  USER CANTIDAD HOMBRES Y ROCK  */

CREATE VIEW cantidad_hombres_gusta_rock AS
SELECT * FROM users where edad = "20" AND genero = "H" AND musica = "rock";


DROP VIEW cantidad_hombres_gusta_rock;

SELECT *FROM cantidad_hombres_gusta_rock;

/* 6 VIWE users_edades_pais_genero -> Listar los nombres, edad, pais , genero de todos los usuarios que tengan entre 10 y 20 y vivan en panama que sean genero M*/ 

CREATE VIEW users_edades_pais_genero AS
SELECT * FROM users where edad >= 10 AND edad <=20 AND pais = "panama" and genero = "M";

SELECT *FROM users_edades_pais_genero;

/* 7. SP_ELIMINAR_CORREO -> Crear un procedimiento almacenado que me permita eliminar un usuario por correo electrónico.*/

SELECT  *FROM users;