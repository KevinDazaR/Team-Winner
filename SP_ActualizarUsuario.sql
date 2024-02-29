/* 8. CREAR UN PROCEDIMIENTO ALMACENADO QUE ME PERMITA ACTUALIZAR EL GENERO MUSICAL A "CARRANGA" A TODAS LAS PERSONAS ENTRE 22 Y 32 AÑOS*/

CREATE PROCEDURE ActualizarUsuarioEntre22Y32Años()
BEGIN
    UPDATE users 
    SET musica = "carranga"
    WHERE edad >= 22 and edad <= 32;
END;



CALL ActualizarUsuarioEntre22Y32Años;

SELECT * FROM users WHERE edad >= 22 and edad <= 32;
