USE geografia;

SELECT chr(65) FROM dual;

SELECT nombre, INSTR(nombre, chr(65)) FROM provincias;
SELECT nombre, INSTR(nombre, "a") FROM provincias;

select * from comunidades;
select * from localidades;
select * from provincias;


SELECT nombre from provincias;
SELECT id_localidad, nombre from localidades;

SELECT n_provincia, nombre from provincias where id_capital=2896;

SELECT  id_localidad, l.nombre as localidad, p.n_provincia, p.nombre as provincia, poblacion
from localidades l
         join provincias p on l.id_localidad = p.id_capital
ORDER BY poblacion;

SELECT nombre from provincias where nombre LIKE upper('a%');

SELECT nombre from localidades where nombre LIKE upper('a%');