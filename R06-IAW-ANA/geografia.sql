create database geografia;
use geografia;
create table localidades(
  id_localidad int(5),
  nombre varchar(50) not null,
  poblacion int(8),
  n_provincia int(2) not null,
  constraint localidades_pk primary key(id_localidad)
);

create  table provincias(
  n_provincia int(2),
  nombre varchar(25) not null,
  superficie int(5),
  id_capital int(5) not null,
  id_comunidad int(2) not null,
  constraint provincias_pk primary key(n_provincia),
  constraint provincias_uk1 unique(nombre),
  constraint provincias_fk1 foreign key(id_capital) 
              references localidades(id_localidad),
  constraint provincias_uk2 unique(id_capital)	
);


create table comunidades(
  id_comunidad int(2),
  nombre varchar(25) not null,
  id_capital int(5) not null,
  max_provincias int(1),
  constraint comunidades_pk primary key(id_comunidad),
  constraint comunidades_uk1 unique(nombre), 
  constraint comunidades_fk1 foreign key(id_capital) references localidades(id_localidad),
  constraint comunidades_uk2 unique(id_capital)
  
);

alter table localidades add constraint localidades_fk 
    foreign key(n_provincia) references provincias(n_provincia);

alter table provincias add constraint provincias_fk2
    foreign key(id_comunidad) references comunidades(id_comunidad);

set foreign_key_checks=0;

INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
1, 'Galicia', 3096, 4); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
2, 'La Rioja', 5383, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
3, 'Extremadura', 5936, 2); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
4, 'Castilla y León', 4458, 9); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
5, 'Asturias', 3221, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
6, 'Cantabria', 6300, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
7, 'País Vasco', 6570, 3); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
8, 'Navarra', 6787, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
9, 'Aragón', 7137, 3); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
10, 'Cataluña', 7597, 4); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
11, 'Madrid', 8531, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
12, 'Castilla La Mancha', 8985, 5); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
13, 'Andalucía', 10093, 8); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
14, 'Comunidad Valenciana', 11951, 3);  
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
15, 'Región de Murcia', 12030, 1);  
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
16, 'Canarias', 12138, 2);  
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
17, 'Baleares', 12341, 1);  
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
18, 'Ceuta', 12400, 1); 
INSERT INTO comunidades ( id_comunidad, nombre, id_capital,
max_provincias ) VALUES ( 
19, 'Melilla', 12402, 1); 

commit;

INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
1, 'Álava', 3047, 7, 6570); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
2, 'Albacete', 14862, 12, 8734); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
3, 'Alicante', 5816, 14, 11113); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
4, 'Almería', 8774, 13, 10162); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
5, 'Ávila', 8050, 4, 5061); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
6, 'Badajoz', 21766, 3, 5868); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
7, 'Baleares', 4992, 17, 12341); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
8, 'Barcelona', 7733, 10, 7597); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
9, 'Burgos', 14292, 4, 3707); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
10, 'Cáceres', 19868, 3, 5506); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
11, 'Cádiz', 7435, 13, 10312); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
12, 'Castellón', 6632, 14, 11536); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
13, 'Ciudad Real', 19813, 12, 8665); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
14, 'Córdoba', 13769, 13, 10420); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
15, 'Coruña', 7921, 1, 3048); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
16, 'Cuenca', 17061, 12, 9091); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
17, 'Gerona', 5886, 10, 8191); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
18, 'Granada', 12635, 13, 10573); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
19, 'Guadalajara', 12190, 12, 9366); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
20, 'Guipuzcoa', 1997, 7, 6400); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
21, 'Huelva', 10148, 13, 10740); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
22, 'Huesca', 15671, 9, 7475); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
23, 'Jaén', 13489, 13, 10847); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
24, 'León', 15581, 4, 3338); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
25, 'Lérida', 12028, 10, 7993); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
26, 'La Rioja', 5045, 2, 5383); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
27, 'Lugo', 9856, 1, 3139); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
28, 'Madrid', 8028, 11, 8531); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
29, 'Málaga', 7308, 13, 10967); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
30, 'Murcia', 11313, 15, 12030); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
31, 'Navarra', 10391, 8, 6787); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
32, 'Ourense', 7273, 1, 2976); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
33, 'Oviedo', 10604, 5, 3221); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
34, 'Palencia', 8052, 4, 3560); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
35, 'Las Palmas', 4066, 16, 12216); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
36, 'Pontevedra', 4495, 1, 2906); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
37, 'Salamanca', 12350, 4, 4942); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
38, 'Santa Cruz de Tenerife', 3381, 16, 12138); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
39, 'Cantabria', 5321, 6, 6300); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
40, 'Segovia', 6921, 4, 6190); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
41, 'Sevilla', 14042, 13, 10093); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
42, 'Soria', 10306, 4, 4646); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
43, 'Tarragona', 6283, 10, 8489); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
44, 'Teruel', 14785, 9, 7329); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
45, 'Toledo', 15368, 12, 8985); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
46, 'Valencia', 10763, 14, 11951); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
47, 'Valladolid', 8028, 4, 4458); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
48, 'Vizcaya', 2217, 7, 6442); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
49, 'Zamora', 10561, 4, 4277); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
50, 'Zaragoza', 17252, 9, 7137); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
51, 'Ceuta', 17, 18, 12400); 
INSERT INTO provincias ( n_provincia, nombre, superficie, id_comunidad,
id_capital ) VALUES ( 
52, 'Melilla', 12, 19, 12402); 
commit;
 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3377, 'Riego de la Vega', 1240, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3378, 'Riello', 1263, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3379, 'Rioseco de Tapia', 627, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3380, 'Robla, La', 5554, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3381, 'Roperuelos del Páramo', 920, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3382, 'Sabero', 2272, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3383, 'Sahagún', 3349, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3384, 'San Adrián del Valle', 224, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3385, 'San Andrés del Rabanedo', 22134, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3386, 'San Cristóbal de la Polantera', 1218, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3387, 'San Emiliano', 1038, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3388, 'San Esteban de Nogales', 540, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3389, 'San Justo de la Vega', 2397, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3390, 'San Millán de los Caballeros', 216, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3391, 'San Pedro Bercianos', 425, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3392, 'Sancedo', 691, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3393, 'Santa Colomba de Curueño', 779, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3394, 'Santa Colomba de Somoza', 506, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3395, 'Santa Cristina de Valmadrigal', 441, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3396, 'Santa Elena de Jamuz', 1573, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3397, 'Santa María de la Isla', 799, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3398, 'Santa María de Ordás', 519, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3399, 'Santa María del Monte de Cea', 465, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3400, 'Santa María del Páramo', 3219, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3401, 'Santa Marina del Rey', 2752, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3402, 'Santas Martas', 1158, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3403, 'Santiago Millas', 423, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3404, 'Santovenia de la Valdoncina', 1403, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3405, 'Sariegos', 1863, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3406, 'Sena de Luna', 594, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3408, 'Soto de la Vega', 2144, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3409, 'Soto y Amío', 1287, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3410, 'Toral de los Guzmanes', 776, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3411, 'Toreno', 4995, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3412, 'Torre del Bierzo', 3632, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3413, 'Trabadelo', 715, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3414, 'Truchas', 1136, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3415, 'Turcia', 1550, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3416, 'Urdiales del Páramo', 850, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3417, 'Val de San Lorenzo', 844, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3418, 'Valdefresno', 1660, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3419, 'Valdefuentes del Páramo', 523, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3420, 'Valdelugueros', 473, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3421, 'Valdemora', 131, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3422, 'Valdepiélago', 475, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3423, 'Valdepolo', 1783, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3424, 'Valderas', 2367, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3425, 'Valderrey', 730, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3426, 'Valderrueda', 1522, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3427, 'Valdesamario', 348, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3428, 'Valdevimbre', 1342, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3429, 'Valencia de Don Juan', 3852, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3430, 'Valverde de la Virgen', 3901, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3431, 'Valverde-Enrique', 270, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3432, 'Vallecillo', 209, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3433, 'Vecilla, La', 464, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3434, 'Vega de Espinareda', 3222, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3435, 'Vega de Infanzones', 909, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3436, 'Vega de Valcarce', 1110, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3437, 'Vegacervera', 416, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3438, 'Vegaquemada', 645, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3439, 'Vegas del Condado', 1602, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3440, 'Villablino', 15978, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3441, 'Villabraz', 187, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3442, 'Villadangos del Páramo', 1034, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3443, 'Villadecanes', 2497, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3444, 'Villademor de la Vega', 530, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3445, 'Villafranca del Bierzo', 4262, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3446, 'Villagatón', 1010, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3447, 'Villamandos', 515, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3448, 'Villamanín', 1486, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3449, 'Villamañán', 1628, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3450, 'Villamartín de Don Sancho', 243, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3451, 'Villamejil', 1082, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3452, 'Villamol', 280, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3453, 'Villamontán de la Valduerna', 1243, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3454, 'Villamoratiel de las Matas', 222, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3455, 'Villanueva de las Manzanas', 695, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3456, 'Villaobispo de Otero', 800, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3457, 'Villaornate y Castro', 602, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3458, 'Villaquejida', 1124, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3459, 'Villaquilambre', 6494, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3460, 'Villarejo de Orbigo', 3696, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3461, 'Villares de Orbigo', 1044, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3462, 'Villasabariego', 1273, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3463, 'Villaselán', 369, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3464, 'Villaturiel', 1786, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3465, 'Villazala', 1203, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3466, 'Villazanzo de Valderaduey', 792, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3467, 'Zotes del Páramo', 785, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3468, 'Abarca de Campos', 54, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3469, 'Abia de las Torres', 239, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3470, 'Aguilar de Campoo', 7925, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3471, 'Alar del Rey', 1503, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3472, 'Alba de Cerrato', 129, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3473, 'Amayuelas de Arriba', 49, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3474, 'Ampudia', 804, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3475, 'Amusco', 627, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3476, 'Antigüedad', 466, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3477, 'Arconada', 92, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3478, 'Astudillo', 1421, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3479, 'Autilla del Pino', 299, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3480, 'Autillo de Campos', 220, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3481, 'Ayuela', 100, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3482, 'Baltanás', 1630, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3483, 'Baquerín de Campos', 40, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3484, 'Bárcena de Campos', 67, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3485, 'Barruelo de Santullán', 2128, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3486, 'Báscones de Ojeda', 218, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3487, 'Becerril de Campos', 1212, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3488, 'Belmonte de Campos', 64, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3489, 'Berzosilla', 87, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3490, 'Boada de Campos', 28, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3491, 'Boadilla de Rioseco', 216, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3492, 'Boadilla del Camino', 221, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3493, 'Brañosera', 318, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3494, 'Buenavista de Valdavia', 466, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3495, 'Bustillo de la Vega', 398, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3496, 'Bustillo del Páramo de Carrión', 111, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3497, 'Calahorra de Boedo', 155, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3498, 'Calzada de los Molinos', 413, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3499, 'Capillas', 142, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3500, 'Cardeñosa de Volpejera', 64, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3501, 'Carrión de los Condes', 2522, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3502, 'Castil de Vela', 124, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3503, 'Castrejón de la Peña', 718, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3504, 'Castrillo de Don Juan', 382, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3505, 'Castrillo de Onielo', 202, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3506, 'Castrillo de Villavega', 336, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3507, 'Castromocho', 293, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3508, 'Cervatos de la Cueza', 425, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3509, 'Cervera de Pisuerga', 2891, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3510, 'Cevico de la Torre', 737, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3511, 'Cevico Navero', 327, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3512, 'Cisneros', 677, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3513, 'Cobos de Cerrato', 255, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3514, 'Collazos de Boedo', 176, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3515, 'Congosto de Valdavia', 304, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3516, 'Cordovilla la Real', 159, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3517, 'Cubillas de Cerrato', 118, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3518, 'Dehesa de Montejo', 350, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3519, 'Dehesa de Romanos', 62, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3520, 'Dueñas', 3096, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3521, 'Espinosa de Cerrato', 297, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3522, 'Espinosa de Villagonzalo', 311, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3523, 'Frechilla', 307, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3524, 'Fresno del Río', 221, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3525, 'Frómista', 1073, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3526, 'Fuentes de Nava', 885, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3527, 'Fuentes de Valdepero', 254, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3528, 'Grijota', 808, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3529, 'Guardo', 9242, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3530, 'Guaza de Campos', 97, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3531, 'Hérmedes de Cerrato', 168, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3532, 'Herrera de Pisuerga', 2827, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3533, 'Herrera de Valdecañas', 199, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3534, 'Hontoria de Cerrato', 129, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3535, 'Hornillos de Cerrato', 167, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3536, 'Husillos', 227, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3537, 'Itero de la Vega', 274, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3538, 'Lagartos', 193, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3539, 'Lantadilla', 623, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3540, 'Ledigos', 121, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3541, 'Loma de Ucieza', 377, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3542, 'Lomas', 69, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3543, 'Magaz de Pisuerga', 724, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3544, 'Manquillos', 87, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3545, 'Mantinos', 218, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3546, 'Marcilla de Campos', 86, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3547, 'Mazariegos', 295, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3548, 'Mazuecos de Valdeginate', 158, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3549, 'Melgar de Yuso', 461, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3550, 'Meneses de Campos', 180, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3551, 'Micieces de Ojeda', 133, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3552, 'Monzón de Campos', 881, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3553, 'Moratinos', 96, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3554, 'Mudá', 163, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3555, 'Nogal de las Huertas', 93, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3556, 'Olea de Boedo', 52, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3557, 'Olmos de Ojeda', 438, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3558, 'Osornillo', 114, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3559, 'Osorno la Mayor', 1875, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3560, 'Palencia', 79867, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3561, 'Palenzuela', 368, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3562, 'Páramo de Boedo', 134, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3563, 'Paredes de Nava', 2596, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3564, 'Payo de Ojeda', 106, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3565, 'Pedraza de Campos', 164, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3566, 'Pedrosa de la Vega', 419, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3567, 'Perales', 156, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3568, 'Pernía, La', 525, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3569, 'Pino del Río', 282, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3570, 'Piña de Campos', 346, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3571, 'Población de Arroyo', 101, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3572, 'Población de Campos', 237, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3573, 'Población de Cerrato', 133, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3574, 'Polentinos', 133, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3575, 'Pomar de Valdivia', 596, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3576, 'Poza de la Vega', 296, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3577, 'Pozo de Urama', 49, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3578, 'Prádanos de Ojeda', 262, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3579, 'Puebla de Valdavia, La', 188, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3580, 'Quintana del Puente', 308, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3581, 'Quintanilla de Onsoña', 288, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3582, 'Reinoso de Cerrato', 101, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3583, 'Renedo de la Vega', 298, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3584, 'Requena de Campos', 57, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3585, 'Respenda de la Peña', 341, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3586, 'Revenga de Campos', 207, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3587, 'Revilla de Collazos', 99, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3588, 'Ribas de Campos', 240, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3589, 'Riberos de la Cueza', 91, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3590, 'Saldaña', 3173, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3591, 'Salinas de Pisuerga', 308, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3592, 'San Cebrián de Campos', 532, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3593, 'San Cebrián de Mudá', 258, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3594, 'San Cristóbal de Boedo', 57, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3595, 'San Mamés de Campos', 135, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3596, 'San Román de la Cuba', 147, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3597, 'Santa Cecilia del Alcor', 184, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3598, 'Santa Cruz de Boedo', 86, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3599, 'Santervás de la Vega', 610, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3600, 'Santibáñez de Ecla', 118, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3623, 'Villabasta de Valdavia', 46, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3624, 'Villacidaler', 91, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3625, 'Villaconancio', 99, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3626, 'Villada', 1402, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3627, 'Villaeles de Valdavia', 101, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3628, 'Villahán', 151, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3629, 'Villaherreros', 322, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3630, 'Villalaco', 87, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3631, 'Villalba de Guardo', 229, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3632, 'Villalcázar de Sirga', 245, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3633, 'Villalcón', 104, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3634, 'Villalobón', 274, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3635, 'Villaluenga de la Vega', 739, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3636, 'Villamartín de Campos', 179, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3637, 'Villamediana', 287, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3638, 'Villameriel', 178, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3639, 'Villamoronta', 352, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3640, 'Villamuera de la Cueza', 93, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3641, 'Villamuriel de Cerrato', 4336, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3642, 'Villanueva del Rebollar', 120, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3643, 'Villanuño de Valdavia', 144, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3644, 'Villaprovedo', 115, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3645, 'Villarmentero de Campos', 24, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3646, 'Villarrabé', 321, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3647, 'Villarramiel', 1222, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3648, 'Villasarracino', 344, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3649, 'Villasila de Valdavia', 122, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3650, 'Villaturde', 308, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3651, 'Villaumbrales', 945, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3652, 'Villaviudas', 489, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3653, 'Villerías de Campos', 139, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3654, 'Villodre', 48, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3655, 'Villodrigo', 143, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3656, 'Villoldo', 539, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3657, 'Villota del Páramo', 509, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3658, 'Villovieco', 142, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3659, 'Abajas', 50, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3660, 'Adrada de Haza', 317, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3661, 'Aguas Cándidas', 104, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3662, 'Aguilar de Bureba', 109, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3663, 'Albillos', 145, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3664, 'Alcocero de Mola', 65, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3665, 'Alfoz de Bricia', 143, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3666, 'Alfoz de Quintanadueñas', 532, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3667, 'Alfoz de Santa Gadea', 160, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3668, 'Altable', 68, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3669, 'Altos, Los', 287, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3670, 'Ameyugo', 64, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3671, 'Anguix', 180, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3672, 'Aranda de Duero', 30431, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3673, 'Arandilla', 222, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3674, 'Arauzo de Miel', 436, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3675, 'Arauzo de Salce', 83, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3676, 'Arauzo de Torre', 119, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3677, 'Arcos', 253, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3678, 'Arenillas de Riopisuerga', 241, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3679, 'Arija', 272, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3680, 'Arlanzón', 412, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3681, 'Arraya de Oca', 55, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3682, 'Atapuerca', 153, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3683, 'Ausines, Los', 130, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3684, 'Avellanosa de Muñó', 198, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3685, 'Baón de Esgueva', 164, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3686, 'Balbases, Los', 390, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3687, 'Baños de Valdearados', 542, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3688, 'Bañuelos de Bureba', 57, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3689, 'Barbadillo de Herreros', 155, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3690, 'Barbadillo del Mercado', 200, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3691, 'Barbadillo del Pez', 119, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3692, 'Barrio de Muñó', 34, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3693, 'Barrios de Bureba, Los', 317, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3694, 'Barrios de Colina', 85, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3695, 'Basconcillos del Tozo', 426, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3696, 'Bascuñana', 83, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3697, 'Belbimbre', 82, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3698, 'Belorado', 2186, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3699, 'Berberana', 106, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3700, 'Berlangas de Roa', 298, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3701, 'Berzosa de Bureba', 54, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3702, 'Bozoó', 109, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3703, 'Brazacorta  ', 99, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3704, 'Briviesca', 6067, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3705, 'Bugedo', 106, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3706, 'Buniel', 149, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3707, 'Burgos', 166732, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3708, 'Busto de Bureba', 293, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3709, 'Cabañes de Esgueva', 298, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3710, 'Cabezón de la Sierra', 89, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3711, 'Cabia', 225, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3712, 'Caleruega', 440, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3713, 'Campillo de Aranda', 191, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3714, 'Campolara', 104, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3715, 'Canicosa de la Sierra', 673, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3716, 'Cantabrana', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3717, 'Carazo', 48, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3718, 'Carcedo de Bureba', 42, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3719, 'Carcedo de Burgos', 133, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3720, 'Cardeñadijo', 354, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3721, 'Cardeñajimeno', 337, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3722, 'Cardeñuela Riopico', 86, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3723, 'Carrias', 53, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3724, 'Cascajares de Bureba', 69, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3725, 'Cascajares de la Sierra', 17, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3726, 'Castellanos de Castro', 71, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3727, 'Castil de Peones', 49, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3728, 'Castildelgado', 90, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3729, 'Castrillo de la Reina', 324, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3730, 'Castrillo de la Vega', 618, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3731, 'Castrillo de Riopisuerga', 101, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3732, 'Castrillo del Val', 258, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3733, 'Castrillo Matajudíos', 84, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3734, 'Castrojeriz', 1138, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3735, 'Cayuela', 113, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3736, 'Cebrecos', 94, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3737, 'Celada del Camino', 100, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3738, 'Cerezo de Rio Tirón', 827, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3739, 'Cerratón de Juarros', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3740, 'Ciadoncha', 144, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3741, 'Cillaperlata', 86, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3742, 'Cilleruelo de Abajo', 381, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3743, 'Cilleruelo de Arriba', 91, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3744, 'Ciruelos de Cervera', 184, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3745, 'Cogollos', 222, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3746, 'Condado de Treviño', 887, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3747, 'Contreras', 111, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3748, 'Coruña del Conde', 170, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3749, 'Covarrubias', 652, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3750, 'Cubillo del Campo', 76, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3751, 'Cubo de Bureba', 143, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3752, 'Cueva de Roa, La', 143, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3753, 'Cuevas de San Clemente', 62, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3754, 'Encío', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3755, 'Espinosa de Cervera', 119, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3756, 'Espinosa de los Monteros', 2426, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3757, 'Espinosa del Camino', 58, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3758, 'Estépar', 867, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3759, 'Fontioso', 102, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3760, 'Frandovínez', 92, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3761, 'Fresneda de la Sierra Tirón', 113, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3762, 'Fresneña', 138, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3763, 'Fresnillo de las Dueñas', 312, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3764, 'Fresno de Río Tirón', 267, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3765, 'Fresno de Rodilla', 32, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3766, 'Frías', 341, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3767, 'Fuentebureba', 112, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3768, 'Fuentecén', 319, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3769, 'Fuentelcésped', 232, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3770, 'Fuentelisendo', 135, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3771, 'Fuentemolinos', 134, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3772, 'Fuentenebro', 216, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3773, 'Fuentespina', 571, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3774, 'Galbarros', 31, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3775, 'Gallega, La', 96, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3776, 'Grijalba', 153, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3777, 'Grisaleña', 59, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3778, 'Gumiel de Hizán', 684, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3779, 'Gumiel de Mercado', 460, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3780, 'Hacinas', 214, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3781, 'Haza', 47, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3782, 'Hontanas', 92, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3783, 'Hontangas', 162, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3784, 'Hontoria de la Cantera', 107, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3785, 'Hontoria de Valdearados', 245, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3786, 'Hontoria del Pinar', 993, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3787, 'Hormazas, Las', 163, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3788, 'Hornillos del Camino', 80, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3789, 'Horra, La', 505, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3790, 'Hortigüela', 117, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3791, 'Hoyales de Roa', 351, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3792, 'Huérmeces', 164, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3793, 'Huerta de Arriba', 204, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3794, 'Huerta del Rey', 1246, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3795, 'Humada', 273, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3796, 'Hurones', 61, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3797, 'Ibeas de Juarros', 875, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3798, 'Ibrillos', 114, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3799, 'Iglesiarrubia', 72, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3800, 'Iglesias', 206, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3801, 'Isar', 459, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3802, 'Itero del Castillo', 135, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3803, 'Jaramillo de la Fuente', 37, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3804, 'Jaramillo Quemado', 16, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3805, 'Junta de Traslaloma', 239, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3806, 'Junta de Villalba de Losa', 107, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3807, 'Jurisdicción de Lara', 82, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3808, 'Jurisdicción de San Zadornil', 91, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3809, 'Lerma', 2584, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3810, 'Llano de Bureba', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3811, 'Madrigal del Monte', 192, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3812, 'Madrigalejo del Monte', 185, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3813, 'Mahamud', 181, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3814, 'Mambrilla de Castrejón', 178, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3815, 'Mambrillas de Lara', 81, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3816, 'Mamolar', 90, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3817, 'Manciles', 48, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3818, 'Mazuela', 91, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3819, 'Mecerreyes', 308, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3820, 'Medina de Pomar', 5756, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3821, 'Melgar de Fernamental', 2165, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3822, 'Merindad de Cuesta-Urria', 573, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3823, 'Merindad de Montija', 1048, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3824, 'Merindad de Río Ubierna', 1235, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3825, 'Merindad de Sotoscueva', 691, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3826, 'Merindad de Valdeporres', 592, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3827, 'Merindad de Valdivielso', 613, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3828, 'Milagros', 464, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3829, 'Miranda de Ebro', 36761, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3830, 'Miraveche', 125, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3831, 'Modúbar de la Emparedada', 218, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3832, 'Monasterio de la Sierra', 36, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3833, 'Monasterio de Rodilla', 207, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3834, 'Moncalvillo', 145, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3835, 'Monterrubio de la Demanda', 96, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3836, 'Montorio', 165, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3837, 'Moradillo de Roa', 241, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3838, 'Nava de Roa', 311, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3839, 'Navas de Bureba', 49, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3840, 'Nebreda', 122, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3841, 'Neila', 241, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3842, 'Olmedillo de Roa', 266, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3843, 'Olmillos de Muñó', 53, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3844, 'Oña', 1840, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3845, 'Oquillas', 78, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3846, 'Orbaneja Riopico', 177, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3847, 'Padilla de Abajo', 114, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3848, 'Padilla de Arriba', 152, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3849, 'Padrones de Bureba', 89, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3850, 'Palacios de la Sierra', 989, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3851, 'Palacios de Riopisuerga', 41, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3852, 'Palazuelos de la Sierra', 68, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3853, 'Palazuelos de Muñó', 78, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3854, 'Pampliega', 458, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3855, 'Pancorvo', 562, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3856, 'Pardilla', 123, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3857, 'Partido de la Sierra en Tobalina', 78, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3858, 'Pedrosa de Duero', 632, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3859, 'Pedrosa de Río Urbel', 314, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3860, 'Pedrosa del Páramo', 121, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3861, 'Pedrosa del Príncipe', 315, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3862, 'Peñaranda de Duero', 654, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3863, 'Peral de Arlanza', 260, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3864, 'Piérnigas', 43, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3865, 'Pineda de la Sierra', 134, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3866, 'Pineda-Trasmonte', 205, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3867, 'Pinilla de los Barruecos', 133, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3868, 'Pinilla de los Moros', 54, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3869, 'Pinilla-Trasmonte', 256, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3870, 'Poza de la Sal', 459, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3871, 'Prádanos de Bureba', 83, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3872, 'Pradoluengo', 1720, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3873, 'Presencio', 354, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3874, 'Puebla de Arganzón, La', 299, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3875, 'Puentedura', 143, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3876, 'Quemada', 261, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3877, 'Quintana del Pidio', 211, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3878, 'Quintanabureba', 49, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3879, 'Quintanaélez', 119, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3880, 'Quintanaortuño', 116, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3881, 'Quintanapalla', 127, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3882, 'Quintanar de la Sierra', 2413, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3883, 'Quintanavides', 81, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3884, 'Quintanilla de la Mata', 175, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3885, 'Quintanilla del Coco', 131, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3886, 'Quintanilla San García', 130, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3887, 'Quintanilla Vivar', 382, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3888, 'Quintanillas, Las', 358, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3889, 'Quintanilla-Tordueles', 650, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3890, 'Rabanera del Pinar', 168, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3891, 'Rábanos', 76, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3892, 'Rabé de las Calzadas', 174, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3893, 'Rebolledo de la Torre', 190, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3894, 'Redecilla del Camino', 154, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3895, 'Redecilla del Campo', 99, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3896, 'Regumiel de la Sierra', 551, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3897, 'Reinoso', 29, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3898, 'Retuerta', 80, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3899, 'Revilla, La', 126, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3900, 'Revilla del Campo', 133, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3901, 'Revillarruz', 165, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3902, 'Revilla-Vallegera', 185, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3903, 'Rezmondo', 26, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3904, 'Riocavado de la Sierra', 77, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3905, 'Roa', 2378, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3906, 'Rojas', 112, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3907, 'Royuela de Río Franco', 379, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3908, 'Rubena', 152, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3909, 'Rublacedo de Abajo', 40, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3910, 'Rucandio', 137, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3911, 'Salas de Bureba', 182, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3912, 'Salas de los Infantes', 2089, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3913, 'Saldaña de Burgos', 115, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3914, 'Salinillas de Bureba', 70, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3915, 'San Adrián de Juarros', 37, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3916, 'San Juan del Monte', 191, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3917, 'San Mamés de Burgos', 168, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3918, 'San Martín de Rubiales', 325, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3919, 'San Millán de Lara', 92, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3920, 'San Vicente del Valle', 31, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3921, 'Santa Cecilia', 148, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3922, 'Santa Cruz de la Salceda', 191, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3923, 'Santa Cruz del Valle Urbión', 130, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3924, 'Santa Gadea del Cid', 230, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3925, 'Santa Inés', 215, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3926, 'Santa María del Campo', 760, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3927, 'Santa María del Invierno', 58, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3928, 'Santa María del Mercadillo', 205, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3929, 'Santa María Rivarredonda', 135, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3930, 'Santa Olalla de Bureba', 45, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3931, 'Santibáñez de Esgueva', 183, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3932, 'Santibáñez del Val', 69, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3933, 'Santo Domingo de Silos', 334, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3934, 'Sargentes de la Lora', 202, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3935, 'Sarracín', 155, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3936, 'Sasamón', 1516, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3937, 'Sequera de Haza, La', 73, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3938, 'Solarana', 130, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3939, 'Sordillos', 44, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3940, 'Sotillo de la Ribera', 630, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3941, 'Sotragero', 131, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3942, 'Sotresgudo', 826, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3943, 'Susinos del Páramo', 56, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3944, 'Tamarón', 50, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3945, 'Tardajos', 756, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3946, 'Tejada', 57, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3947, 'Terradillos de Esgueva', 141, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3948, 'Tinieblas de la Sierra', 38, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3949, 'Tobar', 55, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3950, 'Tordómar', 427, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3951, 'Torrecilla del Monte', 85, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3952, 'Torregalindo', 157, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3953, 'Torrelara', 23, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3954, 'Torrepadre', 180, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3955, 'Torresandino', 813, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3956, 'Tórtoles de Esgueva', 593, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3957, 'Tosantos', 82, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3958, 'Trespaderne', 1186, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3959, 'Tubilla del Agua', 182, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3960, 'Tubilla del Lago', 219, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3961, 'Urbel del Castillo', 109, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3962, 'Vadocondes', 471, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3963, 'Valdeande', 168, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3964, 'Valdezate', 228, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3965, 'Valdorros', 155, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3966, 'Valmala', 34, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3967, 'Vallarta de Bureba', 81, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3968, 'Valle de las Navas', 677, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3969, 'Valle de Losa', 707, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3970, 'Valle de Manzanedo', 140, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3971, 'Valle de Mena', 4689, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3972, 'Valle de Oca', 220, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3973, 'Valle de Santibáñez', 692, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3974, 'Valle de Sedano', 567, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3975, 'Valle de Tobalina', 1107, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3976, 'Valle de Valdebezana', 886, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3977, 'Valle de Valdelaguna', 279, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3978, 'Valle de Valdelucio', 407, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3979, 'Valle de Zamanzas', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3980, 'Vallegera', 60, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3981, 'Valles de Palenzuela', 110, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3982, 'Valluércanes', 135, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3983, 'Vid de Bureba, La', 67, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3984, 'Vid y Barrios, La', 383, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3985, 'Vileña', 51, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3986, 'Viloria de Rioja', 80, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3987, 'Vilviestre del Pinar', 821, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3988, 'Villadiego', 2283, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3989, 'Villaescusa de Roa', 184, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3990, 'Villaescusa la Sombría', 69, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3991, 'Villaespasa', 37, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3992, 'Villafranca Montes de Oca', 218, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3993, 'Villafruela', 335, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3994, 'Villagalijo', 81, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3995, 'Villagonzalo Pedernales', 588, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3996, 'Villahoz', 456, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3997, 'Villalba de Duero', 552, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3998, 'Villalbilla de Burgos', 644, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3999, 'Villalbilla de Gumiel', 149, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4000, 'Villaldemiro', 111, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4001, 'Villalmanzo', 444, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4002, 'Villamayor de los Montes', 291, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4003, 'Villamayor de Treviño', 125, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4004, 'Villambistia', 85, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4005, 'Villamedianilla', 29, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4006, 'Villamiel de la Sierra', 36, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4007, 'Villangómez', 376, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4008, 'Villanueva de Argaño', 115, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4009, 'Villanueva de Carazo', 24, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4010, 'Villanueva de Gumiel', 334, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4011, 'Villanueva de Teba', 75, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4012, 'Villaquirán de la Puebla', 82, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4013, 'Villaquirán de los Infantes', 226, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4014, 'Villarcayo de Merindad de Castilla la Vi', 4162, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4015, 'Villariezo', 161, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4016, 'Villasandino', 301, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4017, 'Villasur de Herreros', 344, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4018, 'Villatuelda', 82, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4019, 'Villaverde del Monte', 200, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4020, 'Villaverde-Mogina', 144, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4021, 'Villayerno Morquillas', 145, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4022, 'Villazopeque', 98, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4023, 'Villegas', 146, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4024, 'Villoruebo', 45, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4025, 'Vizcaínos', 46, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4026, 'Zael', 166, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4027, 'Zarzosa de Río Pisuerga', 81, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4028, 'Zazuar', 294, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4029, 'Zuñeda', 100, 9); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4030, 'Abezames', 120, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4031, 'Alcañices', 1217, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4032, 'Alcubilla de Nogales', 241, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4033, 'Alfaraz de Sayago', 235, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4034, 'Algodre', 231, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4035, 'Almaraz de Duero', 485, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4036, 'Almeida de Sayago', 735, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4037, 'Andavías', 534, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4038, 'Arcenillas', 267, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4039, 'Arcos de la Polvorosa', 322, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4040, 'Argañín', 125, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4041, 'Argujillo', 417, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4042, 'Arquillinos', 196, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4043, 'Arrabalde', 469, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4044, 'Aspariegos', 425, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4045, 'Asturianos', 409, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4046, 'Ayoó de Vidriales', 540, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4047, 'Barcial del Barco', 321, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4048, 'Belver de los Montes', 551, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4049, 'Benavente', 15916, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4050, 'Benegiles', 472, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4051, 'Bermillo de Sayago', 1610, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4052, 'Bóveda de Toro, La', 1038, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4053, 'Bretó', 293, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4054, 'Bretocino', 338, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4055, 'Brime de Sog', 276, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4056, 'Brime de Urz', 187, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4057, 'Burganes de Valverde', 911, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4058, 'Bustillo del Oro', 197, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4059, 'Cabañas de Sayago', 241, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4060, 'Calzadilla de Tera', 604, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4061, 'Camarzana de Tera', 1114, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4062, 'Cañizal', 682, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4063, 'Cañizo', 377, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4064, 'Carbajales de Alba', 750, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4065, 'Carbellino', 282, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4066, 'Casaseca de Campeán', 166, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4067, 'Casaseca de las Chanas', 406, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4068, 'Castrillo de la Guareña', 204, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4069, 'Castrogonzalo', 575, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4070, 'Castronuevo', 393, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4071, 'Castroverde de Campos', 456, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4072, 'Cazurra', 107, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4073, 'Cerecinos de Campos', 491, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4074, 'Cerecinos del Carrizal', 182, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4075, 'Cernadilla', 205, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4076, 'Cobreros', 856, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4077, 'Coomonte', 374, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4078, 'Coreses', 1305, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4079, 'Corrales', 1300, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4080, 'Cotanes', 197, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4081, 'Cubillos', 436, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4082, 'Cubo de Benavente', 247, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4083, 'Cubo de Tierra del Vino, El', 496, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2865, 'Agolada', 5094, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2866, 'Arbo', 5020, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2867, 'Baiona', 10931, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2868, 'Barro', 3679, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2869, 'Bueu', 12918, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2870, 'Caldas de Reis', 9430, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2871, 'Cambados', 13190, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2872, 'Campo Lameiro', 2645, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2873, 'Cangas', 24362, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2874, 'Cañiza, A', 7959, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2875, 'Catoira', 3726, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2876, 'Cerdedo', 3701, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2877, 'Cotobade', 5378, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2878, 'Covelo, O', 4653, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2879, 'Crecente', 4060, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2880, 'Cuntis', 5936, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2881, 'Dozón', 2733, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2882, 'Estrada, A', 22995, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2883, 'Forcarei', 5823, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2884, 'Fornelos', 2482, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2885, 'Gondomar', 11284, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2886, 'Grove, O', 11007, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2887, 'Guarda, A', 10504, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2888, 'Lalín', 21157, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2889, 'Lama, A', 3517, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2890, 'Marín', 25689, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2891, 'Meaño', 5507, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2892, 'Meis', 5087, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2893, 'Moaña', 18307, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2894, 'Mondariz', 6659, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2895, 'Mondariz-Balneario', 667, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2896, 'Moraña', 4793, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2897, 'Mos', 13987, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2898, 'Neves, As', 5320, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2899, 'Nigrán', 15114, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2900, 'Oia', 3220, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2901, 'Pazos de Borbén', 3585, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2902, 'Poio', 13765, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2903, 'Ponteareas', 16567, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2904, 'Ponte-Caldelas', 7997, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2905, 'Pontecesures', 2897, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2906, 'Pontevedra', 77282, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2907, 'Porriño, O', 16274, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2908, 'Portas', 3386, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2909, 'Redondela', 29222, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2910, 'Ribadumia', 4180, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2911, 'Rodeiro', 4854, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2912, 'Rosal, O', 5898, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2913, 'Salceda de Caselas', 6023, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2914, 'Salvaterra de Miño', 9025, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2915, 'Sanxenxo', 15836, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2916, 'Silleda', 10181, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2917, 'Soutomaior', 5122, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2918, 'Tomiño', 10573, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2919, 'Tui', 16144, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2920, 'Valga', 6504, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2921, 'Vigo', 290582, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2922, 'Vila de Cruces', 7628, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2923, 'Vilaboa', 5935, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2924, 'Vilagarcía de Arousa', 34022, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2925, 'Vilanova de Arousa', 15795, 36); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2926, 'Allariz', 5390, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2927, 'Amoeiro', 2355, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2928, 'Arnoia', 1114, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2929, 'Avión', 3536, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2930, 'Baltar', 1820, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2931, 'Bande', 2891, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2932, 'Baños de Molgas', 3060, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2933, 'Barbadás', 4562, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2934, 'Barco de Valdeorras, O', 11712, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2935, 'Beade', 894, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2936, 'Beariz', 1861, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2937, 'Blancos, Os', 1291, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2938, 'Boborás', 3888, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2939, 'Bola, A', 1738, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2940, 'Bolo, O', 1802, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2941, 'Calvos de Randín', 1946, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2942, 'Carballeda', 2662, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2943, 'Carballeda de Avia', 1879, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2944, 'Carballiño, O', 12002, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2945, 'Cartelle', 4257, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2946, 'Castrelo de Miño', 3535, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2947, 'Castrelo do Val', 1470, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2948, 'Castro Caldelas', 2110, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2949, 'Celanova', 6211, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2950, 'Cenlle', 1943, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2951, 'Coles', 3323, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2952, 'Cortegada', 1610, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2953, 'Cualedro', 2745, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2954, 'Chandrexa de Queixa', 1006, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2955, 'Entrimo', 1708, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2956, 'Esgos', 1487, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2957, 'Gomesende', 1368, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2958, 'Gudiña, A', 2014, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2959, 'Irixo, O', 2529, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2960, 'Larouco', 684, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2961, 'Laza', 2290, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2962, 'Leiro', 2192, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2963, 'Lobeira', 1458, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2964, 'Lobios', 3090, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2965, 'Maceda', 3470, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2966, 'Manzaneda', 1594, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2967, 'Maside', 3571, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2968, 'Melón', 1728, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2969, 'Merca, A', 2706, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2970, 'Mezquita, A', 1844, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2971, 'Montederramo', 1478, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2972, 'Monterrei', 3759, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2973, 'Muíños', 2381, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2974, 'Nogueira de Ramuín', 2847, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2975, 'Oímbra', 2140, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2976, 'Ourense', 110796, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2977, 'Paderne de Allariz', 1809, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2978, 'Padrenda', 2908, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2979, 'Parada de Sil', 1081, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2980, 'Pereiro de Aguiar', 5032, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2981, 'Peroxa, A', 2862, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2982, 'Petín', 1284, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2983, 'Piñor', 1771, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2984, 'Pobra de Trives, A', 3114, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2985, 'Pontedeva', 823, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2986, 'Porqueira', 1312, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2987, 'Punxín', 1053, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2988, 'Quintela de Leirado', 1069, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2989, 'Rairiz de Veiga', 2277, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2990, 'Ramirás', 2151, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2991, 'Ribadavia', 6021, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2992, 'Río', 1209, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2993, 'Riós', 2528, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2994, 'Rúa, A', 5127, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2995, 'Rubiá', 2116, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2996, 'San Amaro', 1694, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2997, 'San Cibrao das Viñas', 3514, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2998, 'San Cristovo de Cea', 3649, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
2999, 'Sandiás', 1946, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3000, 'Sarreaus', 2605, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3001, 'Taboadela', 1903, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3002, 'Teixeira, A', 706, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3003, 'Toén', 2757, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3004, 'Trasmiras', 2266, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3005, 'Veiga, A', 1648, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3006, 'Verea', 1729, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3007, 'Verín', 12099, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3008, 'Viana do Bolo', 4549, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3009, 'Vilamarín', 2331, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3010, 'Vilamartín de Valdeorras', 2511, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3011, 'Vilar de Barrio', 2574, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3012, 'Vilar de Santos', 1397, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3013, 'Vilardevós', 3271, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3014, 'Vilariño de Conso', 932, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3015, 'Xinzo de Limia', 9604, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3016, 'Xunqueira de Ambía', 2316, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3017, 'Xunqueira de Espadanedo', 1226, 32); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3018, 'Abegondo', 5384, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3019, 'Ames', 12045, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3020, 'Aranga', 2498, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3021, 'Ares', 4663, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3022, 'Arteixo', 20074, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3023, 'Arzúa', 7011, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3024, 'Baña, A', 5770, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3025, 'Bergondo', 5600, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3026, 'Betanzos', 12393, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3027, 'Boimorto', 2906, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3028, 'Boiro', 18451, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3029, 'Boqueixón', 4344, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3030, 'Brión', 6372, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3031, 'Cabana', 6461, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3032, 'Cabanas', 3339, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3033, 'Camariñas', 7427, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3034, 'Cambre', 13714, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3035, 'Capela, A', 1714, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3036, 'Carballo', 28683, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3037, 'Cariño', 5558, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3038, 'Carnota', 6604, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3039, 'Carral', 5291, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3040, 'Cedeira', 7809, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3041, 'Cee', 7672, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3042, 'Cerceda', 6979, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3043, 'Cerdido', 1857, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3044, 'Cesuras', 2903, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3045, 'Coirós', 1591, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3046, 'Corcubión', 2091, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3047, 'Coristanco', 9110, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3048, 'Coruña, A', 254822, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3049, 'Culleredo', 17136, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3050, 'Curtis', 4682, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3051, 'Dodro', 3487, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3052, 'Dumbría', 4893, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3053, 'Fene', 15375, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3054, 'Ferrol', 85587, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3055, 'Fisterra', 5578, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3056, 'Frades', 3267, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3057, 'Irixoa', 1845, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3058, 'Laracha', 10830, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3059, 'Laxe', 3566, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3060, 'Lousame', 4697, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3061, 'Malpica de Bergantiños', 7901, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3062, 'Mañón', 2150, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3063, 'Mazaricos', 6863, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3064, 'Melide', 8550, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3065, 'Mesía', 3624, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3066, 'Miño', 5071, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3067, 'Moeche', 1658, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3068, 'Monfero', 2918, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3069, 'Mugardos', 6473, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3070, 'Muros', 11575, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3071, 'Muxía', 6800, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3072, 'Narón', 32054, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3073, 'Neda', 6423, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3074, 'Negreira', 6905, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3075, 'Noia', 15199, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3076, 'Oleiros', 22306, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3077, 'Ordes', 12030, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3078, 'Oroso', 4193, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3079, 'Ortigueira', 9799, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3080, 'Outes', 9391, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3081, 'Oza dos Ríos', 3315, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3082, 'Paderne', 2847, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3083, 'Padrón', 10295, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3084, 'Pino, O', 5229, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3085, 'Pobra do Caramiñal, A', 10424, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3086, 'Ponteceso', 7844, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3087, 'Pontedeume', 9006, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3088, 'Pontes de García Rodríguez, As', 13205, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3089, 'Porto do Son', 10896, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3090, 'Rianxo', 13021, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3091, 'Ribeira', 26828, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3092, 'Rois', 5583, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3093, 'Sada', 10017, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3094, 'San Sadurniño', 3695, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3095, 'Santa Comba', 11612, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3096, 'Santiago de Compostela', 94057, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3097, 'Santiso', 2476, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3098, 'Sobrado', 2830, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3099, 'Somozas', 1589, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3100, 'Teo', 13415, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3101, 'Toques', 1936, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3102, 'Tordoia', 5722, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3103, 'Touro', 5004, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3104, 'Trazo', 4235, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3105, 'Val do Dubra', 5443, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3106, 'Valdoviño', 7089, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3107, 'Vedra', 5155, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3108, 'Vilarmaior', 1430, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3109, 'Vilasantar', 1817, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3110, 'Vimianzo', 9603, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3111, 'Zas', 6703, 15); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3112, 'Abadín', 3950, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3113, 'Alfoz', 2637, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3114, 'Antas de Ulla', 3140, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3115, 'Baleira', 2130, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3116, 'Baralla', 3705, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3117, 'Barreiros', 3730, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3118, 'Becerreá', 4006, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3119, 'Begonte', 4456, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3120, 'Bóveda', 2295, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3121, 'Burela', 7834, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3122, 'Carballedo', 4197, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3123, 'Castro de Rei', 5915, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3124, 'Castroverde', 3802, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3125, 'Cervantes', 2584, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3126, 'Cervo', 5289, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3127, 'Corgo, O', 4708, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3128, 'Cospeito', 6372, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3129, 'Chantada', 10327, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3130, 'Folgoso do Courel', 1887, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3131, 'Fonsagrada, A', 6668, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3132, 'Foz', 9896, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3133, 'Friol', 5043, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3134, 'Guitiriz', 6884, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3135, 'Guntín', 3875, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3136, 'Incio, O', 2756, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3137, 'Láncara', 3554, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3138, 'Lourenzá', 3088, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3139, 'Lugo', 88253, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3140, 'Meira', 1887, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3141, 'Mondoñedo', 5602, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3142, 'Monforte de Lemos', 20561, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3143, 'Monterroso', 4529, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3144, 'Muras', 1319, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3145, 'Navia de Suarna', 2242, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3146, 'Negueira de Muñiz', 339, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3147, 'Nogais, As', 1838, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3148, 'Ourol', 1833, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3149, 'Outeiro de Rei', 4212, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3150, 'Palas de Rei', 4916, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3151, 'Pantón', 4141, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3152, 'Paradela', 3113, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3153, 'Páramo, O', 2050, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3154, 'Pastoriza, A', 4394, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3155, 'Pedrafita do Cebreiro', 1973, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3156, 'Pobra de Brollón, A', 3139, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3157, 'Pol', 2390, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3158, 'Pontenova, A', 3671, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3159, 'Portomarín', 2204, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3160, 'Quiroga', 5072, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3161, 'Rábade', 1768, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3162, 'Ribadeo', 9100, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3163, 'Ribas de Sil', 1611, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3164, 'Ribeira de Piquín', 1043, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3165, 'Riotorto', 2129, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3166, 'Samos', 2375, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3167, 'Sarria', 12601, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3168, 'Saviñao, O', 5709, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3169, 'Sober', 3708, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3170, 'Taboada', 5104, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3171, 'Trabada', 1929, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3172, 'Triacastela', 1031, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3173, 'Valadouro, O', 2740, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3174, 'Vicedo, O', 2672, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3175, 'Vilalba', 16358, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3176, 'Viveiro', 15493, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3177, 'Xermade', 3004, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3178, 'Xove', 3649, 27); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3179, 'Allande', 2613, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3180, 'Aller', 16347, 33); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3181, 'Amieva', 958, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3182, 'Avilés', 84835, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3183, 'Belmonte de Miranda', 2456, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3184, 'Bimenes', 2285, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3185, 'Boal', 2720, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3186, 'Cabrales', 2393, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3187, 'Cabranes', 1344, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3188, 'Candamo', 2688, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3189, 'Cangas de Onís', 6285, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3190, 'Cangas del Narcea', 18110, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3191, 'Caravia', 577, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3192, 'Carreño', 10533, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3193, 'Caso', 2118, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3194, 'Castrillón', 22361, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3195, 'Castropol', 4547, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3196, 'Coaña', 3846, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3197, 'Colunga', 4681, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3198, 'Corvera de Asturias', 16502, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3199, 'Cudillero', 6218, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3200, 'Degaña', 1605, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3201, 'Franco, El', 4193, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3202, 'Gijón', 265491, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3203, 'Gozón', 11410, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3204, 'Grado', 12051, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3205, 'Grandas de Salime', 1387, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3206, 'Ibias', 2307, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3207, 'Illano', 689, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3208, 'Illas', 1225, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3209, 'Langreo', 50001, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3210, 'Laviana', 15085, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3211, 'Lena', 14323, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3212, 'Llanera', 11407, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3213, 'Llanes', 13015, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3214, 'Mieres', 50760, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3215, 'Morcín', 2933, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3216, 'Muros de Nalón', 2497, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3217, 'Nava', 5681, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3218, 'Navia', 9136, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3219, 'Noreña', 4207, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3220, 'Onís', 915, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3221, 'Oviedo', 199549, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3222, 'Parres', 5574, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3223, 'Peñamellera Alta', 783, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3224, 'Peñamellera Baja', 1683, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3225, 'Pesoz', 268, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3226, 'Piloña', 9215, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3227, 'Ponga', 788, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3228, 'Pravia', 9694, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3229, 'Proaza', 960, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3230, 'Quirós', 1738, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3231, 'Regueras, Las', 2268, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3232, 'Ribadedeva', 1916, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3233, 'Ribadesella', 6241, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3234, 'Ribera de Arriba', 2095, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3235, 'Riosa', 2663, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3236, 'Salas', 7416, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3237, 'San Martín de Oscos', 560, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3238, 'San Martín del Rey Aurelio', 22129, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3239, 'San Tirso de Abres', 675, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3240, 'Santa Eulalia de Oscos', 607, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3241, 'Santo Adriano', 357, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3242, 'Sariego', 1452, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3243, 'Siero', 46315, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3244, 'Sobrescobio', 769, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3245, 'Somiedo', 1664, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3246, 'Soto del Barco', 4450, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3247, 'Tapia de Casariego', 4455, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3248, 'Taramundi', 975, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3249, 'Teverga', 2335, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3250, 'Tineo', 13578, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3251, 'Valdés', 16073, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3252, 'Vegadeo', 5030, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3253, 'Villanueva de Oscos', 428, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3254, 'Villaviciosa', 14465, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3255, 'Villayón', 2040, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3256, 'Yernes y Tameza', 209, 33); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3257, 'Acebedo', 400, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3258, 'Algadefe', 405, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3259, 'Alija del Infantado', 1093, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3260, 'Almanza', 853, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3261, 'Antigua, La', 719, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3262, 'Ardón', 763, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3263, 'Arganza', 1136, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3264, 'Astorga', 12787, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3265, 'Balboa', 573, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3266, 'Bañeza, La', 10537, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3267, 'Barjas', 646, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3268, 'Barrios de Luna, Los', 388, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3269, 'Bembibre', 11650, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3270, 'Benavides', 3254, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3271, 'Benuza', 837, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3272, 'Bercianos del Páramo', 934, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3273, 'Bercianos del Real Camino', 260, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3274, 'Berlanga del Bierzo', 471, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3275, 'Boca de Huérgano', 715, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3276, 'Boñar', 2816, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3277, 'Borrenes', 585, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3278, 'Brazuelo', 389, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3279, 'Burgo Ranero, El', 1095, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3280, 'Burón', 535, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3281, 'Bustillo del Páramo', 2112, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3282, 'Cabañas Raras', 1395, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3283, 'Cabreros del Río', 678, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3284, 'Cabrillanes', 1302, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3285, 'Cacabelos', 5075, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3286, 'Calzada del Coto', 332, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3287, 'Campazas', 205, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3288, 'Campo de Villavidel', 389, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3289, 'Camponaraya', 3200, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3290, 'Candín', 546, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3291, 'Cármenes', 494, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3292, 'Carracedelo', 3505, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3293, 'Carrizo', 2880, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3294, 'Carrocera', 619, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3295, 'Carucedo', 683, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3296, 'Castilfalé', 117, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3297, 'Castrillo de Cabrera', 288, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3298, 'Castrillo de la Valduerna', 296, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3299, 'Castrocalbón', 1465, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3300, 'Castrocontrigo', 1392, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3301, 'Castropodame', 1925, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3302, 'Castrotierra de Valmadrigal', 173, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3303, 'Cea', 849, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3304, 'Cebanico', 301, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3305, 'Cebrones del Río', 786, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3306, 'Cimanes de la Vega', 762, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3307, 'Cimanes del Tejar', 1189, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3308, 'Cistierna', 4847, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3309, 'Congosto', 1906, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3310, 'Corbillos de los Oteros', 353, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3311, 'Corullón', 1486, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3312, 'Crémenes', 1603, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3313, 'Cuadros', 1740, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3314, 'Cubillas de los Oteros', 243, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3315, 'Cubillas de Rueda', 723, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3316, 'Cubillos del Sil', 1578, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3317, 'Chozas de Abajo', 2247, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3318, 'Destriana', 1065, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3319, 'Encinedo', 1098, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3320, 'Ercina, La', 872, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3321, 'Escobar de Campos', 96, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3322, 'Fabero', 6419, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3323, 'Folgoso de la Ribera', 1539, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3324, 'Fresno de la Vega', 776, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3325, 'Fuentes de Carbajal', 161, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3326, 'Garrafe de Torío', 1175, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3327, 'Gordaliza del Pino', 426, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3328, 'Gordoncillo', 697, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3329, 'Gradefes', 1562, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3330, 'Grajal de Campos', 326, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3331, 'Gusendos de los Oteros', 262, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3332, 'Hospital de Orbigo', 1217, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3333, 'Igüeña', 2294, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3334, 'Izagre', 326, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3335, 'Joarilla de las Matas', 505, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3336, 'Laguna Dalga', 1058, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3337, 'Laguna de Negrillos', 1699, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3338, 'León', 147780, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3339, 'Lucillo', 578, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3340, 'Luyego', 1040, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3341, 'Llamas de la Ribera', 1353, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3342, 'Magaz de Cepeda', 637, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3343, 'Mansilla de las Mulas', 1777, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3344, 'Mansilla Mayor', 445, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3345, 'Maraña', 197, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3346, 'Matadeón de los Oteros', 366, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3347, 'Matallana de Torío', 1958, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3348, 'Matanza', 384, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3349, 'Molinaseca', 785, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3350, 'Murias de Paredes', 824, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3351, 'Noceda', 1001, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3352, 'Oencia', 567, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3353, 'Omañas, Las', 509, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3354, 'Onzonilla', 1466, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3355, 'Oseja de Sajambre', 398, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3356, 'Pajares de los Oteros', 450, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3357, 'Palacios de la Valduerna', 634, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3358, 'Palacios del Sil', 1674, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3359, 'Páramo del Sil', 2202, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3360, 'Peranzanes', 389, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3361, 'Pobladura de Pelayo García', 668, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3362, 'Pola de Gordón, La', 5696, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3363, 'Ponferrada', 61829, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3364, 'Posada de Valdeón', 537, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3365, 'Pozuelo del Páramo', 729, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3366, 'Prado de la Guzpeña', 189, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3367, 'Priaranza del Bierzo', 1067, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3368, 'Prioro', 552, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3369, 'Puebla de Lillo', 757, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3370, 'Puente de Domingo Flórez', 2063, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3371, 'Quintana del Castillo', 1315, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3372, 'Quintana del Marco', 639, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3373, 'Quintana y Congosto', 961, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3374, 'Regueras de Arriba', 459, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3375, 'Reyero', 184, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3376, 'Riaño', 588, 24); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3601, 'Santibáñez de la Peña', 1776, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3602, 'Santoyo', 332, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3603, 'Serna, La', 151, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3604, 'Soto de Cerrato', 224, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3605, 'Sotobañado y Priorato', 202, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3606, 'Tabanera de Cerrato', 193, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3607, 'Tabanera de Valdavia', 60, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3608, 'Támara de Campos', 102, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3609, 'Tariego de Cerrato', 550, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3610, 'Torquemada', 1344, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3611, 'Torremormojón', 101, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3612, 'Triollo', 133, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3613, 'Valbuena de Pisuerga', 88, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3614, 'Valdeolmillos', 102, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3615, 'Valderrábano', 111, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3616, 'Valde-Ucieza', 145, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3617, 'Valle de Cerrato', 144, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3618, 'Valle del Retortillo', 277, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3619, 'Velilla del Río Carrión', 2054, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3620, 'Venta de Baños', 6952, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3621, 'Vertavillo', 272, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
3622, 'Vid de Ojeda, La', 154, 34); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5910, 'Garlitos', 851, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5911, 'Garrovilla, La', 2702, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5912, 'Granja de Torrehermosa', 2718, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5913, 'Guareña', 7404, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5914, 'a, La', 1538, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5915, 'Helechosa de los Montes', 841, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5916, 'Herrera del Duque', 4153, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5917, 'Higuera de la Serena', 1298, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5918, 'Higuera de Llerena', 528, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5919, 'Higuera de Vargas', 3001, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5920, 'Higuera la Real', 2798, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5921, 'Hinojosa del Valle', 632, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5922, 'Hornachos', 3930, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5923, 'Jerez de los Caballeros', 10587, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5924, 'Lapa, La', 357, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5925, 'Lobón', 2780, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5926, 'Llera', 1051, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5927, 'Llerena', 5795, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5928, 'Magacela', 852, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5929, 'Maguilla', 1153, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5930, 'Malcocinado', 593, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5931, 'Malpartida de la Serena', 1035, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5932, 'Manchita', 784, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5933, 'Medellín', 2529, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5934, 'Medina de las Torres', 1666, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5935, 'Mengabril', 484, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5936, 'Mérida', 52518, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5937, 'Mirandilla', 1369, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5938, 'Monesterio', 5132, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5939, 'Montemolín', 1843, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5940, 'Monterrubio de la Serena', 3259, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5941, 'Montijo', 15340, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5942, 'Morera, La', 786, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5943, 'Nava de Santiago, La', 1150, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5944, 'Navalvillar de Pela', 5171, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5945, 'Nogales', 816, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5946, 'Oliva de la Frontera', 6479, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5947, 'Oliva de Mérida', 2157, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5948, 'Olivenza', 10717, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5949, 'Orellana de la Sierra', 451, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5950, 'Orellana la Vieja', 3997, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5951, 'Palomas', 706, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5952, 'Parra, La', 1457, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5953, 'Peñalsordo', 1734, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5954, 'Peraleda del Zaucejo', 715, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5955, 'Puebla de Alcocer', 1581, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5956, 'Puebla de la Calzada', 5553, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5957, 'Puebla de la Reina', 932, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5958, 'Puebla de Obando', 2109, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5959, 'Puebla de Sancho Pérez', 3045, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5960, 'Puebla del Maestre', 1015, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5961, 'Puebla del Prior', 629, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5962, 'Quintana de la Serena', 5162, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5963, 'Reina', 241, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5964, 'Rena', 689, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5965, 'Retamal de Llerena', 619, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5966, 'Ribera del Fresno', 3524, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5967, 'Risco', 249, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5968, 'Roca de la Sierra, La', 1640, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5969, 'Salvaleón', 2490, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5970, 'Salvatierra de los Barros', 2051, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5971, 'San Pedro de Mérida', 798, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5972, 'San Vicente de Alcántara', 6077, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5974, 'Santa Amalia', 4402, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5975, 'Santa Marta', 4145, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5976, 'Santos de Maimona, Los', 7898, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5977, 'Segura de León', 2375, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5978, 'Siruela', 2547, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5979, 'Solana de los Barros', 2840, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5980, 'Talarrubias', 3799, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5981, 'Talavera la Real', 5346, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5982, 'Táliga', 749, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5983, 'Tamurejo', 285, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5984, 'Torre de Miguel Sesmero', 1330, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5985, 'Torremayor', 1171, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5986, 'Torremejía', 2003, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5987, 'Trasierra', 723, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5988, 'Trujillanos', 1088, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5989, 'Usagre', 2208, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5990, 'Valdecaballeros', 1504, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5991, 'Valdelacalzada', 2533, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5992, 'Valdetorres', 1420, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5993, 'Valencia de las Torres', 922, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5994, 'Valencia del Mombuey', 922, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5995, 'Valencia del Ventoso', 2500, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5996, 'Valverde de Burguillos', 435, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5997, 'Valverde de Leganés', 3729, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5998, 'Valverde de Llerena', 914, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5999, 'Valverde de Mérida', 1168, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6000, 'Valle de la Serena', 1777, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6001, 'Valle de Matamoros', 557, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6002, 'Valle de Santa Ana', 1304, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6003, 'Villafranca de los Barros', 12677, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6004, 'Villagarcía de la Torre', 1073, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6005, 'Villagonzalo', 1549, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6006, 'Villalba de los Barros', 1783, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6007, 'Villanueva de la Serena', 24145, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6008, 'Villanueva del Fresno', 3595, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6009, 'Villar de Rena', 1775, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6010, 'Villar del Rey', 2384, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6011, 'Villarta de los Montes', 795, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6012, 'Zafra', 14930, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6013, 'Zahínos', 3252, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6014, 'Zalamea de la Serena', 5079, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6016, 'Zarza-Capilla', 592, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6017, 'Abades', 885, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6018, 'Adrada de Pirón', 50, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6019, 'Adrados', 259, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6020, 'Aguilafuente', 802, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6021, 'Alconada de Maderuelo', 61, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6022, 'Aldea Real', 419, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6023, 'Aldealcorvo', 38, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6024, 'Aldealengua de Pedraza', 111, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6025, 'Aldealengua de Santa María', 104, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6026, 'Aldeanueva de la Serrezuela', 57, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6027, 'Aldeanueva del Codonal', 239, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6028, 'Aldeasoña', 158, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6029, 'Aldehorno', 96, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6030, 'Aldehuela del Codonal', 64, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6031, 'Aldeonte', 101, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6032, 'Anaya', 121, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6033, 'Añe', 125, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6034, 'Arahuetes', 54, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6035, 'Arcones', 276, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6036, 'Arevalillo de Cega', 41, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6037, 'Armuña', 306, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6038, 'Ayllón', 1267, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6039, 'Barbolla', 233, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6040, 'Basardilla', 103, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6041, 'Bercial', 151, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6042, 'Bercimuel', 75, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6043, 'Bernardos', 809, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6044, 'Bernuy de Porreros', 337, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6045, 'Boceguillas', 556, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6046, 'Brieva', 66, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6047, 'Caballar', 109, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6048, 'Cabañas de Polendos', 119, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6049, 'Cabezuela', 790, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6050, 'Calabazas de Fuentidueña', 88, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6051, 'Campo de San Pedro', 400, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6052, 'Cantalejo', 3502, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6053, 'Cantimpalos', 1333, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6054, 'Carbonero el Mayor', 2373, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6055, 'Carrascal del Río', 223, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6056, 'Casla', 160, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6057, 'Castillejo de Mesleón', 144, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6058, 'Castro de Fuentidueña', 102, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6059, 'Castrojimeno', 48, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6060, 'Castroserna de Abajo', 61, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6061, 'Castroserracín', 44, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6062, 'Cedillo de la Torre', 147, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6063, 'Cerezo de Abajo', 176, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6064, 'Cerezo de Arriba', 214, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6065, 'Cilleruelo de San Mamés', 62, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6066, 'Cobos de Fuentidueña', 83, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6067, 'Coca', 2022, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6068, 'Codorniz', 506, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6069, 'Collado Hermoso', 155, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6070, 'Condado de Castilnovo', 161, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6071, 'Corral de Ayllón', 127, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6072, 'Cozuelos de Fuentidueña', 230, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6073, 'Cubillo', 71, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6074, 'Cuéllar', 9186, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6075, 'Cuevas de Provanco', 253, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6076, 'Chañe', 742, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6077, 'Domingo García', 54, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6078, 'Donhierro', 116, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6079, 'Duruelo', 137, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6080, 'Encinas', 75, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6081, 'Encinillas', 78, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6082, 'Escalona del Prado', 614, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6083, 'Escarabajosa de Cabezas', 411, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6084, 'Escobar de Polendos', 237, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6085, 'Espinar, El', 5691, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6086, 'Espirdo', 234, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6087, 'Fresneda de Cuéllar', 270, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6088, 'Fresno de Cantespino', 238, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6089, 'Fresno de la Fuente', 104, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6090, 'Frumales', 251, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6091, 'Fuente de Santa Cruz', 212, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6092, 'Fuente el Olmo de Fuentidueña', 193, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6093, 'Fuente el Olmo de Íscar', 109, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6094, 'Fuentepelayo', 1005, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6095, 'Fuentepiñel', 196, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6096, 'Fuenterrebollo', 482, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6097, 'Fuentesaúco de Fuentidueña', 388, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6098, 'Fuentesoto', 173, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6099, 'Fuentidueña', 210, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6100, 'Gallegos', 107, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6101, 'Garcillán', 361, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6102, 'Gomezserracín', 672, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6103, 'Grajera', 81, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6104, 'Honrubia de la Cuesta', 99, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6105, 'Hontalbilla', 506, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6106, 'Hontanares de Eresma', 145, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6107, 'Huertos, Los', 164, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6108, 'Ituero y Lama', 66, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6109, 'Juarros de Riomoros', 80, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6110, 'Juarros de Voltoya', 303, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6111, 'Labajos', 166, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6112, 'Laguna de Contreras', 191, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6113, 'Languilla', 153, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6114, 'Lastras de Cuéllar', 591, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6115, 'Lastras del Pozo', 98, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6116, 'Lastrilla, La', 1050, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6117, 'Losa, La', 367, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6118, 'Maderuelo', 165, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6119, 'Marazoleja', 180, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6120, 'Marazuela', 89, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6121, 'Martín Miguel', 198, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6122, 'Martín Muñoz de la Dehesa', 179, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6123, 'Martín Muñoz de las Posadas', 576, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6124, 'Marugán', 311, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6125, 'Mata de Cuéllar', 331, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6126, 'Matabuena', 221, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6127, 'Matilla, La', 129, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6128, 'Melque de Cercos', 147, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6129, 'Membibre de la Hoz', 103, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6130, 'Migueláñez', 177, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6131, 'Montejo de Arévalo', 328, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6132, 'Montejo de la Vega de la Serrezuela', 206, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6133, 'Monterrubio', 64, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6134, 'Moral de Hornuez', 124, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6135, 'Mozoncillo', 1049, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6136, 'Muñopedro', 431, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6137, 'Muñoveros', 227, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6138, 'Nava de la Asunción', 2633, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6139, 'Navafría', 415, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6140, 'Navalilla', 183, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6141, 'Navalmanzano', 1162, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6142, 'Navares de Ayuso', 77, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6143, 'Navares de Enmedio', 178, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6144, 'Navares de las Cuevas', 25, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4084, 'Cuelgamures', 159, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4085, 'Entrala', 179, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4086, 'Espadañedo', 252, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4087, 'Faramontanos de Tábara', 584, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4088, 'Fariza', 773, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4089, 'Fermoselle', 1868, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4090, 'Ferreras de Abajo', 665, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4091, 'Ferreras de Arriba', 573, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4092, 'Ferreruela', 730, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4093, 'Figueruela de Arriba', 603, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4094, 'Fonfría', 1259, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4095, 'Fresno de la Polvorosa', 266, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4096, 'Fresno de la Ribera', 444, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4097, 'Fresno de Sayago', 316, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4098, 'Friera de Valverde', 321, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4099, 'Fuente Encalada', 174, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4100, 'Fuentelapeña', 1106, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4101, 'Fuentes de Ropel', 684, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4102, 'Fuentesaúco', 1968, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4103, 'Fuentesecas', 99, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4104, 'Fuentespreadas', 430, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4105, 'Galende', 1426, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4106, 'Gallegos del Pan', 186, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4107, 'Gallegos del Río', 944, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4108, 'Gamones', 113, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4109, 'Gema', 322, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4110, 'Granja de Moreruela', 415, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4111, 'Granucillo', 290, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4112, 'Guarrate', 413, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4113, 'Hermisende', 506, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4114, 'Hiniesta, La', 442, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4115, 'Jambrina', 307, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4116, 'Justel', 237, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4117, 'Losacino', 386, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4118, 'Losacio', 187, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4119, 'Lubián', 426, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4120, 'Luelmo', 289, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4121, 'Maderal, El', 303, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4122, 'Madridanos', 589, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4123, 'Mahide', 604, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4124, 'Maire de Castroponce', 275, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4125, 'Malva', 266, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4126, 'Manganeses de la Lampreana', 898, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4127, 'Manganeses de la Polvorosa', 951, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4128, 'Manzanal de Arriba', 542, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4129, 'Manzanal de los Infantes', 241, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4130, 'Manzanal del Barco', 240, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4131, 'Matilla de Arzón', 316, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4132, 'Matilla la Seca', 86, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4133, 'Mayalde', 277, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4134, 'Melgar de Tera', 662, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4135, 'Micereces de Tera', 689, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4136, 'Milles de la Polvorosa', 301, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4137, 'Molacillos', 329, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4138, 'Molezuelas de la Carballeda', 158, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4139, 'Mombuey', 530, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4140, 'Monfarracinos', 574, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4141, 'Montamarta', 778, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4142, 'Moral de Sayago', 418, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4143, 'Moraleja de Sayago', 324, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4144, 'Moraleja del Vino', 1243, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4145, 'Morales de Rey', 827, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4146, 'Morales de Toro', 1159, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4147, 'Morales de Valverde', 350, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4148, 'Morales del Vino', 1338, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4149, 'Moralina', 405, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4150, 'Moreruela de los Infanzones', 515, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4151, 'Moreruela de Tábara', 622, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4152, 'Muelas de los Caballeros', 274, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4153, 'Muelas del Pan', 970, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4154, 'Muga de Sayago', 545, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4155, 'Navianos de Valverde', 286, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4156, 'Olmillos de Castro', 493, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4157, 'Otero de Bodas', 305, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4158, 'Pajares de la Lampreana', 566, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4159, 'Palacios de Sanabria', 337, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4160, 'Palacios del Pan', 284, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4161, 'Pedralba de la Pradería', 416, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4162, 'Pego, El', 501, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4163, 'Peleagonzalo', 485, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4164, 'Peleas de Abajo', 226, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4165, 'Peñausende', 646, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4166, 'Peque', 255, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4167, 'Perdigón, El', 893, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4168, 'Pereruela', 855, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4169, 'Perilla de Castro', 290, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4170, 'Pías', 280, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4171, 'Piedrahita de Castro', 176, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4172, 'Pinilla de Toro', 458, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4173, 'Pino', 268, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4174, 'Piñero, El', 329, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4175, 'Pobladura de Valderaduey', 89, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4176, 'Pobladura del Valle', 378, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4177, 'Porto', 408, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4178, 'Pozoantiguo', 403, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4179, 'Pozuelo de Tábara', 282, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4180, 'Prado', 130, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4181, 'Puebla de Sanabria', 1721, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4182, 'Pueblica de Valverde', 396, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4183, 'Quintanilla de Urz', 147, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4184, 'Quintanilla del Monte', 167, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4185, 'Quintanilla del Olmo', 70, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4186, 'Quiruelas de Vidriales', 1051, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4187, 'Rabanales', 963, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4188, 'Rábano de Aliste', 548, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4189, 'Requejo', 261, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4190, 'Revellinos', 388, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4191, 'Riofrío de Aliste', 1135, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4192, 'Rionegro del Puente', 445, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4193, 'Roales', 368, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4194, 'Robleda-Cervantes', 520, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4195, 'Roelos', 177, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4196, 'Rosinos de la Requejada', 618, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4197, 'Salce', 167, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4198, 'Samir de los Caños', 272, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4199, 'San Agustín del Pozo', 221, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4200, 'San Cebrián de Castro', 465, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4201, 'San Cristóbal de Entreviñas', 1660, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4202, 'San Esteban del Molar', 216, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4203, 'San Justo', 397, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4204, 'San Martín de Valderaduey', 100, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4205, 'San Miguel de la Ribera', 464, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4206, 'San Miguel del Valle', 275, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4207, 'San Pedro de Ceque', 741, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4208, 'San Pedro de la Nave-Almendra', 553, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4209, 'San Vicente de la Cabeza', 724, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4210, 'San Vitero', 813, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4211, 'Santa Clara de Avedillo', 284, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4212, 'Santa Colomba de las Monjas', 372, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4213, 'Santa Cristina de la Polvorosa', 1337, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4214, 'Santa Croya de Tera', 539, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4215, 'Santa Eufemia del Barco', 340, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4216, 'Santa María de la Vega', 551, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4217, 'Santa María de Valverde', 129, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4218, 'Santibáñez de Tera', 642, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4219, 'Santibáñez de Vidriales', 1535, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4220, 'Santovenia', 493, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4221, 'Sanzoles', 773, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4222, 'Tábara', 980, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4223, 'Tapioles', 271, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4224, 'Toro', 9678, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4225, 'Torre del Valle, La', 205, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4226, 'Torregamones', 393, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4227, 'Torres del Carrizal', 566, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4228, 'Trabazos', 1084, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4229, 'Trefacio', 262, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4230, 'Uña de Quintana', 274, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4231, 'Vadillo de la Guareña', 373, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4232, 'Valcabado', 357, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4233, 'Valdefinjas', 104, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4234, 'Valdescorriel', 201, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4235, 'Vallesa', 205, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4236, 'Vega de Tera', 607, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4237, 'Vega de Villalobos', 178, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4238, 'Vegalatrave', 198, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4239, 'Venialbo', 594, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4240, 'Vezdemarbán', 744, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4241, 'Vidayanes', 135, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4242, 'Videmala', 251, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4243, 'Villabrázaro', 452, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4244, 'Villabuena del Puente', 1085, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4245, 'Villadepera', 309, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4246, 'Villaescusa', 456, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4247, 'Villafáfila', 690, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4248, 'Villaferrueña', 178, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4249, 'Villageriz', 71, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4250, 'Villalazán', 419, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4251, 'Villalba de la Lampreana', 370, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4252, 'Villalcampo', 783, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4253, 'Villalobos', 346, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4254, 'Villalonso', 164, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4255, 'Villalpando', 1822, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4256, 'Villalube', 366, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4257, 'Villamayor de Campos', 648, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4258, 'Villamor de los Escuderos', 610, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4259, 'Villanázar', 412, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4260, 'Villanueva de Azoague', 412, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4261, 'Villanueva de Campeán', 216, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4262, 'Villanueva de las Peras', 231, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4263, 'Villanueva del Campo', 1181, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4264, 'Villar del Buey', 965, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4265, 'Villaralbo', 1590, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4266, 'Villardeciervos', 579, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4267, 'Villardefallaves', 127, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4268, 'Villardiegua de la Ribera', 189, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4269, 'Villárdiga', 127, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4270, 'Villardondiego', 162, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4271, 'Villarrín de Campos', 663, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4272, 'Villaseco', 368, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4273, 'Villavendimio', 244, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4274, 'Villaveza de Valverde', 164, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4275, 'Villaveza del Agua', 319, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4276, 'Viñas', 336, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4277, 'Zamora', 66017, 49); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4278, 'Adalia', 92, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4279, 'Aguasal', 26, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4280, 'Aguilar de Campos', 411, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4281, 'Alaejos', 1788, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4282, 'Alcazarén', 787, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4283, 'Aldea de San Miguel', 247, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4284, 'Aldeamayor de San Martín', 1240, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4285, 'Almenara de Adaja', 34, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4286, 'Amusquillo', 197, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4287, 'Arroyo de la Encomienda', 1751, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4288, 'Ataquines', 935, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4289, 'Baón', 236, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4290, 'Barcial de la Loma', 175, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4291, 'Barruelo del Valle', 80, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4292, 'Becilla de Valderaduey', 484, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4293, 'Benafarces', 101, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4294, 'Bercero', 300, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4295, 'Berceruelo', 35, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4296, 'Berrueces', 111, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4297, 'Bobadilla del Campo', 441, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4298, 'Bocigas', 171, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4299, 'Bocos de Duero', 89, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4300, 'Boecillo', 1120, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4301, 'Bolaños de Campos', 396, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4302, 'Brahojos de Medina', 185, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4303, 'Bustillo de Chaves', 111, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4304, 'Cabezón de Pisuerga', 1598, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4305, 'Cabezón de Valderaduey', 59, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4306, 'Cabreros del Monte', 112, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4307, 'Campaspero', 1637, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4308, 'El Campillo', 252, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4309, 'Camporredondo', 234, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4310, 'Canalejas de Peñafiel', 335, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4311, 'Canillas de Esgueva', 165, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4312, 'Carpio', 1291, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4313, 'Casasola de Arión', 402, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4314, 'Castrejón de Trabancos', 281, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4315, 'Castrillo de Duero', 247, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4316, 'Castrillo-Tejeriego', 305, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4317, 'Castrobol', 101, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4318, 'Castrodeza', 258, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4319, 'Castromembibre', 99, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4320, 'Castromonte', 512, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4321, 'Castronuevo de Esgueva', 316, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4322, 'Castronuño', 1158, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4323, 'Castroponce', 211, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4324, 'Castroverde de Cerrato', 293, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4325, 'Ceinos de Campos', 277, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4326, 'Cervillego de la Cruz', 169, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4327, 'Cigales', 2350, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4328, 'Ciguñuela', 396, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4329, 'Cistérniga', 2270, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4330, 'Cogeces de Iscar', 156, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4331, 'Cogeces del Monte', 1015, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4332, 'Corcos', 277, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4333, 'Corrales de Duero', 161, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4334, 'Cubillas de Santa Marta', 266, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4335, 'Cuenca de Campos', 297, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4336, 'Curiel de Duero', 158, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4337, 'Encinas de Esgueva', 427, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4338, 'Esguevillas de Esgueva', 447, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4339, 'Fombellida', 314, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4340, 'Fompedraza', 153, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4341, 'Fontihoyuelo', 48, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4342, 'Fresno el Viejo', 1341, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4343, 'Fuensaldaña', 833, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4344, 'Fuente el Sol', 322, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4345, 'Fuente-Olmedo', 67, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4346, 'Gallegos de Hornija', 160, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4347, 'Gatón de Campos', 55, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4348, 'Geria', 445, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4349, 'Herrín de Campos', 228, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4350, 'Hornillos de Eresma', 149, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4351, 'Íscar', 6100, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4352, 'Laguna de Duero', 13458, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4353, 'Langayo', 504, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4354, 'Lomoviejo', 281, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4355, 'Llano de Olmedo', 109, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4356, 'Manzanillo', 69, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4357, 'Marzales', 90, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4358, 'Matapozuelos', 976, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4359, 'Matilla de los Caños', 92, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4360, 'Mayorga', 1692, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4361, 'Medina de Rioseco', 5060, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4362, 'Medina del Campo', 20139, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4363, 'Megeces', 484, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4364, 'Melgar de Abajo', 205, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4365, 'Melgar de Arriba', 327, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4366, 'Mojados', 2387, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4367, 'Monasterio de Vega', 89, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4368, 'Montealegre de Campos', 171, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4369, 'Montemayor de Pililla', 1092, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4370, 'Moral de la Reina', 253, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4371, 'Moraleja de las Panaderas', 28, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4372, 'Morales de Campos', 213, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4373, 'Mota del Marqués', 481, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4374, 'Mucientes', 649, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4375, 'Mudarra, La', 286, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4376, 'Muriel', 264, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4377, 'Nava del Rey', 2367, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4378, 'Nueva Villa de las Torres', 434, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4379, 'Olivares de Duero', 339, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4380, 'Olmedo', 3628, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4381, 'Olmos de Esgueva', 207, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4382, 'Olmos de Peñafiel', 93, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4383, 'Palazuelo de Vedija', 220, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4384, 'Parrilla, La', 682, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4385, 'Pedraja de Portillo, La', 1120, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4386, 'Pedrajas de San Esteban', 3230, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4387, 'Pedrosa del Rey', 256, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4388, 'Peñafiel', 5187, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4389, 'Peñaflor de Hornija', 506, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4390, 'Pesquera de Duero', 550, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4391, 'Piña de Esgueva', 405, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4392, 'Piñel de Abajo', 249, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4393, 'Piñel de Arriba', 166, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4394, 'Pollos', 874, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4395, 'Portillo', 2603, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4396, 'Pozal de Gallinas', 502, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4397, 'Pozaldez', 564, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4398, 'Pozuelo de la Orden', 88, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4399, 'Puras', 66, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4400, 'Quintanilla de Arriba', 249, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4401, 'Quintanilla de Onésimo', 1211, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4402, 'Quintanilla de Trigueros', 99, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4403, 'Quintanilla del Molar', 92, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4404, 'Rábano', 262, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4405, 'Ramiro', 89, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4406, 'Renedo de Esgueva', 924, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4407, 'Roales de Campos', 286, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4408, 'Robladillo', 101, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4409, 'Roturas', 27, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4410, 'Rubí de Bracamonte', 347, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4411, 'Rueda', 1606, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4412, 'Saelices de Mayorga', 207, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4413, 'Salvador de Zapardiel', 213, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4414, 'San Cebrián de Mazote', 249, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4415, 'San Llorente', 227, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4416, 'San Martín de Valvení', 109, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4417, 'San Miguel del Arroyo', 865, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4418, 'San Miguel del Pino', 246, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4419, 'San Pablo de la Moraleja', 199, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4420, 'San Pedro de Latarce', 697, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4421, 'San Pelayo', 50, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4422, 'San Román de Hornija', 497, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4423, 'San Salvador', 52, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4424, 'San Vicente del Palacio', 277, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4425, 'Santa Eufemia del Arroyo', 146, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4426, 'Santervás de Campos', 191, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4427, 'Santibáñez de Valcorba', 226, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4428, 'Santovenia de Pisuerga', 1319, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4429, 'Sardón de Duero', 640, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4430, 'Seca, La', 1076, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4431, 'Serrada', 1044, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4432, 'Siete Iglesias de Trabancos', 692, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4433, 'Simancas', 2506, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4434, 'Tamariz de Campos', 120, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4435, 'Tiedra', 450, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4436, 'Tordehumos', 587, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4437, 'Tordesillas', 7948, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4438, 'Torre de Esgueva', 124, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4439, 'Torre de Peñafiel', 51, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4440, 'Torrecilla de la Abadesa', 405, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4441, 'Torrecilla de la Orden', 415, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4442, 'Torrecilla de la Torre', 48, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4443, 'Torrelobatón', 624, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4444, 'Torrescárcela', 183, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4445, 'Traspinedo', 828, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4446, 'Trigueros del Valle', 299, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4447, 'Tudela de Duero', 5579, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4448, 'Unión de Campos, La', 357, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4449, 'Urones de Castroponce', 193, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4450, 'Urueña', 219, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4451, 'Valbuena de Duero', 524, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4452, 'Valdearcos de la Vega', 160, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4453, 'Valdenebro de los Valles', 264, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4454, 'Valdestillas', 1445, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4455, 'Valdunquillo', 268, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4456, 'Valoria la Buena', 682, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4457, 'Valverde de Campos', 121, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4458, 'Valladolid', 334820, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4459, 'Vega de Ruiponce', 175, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4460, 'Vega de Valdetronco', 209, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4461, 'Velascálvaro', 199, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4462, 'Velilla', 156, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4463, 'Velliza', 165, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4464, 'Ventosa de la Cuesta', 161, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4465, 'Viana de Cega', 1230, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4466, 'Viloria', 427, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4467, 'Villabáñez', 463, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4468, 'Villabaruz de Campos', 58, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4469, 'Villabrágima', 1302, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4470, 'Villacarralón', 136, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4471, 'Villacid de Campos', 108, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4472, 'Villaco', 153, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4473, 'Villafrades de Campos', 140, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4474, 'Villafranca de Duero', 410, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4475, 'Villafrechós', 548, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4476, 'Villafuerte', 177, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4477, 'Villagarcía de Campos', 455, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4478, 'Villagómez la Nueva', 108, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4479, 'Villalán de Campos', 54, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4480, 'Villalar de los Comuneros', 507, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4481, 'Villalba de la Loma', 53, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4482, 'Villalba de los Alcores', 622, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4483, 'Villalbarba', 178, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4484, 'Villalón de Campos', 2235, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4485, 'Villamuriel de Campos', 91, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4486, 'Villán de Tordesillas', 180, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4487, 'Villanubla', 943, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4488, 'Villanueva de Duero', 893, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4489, 'Villanueva de la Condesa', 47, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4490, 'Villanueva de los Caballeros', 307, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4491, 'Villanueva de los Infantes', 169, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4492, 'Villanueva de San Mancio', 101, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4493, 'Villardefrades', 278, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4494, 'Villarmentero de Esgueva', 137, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4495, 'Villasexmir', 138, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4496, 'Villavaquerín', 228, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4497, 'Villavellid', 71, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4498, 'Villaverde de Medina', 627, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4499, 'Villavicencio de los Caballeros', 367, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4500, 'Wamba', 385, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4501, 'Zaratán', 1257, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4502, 'Zarza, La', 175, 47); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4503, 'Abejar', 393, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4504, 'Adradas', 118, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4505, 'Agreda', 3632, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4506, 'Alconaba', 177, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4507, 'Alcubilla de Avellaneda', 249, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4508, 'Alcubilla de las Peñas', 114, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4509, 'Aldealafuente', 166, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4510, 'Aldealices', 38, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4511, 'Aldealpozo', 32, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4512, 'Aldealseñor', 53, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4513, 'Aldehuela de Periáñez', 48, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4514, 'Aldehuelas, Las', 150, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4515, 'Alentisque', 62, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4516, 'Aliud', 52, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4517, 'Almajano', 196, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4518, 'Almaluez', 364, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4519, 'Almarza', 657, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4520, 'Almazán', 6003, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4521, 'Almazul', 205, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4522, 'Almenar de Soria', 456, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4523, 'Alpanseque', 123, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4524, 'Arancón', 127, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4525, 'Arcos de Jalón', 2123, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4526, 'Arenillas', 71, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4527, 'Arévalo de la Sierra', 137, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4528, 'Ausejo de la Sierra', 60, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4529, 'Baraona', 273, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4530, 'Barca', 157, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4531, 'Barcones', 57, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4532, 'Bayubas de Abajo', 298, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4533, 'Bayubas de Arriba', 103, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4534, 'Beratón', 38, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4535, 'Berlanga de Duero', 1284, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4536, 'Blacos', 72, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4537, 'Bliecos', 66, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4538, 'Borjabad', 72, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4539, 'Borobia', 411, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4540, 'Buberos', 57, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4541, 'Buitrago', 58, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4542, 'Burgo de Osma-Ciudad de Osma', 5002, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4543, 'Cabrejas del Campo', 99, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4544, 'Cabrejas del Pinar', 506, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4545, 'Calatañazor', 81, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4546, 'Caltojar', 160, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4547, 'Candilichera', 254, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4548, 'Cañamaque', 56, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4549, 'Carabantes', 41, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4550, 'Caracena', 18, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4551, 'Carrascosa de Abajo', 47, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4552, 'Carrascosa de la Sierra', 18, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4553, 'Casarejos', 294, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4554, 'Castilfrío de la Sierra', 37, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4555, 'Castilruiz', 358, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4556, 'Castillejo de Robledo', 234, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4557, 'Centenera de Andaluz', 33, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4558, 'Cerbón', 56, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4559, 'Cidones', 356, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4560, 'Cigudosa', 93, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4561, 'Cihuela', 119, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4562, 'Ciria', 104, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4563, 'Cirujales del Río', 48, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4564, 'Coscurita', 164, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4565, 'Covaleda', 2076, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4566, 'Cubilla', 100, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4567, 'Cubo de la Solana', 310, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4568, 'Cueva de Agreda', 129, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4569, 'Dévanos', 162, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4570, 'Deza', 424, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4571, 'Duruelo de la Sierra', 1493, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4572, 'Escobosa de Almazán', 49, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4573, 'Espeja de San Marcelino', 288, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4574, 'Espejón', 236, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4575, 'Estepa de San Juan', 16, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4576, 'Frechilla de Almazán', 55, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4577, 'Fresno de Caracena', 62, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4578, 'Fuentearmegil', 397, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4579, 'Fuentecambrón', 79, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4580, 'Fuentecantos', 53, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4581, 'Fuentelmonge', 162, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4582, 'Fuentelsaz de Soria', 70, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4583, 'Fuentepinilla', 169, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4584, 'Fuentes de Magaña', 123, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4585, 'Fuentestrún', 72, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4586, 'Garray', 360, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4587, 'Golmayo', 656, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4588, 'Gómara', 584, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4589, 'Gormaz', 27, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4590, 'Herrera de Soria', 44, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4591, 'Hinojosa del Campo', 60, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4592, 'Langa de Duero', 977, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4593, 'Liceras', 72, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4594, 'Losilla, La', 21, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4595, 'Magaña', 114, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4596, 'Maján', 18, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4597, 'Matalebreras', 147, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4598, 'Matamala de Almazán', 452, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4599, 'Medinaceli', 752, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4600, 'Miño de Medinaceli', 144, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4601, 'Miño de San Esteban', 114, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4602, 'Molinos de Duero', 204, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4603, 'Momblona', 53, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4604, 'Monteagudo de las Vicarías', 331, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4605, 'Montejo de Tiermes', 301, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4606, 'Montenegro de Cameros', 126, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4607, 'Morón de Almazán', 315, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4608, 'Muriel de la Fuente', 91, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4609, 'Muriel Viejo', 111, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4610, 'Nafría de Ucero', 97, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4611, 'Narros', 64, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4612, 'Navaleno', 941, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4613, 'Nepas', 95, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4614, 'Nolay', 103, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4615, 'Noviercas', 262, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4616, 'Olvega', 3221, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4617, 'Oncala', 116, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4618, 'Pinilla del Campo', 28, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4619, 'Portillo de Soria', 24, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4620, 'Póveda de Soria, La', 127, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4621, 'Pozalmuro', 111, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4622, 'Quintana Redonda', 642, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4623, 'Quintanas de Gormaz', 208, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4624, 'Quiñonería', 18, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4625, 'Rábanos, Los', 426, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4626, 'Rebollar', 48, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4627, 'Recuerda', 158, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4628, 'Rello', 46, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4629, 'Renieblas', 139, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4630, 'Retortillo de Soria', 299, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4631, 'Reznos', 61, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4632, 'Riba de Escalote, La', 38, 42); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4633, 'Rioseco de Soria', 173, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4634, 'Rollamienta', 58, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4635, 'Royo, El', 394, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4636, 'Salduero', 206, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4637, 'San Esteban de Gormaz', 3494, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4638, 'San Felices', 88, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4639, 'San Leonardo de Yagüe', 2093, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4640, 'San Pedro Manrique', 517, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4641, 'Santa Cruz de Yanguas', 64, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4642, 'Santa María de Huerta', 505, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4643, 'Santa María de las Hoyas', 228, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4644, 'Serón de Nágima', 335, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4645, 'Soliedra', 48, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4646, 'Soria', 33438, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4647, 'Sotillo del Rincón', 220, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4648, 'Suellacabras', 50, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4649, 'Tajahuerce', 52, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4650, 'Tajueco', 148, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4651, 'Talveila', 228, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4652, 'Tardelcuende', 729, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4653, 'Taroda', 89, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4654, 'Tejado', 261, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4655, 'Torlengua', 133, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4656, 'Torreblacos', 50, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4657, 'Torrubia de Soria', 107, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4658, 'Trévago', 86, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4659, 'Ucero', 131, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4660, 'Vadillo', 178, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4661, 'Valdeavellano de Tera', 234, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4662, 'Valdegeña', 58, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4663, 'Valdelagua del Cerro', 41, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4664, 'Valdemaluque', 343, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4665, 'Valdenebro', 168, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4666, 'Valdeprado', 20, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4667, 'Valderrodilla', 140, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4668, 'Valtajeros', 31, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4669, 'Velamazán', 162, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4670, 'Velilla de la Sierra', 22, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4671, 'Velilla de los Ajos', 49, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4672, 'Viana de Duero', 89, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4673, 'Villaciervos', 103, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4674, 'Villanueva de Gormaz', 24, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4675, 'Villar del Ala', 51, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4676, 'Villar del Campo', 43, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4677, 'Villar del Río', 200, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4678, 'Villares de Soria, Los', 131, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4679, 'Villasayas', 120, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4680, 'Villaseca de Arciel', 51, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4681, 'Vinuesa', 1140, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4682, 'Vizmanos', 44, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4683, 'Vozmediano', 65, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4684, 'Yanguas', 81, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4685, 'Yelo', 82, 42); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4686, 'Abusejo', 315, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4687, 'Agallas', 230, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4688, 'Ahigal de los Aceiteros', 231, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4689, 'Ahigal de Villarino', 55, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4690, 'Alameda de Gardón, La', 169, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4691, 'Alamedilla, La', 248, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4692, 'Alaraz', 709, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4693, 'Alba de Tormes', 4571, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4694, 'Alba de Yeltes', 306, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4695, 'Alberca, La', 1137, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4696, 'Alberguería de Argañán, La', 217, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4697, 'Alconada', 254, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4698, 'Aldea del Obispo', 461, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4699, 'Aldeacipreste', 323, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4700, 'Aldeadávila de la Ribera', 1725, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4701, 'Aldealengua', 514, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4702, 'Aldeanueva de Figueroa', 393, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4703, 'Aldeanueva de la Sierra', 114, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4704, 'Aldearrodrigo', 227, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4705, 'Aldearrubia', 505, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4706, 'Aldeaseca de Alba', 154, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4707, 'Aldeaseca de la Frontera', 403, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4708, 'Aldeatejada', 579, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4709, 'Aldeavieja de Tormes', 139, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4710, 'Aldehuela de la Bóveda', 431, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4711, 'Aldehuela de Yeltes', 367, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4712, 'Almenara de Tormes', 257, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4713, 'Almendra', 250, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4714, 'Anaya de Alba', 340, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4715, 'Añover de Tormes', 123, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4716, 'Arabayona', 587, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4717, 'Arapiles', 556, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4718, 'Arcediano', 103, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4719, 'Arco, El', 111, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4720, 'Armenteros', 366, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4721, 'Atalaya, La', 178, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4722, 'Babilafuente', 1013, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4723, 'Bañobárez', 522, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4724, 'Barbadillo', 580, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4725, 'Barbalos', 141, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4726, 'Barceo', 82, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4727, 'Barruecopardo', 646, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4728, 'Bastida, La', 50, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4729, 'Béjar', 17171, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4730, 'Beleña', 138, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4731, 'Bermellar', 236, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4732, 'Berrocal de Huebra', 132, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4733, 'Berrocal de Salvatierra', 173, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4734, 'Boada', 480, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4735, 'Bodón, El', 382, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4736, 'Bogajo', 236, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4737, 'Bouza, La', 75, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4738, 'Bóveda del Río Almar', 346, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4739, 'Brincones', 137, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4740, 'Buenamadre', 189, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4741, 'Buenavista', 100, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4742, 'Cabaco, El', 288, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4743, 'Cabeza de Béjar, La', 137, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4744, 'Cabeza del Caballo', 550, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4745, 'Cabezabellosa de la Calzada', 147, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4746, 'Cabrerizos', 1249, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4747, 'Cabrillas', 598, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4748, 'Calvarrasa de Abajo', 1090, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4749, 'Calvarrasa de Arriba', 646, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4750, 'Calzada de Béjar, La', 108, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4751, 'Calzada de Don Diego', 313, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4752, 'Calzada de Valdunciel', 683, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4753, 'Campillo de Azaba', 316, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4754, 'Campo de Peñaranda, El', 448, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4755, 'Candelario', 1175, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4756, 'Canillas de Abajo', 141, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4757, 'Cantagallo', 291, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4758, 'Cantalapiedra', 1546, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4759, 'Cantalpino', 1268, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4760, 'Cantaracillo', 317, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4761, 'Carbajosa de la Sagrada', 930, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4762, 'Carpio de Azaba', 117, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4763, 'Carrascal de Barregas', 281, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4764, 'Carrascal del Obispo', 257, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4765, 'Casafranca', 92, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4766, 'Casas del Conde, Las', 107, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4767, 'Casillas de Flores', 283, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4768, 'Castellanos de Moriscos', 379, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4769, 'Castellanos de Villiquera', 546, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4770, 'Castillejo de Martín Viejo', 331, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4771, 'Castraz', 81, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4772, 'Cepeda', 576, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4773, 'Cereceda de la Sierra', 118, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4774, 'Cerezal de Peñahorcada', 154, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4775, 'Cerralbo', 286, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4776, 'Cerro, El', 605, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4777, 'Cespedosa de Tormes', 718, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4778, 'Cilleros de la Bastida', 57, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4779, 'Cipérez', 518, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4780, 'Ciudad Rodrigo', 15664, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4781, 'Coca de Alba', 201, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4782, 'Colmenar de Montemayor', 316, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4783, 'Cordovilla', 146, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4784, 'Cristóbal', 242, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4785, 'Cubo de Don Sancho, El', 663, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4786, 'Chagarcía Medianero', 164, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4787, 'Dios le Guarde', 175, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4788, 'Doñinos de Ledesma', 117, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4789, 'Doñinos de Salamanca', 669, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4790, 'Ejeme', 288, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4791, 'Encina, La', 255, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4792, 'Encina de San Silvestre', 130, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4793, 'Encinas de Abajo', 742, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4794, 'Encinas de Arriba', 303, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4795, 'Encinasola de los Comendadores', 336, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4796, 'Endrinal', 315, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4797, 'Escurial de la Sierra', 339, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4798, 'Espadaña', 62, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4799, 'Espeja', 343, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4800, 'Espino de la Orbada', 376, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4801, 'Florida de Liébana', 261, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4802, 'Forfoleda', 250, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4803, 'Frades de la Sierra', 309, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4804, 'Fregeneda, La', 636, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4805, 'Fresnedoso', 141, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4806, 'Fresno Alhándiga', 375, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4807, 'Fuente de San Esteban, La', 1732, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4808, 'Fuenteguinaldo', 1053, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4809, 'Fuenteliante', 158, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4810, 'Fuenterroble de Salvatierra', 283, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4811, 'Fuentes de Béjar', 320, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4812, 'Fuentes de Oñoro', 1404, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4813, 'Gajates', 283, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4814, 'Galindo y Perahuy', 262, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4815, 'Galinduste', 622, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4816, 'Galisancho', 593, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4817, 'Gallegos de Argañán', 503, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4818, 'Gallegos de Solmirón', 241, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4819, 'Garcibuey', 321, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4820, 'Garcihernández', 648, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4821, 'Garcirrey', 115, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4822, 'Gejuelo del Barro', 55, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4823, 'Golpejas', 220, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4824, 'Gomecello', 608, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4825, 'Guadramiro', 254, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4826, 'Guijo de Avila', 120, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4827, 'Guijuelo', 5112, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4828, 'Herguijuela de Ciudad Rodrigo', 176, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4829, 'Herguijuela de la Sierra', 394, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4830, 'Herguijuela del Campo', 157, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4831, 'Hinojosa de Duero', 925, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4832, 'Horcajo de Montemayor', 203, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4833, 'Horcajo Medianero', 441, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4834, 'Hoya, La', 30, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4835, 'Huerta', 281, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4836, 'Iruelos', 77, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4837, 'Ituero de Azaba', 338, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4838, 'Juzbado', 198, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4839, 'Lagunilla', 766, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4840, 'Larrodrigo', 357, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4841, 'Ledesma', 2021, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4842, 'Ledrada', 620, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4843, 'Linares de Riofrío', 1179, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4844, 'Lumbrales', 2370, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4845, 'Macotera', 1825, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4846, 'Machacón', 557, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4847, 'Madroñal', 170, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4848, 'Maíllo, El', 451, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4849, 'Malpartida', 188, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4850, 'Mancera de Abajo', 422, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4851, 'Manzano, El', 116, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4852, 'Martiago', 479, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4853, 'Martín de Yeltes', 573, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4854, 'Martinamor', 91, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4855, 'Masueco', 503, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4856, 'Mata de Ledesma, La', 165, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4857, 'Matilla de los Caños del Río', 762, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4858, 'Maya, La', 272, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4859, 'Membribe de la Sierra', 166, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4860, 'Mieza', 421, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4861, 'Milano, El', 192, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4862, 'Miranda de Azán', 177, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4863, 'Miranda del Castañar', 643, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4864, 'Mogarraz', 406, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4865, 'Molinillo', 92, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4866, 'Monforte de la Sierra', 146, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4867, 'Monleón', 148, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4868, 'Monleras', 306, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4869, 'Monsagro', 275, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4870, 'Montejo', 256, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4871, 'Montemayor del Río', 379, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4872, 'Monterrubio de Armuña', 286, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4873, 'Monterrubio de la Sierra', 173, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4874, 'Morasverdes', 506, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4875, 'Morille', 204, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4876, 'Moríñigo', 159, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4877, 'Moriscos', 147, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4878, 'Moronta', 159, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4879, 'Mozárbez', 405, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4880, 'Narros de Matalayegua', 350, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4881, 'Nava de Béjar', 129, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4882, 'Nava de Francia', 163, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4883, 'Nava de Sotrobal', 234, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4884, 'Navacarros', 103, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4885, 'Navales', 413, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4886, 'Navalmoral de Béjar', 86, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4887, 'Navamorales', 203, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4888, 'Navarredonda de la Rinconada', 289, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4889, 'Navasfrías', 782, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4890, 'Negrilla de Palencia', 116, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4891, 'Olmedo de Camaces', 209, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4892, 'Orbada, La', 303, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4893, 'Pajares de la Laguna', 158, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4894, 'Palacios del Arzobispo', 277, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4895, 'Palaciosrubios', 600, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4896, 'Palencia de Negrilla', 229, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4897, 'Parada de Arriba', 247, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4898, 'Parada de Rubiales', 377, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4899, 'Paradinas de San Juan', 663, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4900, 'Pastores', 77, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4901, 'Payo, El', 562, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4902, 'Pedraza de Alba', 311, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4903, 'Pedrosillo de Alba', 303, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4904, 'Pedrosillo de los Aires', 481, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4905, 'Pedrosillo el Ralo', 142, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4906, 'Pedroso de la Armuña, El', 341, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4907, 'Pelabravo', 677, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4908, 'Pelarrodríguez', 231, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4909, 'Pelayos', 82, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4910, 'Peña, La', 170, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4911, 'Peñacaballera', 240, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4912, 'Peñaparda', 532, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4913, 'Peñaranda de Bracamonte', 6465, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4914, 'Peñarandilla', 323, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4915, 'Peralejos de Abajo', 235, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4916, 'Peralejos de Arriba', 84, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4917, 'Pereña de la Ribera', 587, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4918, 'Peromingo', 174, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4919, 'Pinedas', 241, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4920, 'Pino de Tormes, El', 175, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4921, 'Pitiegua', 278, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4922, 'Pizarral', 101, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4923, 'Poveda de las Cintas', 405, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4924, 'Pozos de Hinojo', 107, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4925, 'Puebla de Azaba', 332, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4926, 'Puebla de San Medel', 76, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4927, 'Puebla de Yeltes', 264, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4928, 'Puente del Congosto', 381, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4929, 'Puertas', 123, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4930, 'Puerto de Béjar', 541, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4931, 'Puerto Seguro', 117, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4932, 'Rágama', 375, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4933, 'Redonda, La', 112, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4934, 'Retortillo', 271, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4935, 'Rinconada de la Sierra, La', 187, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4936, 'Robleda', 628, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4937, 'Robliza de Cojos', 225, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4938, 'Rollán', 630, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4939, 'Saelices el Chico', 216, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4940, 'Sagrada, La', 208, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4941, 'Sahugo, El', 342, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4942, 'Salamanca', 167316, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4943, 'Saldeana', 205, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4944, 'Salmoral', 395, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4945, 'Salvatierra de Tormes', 76, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4946, 'San Cristóbal de la Cuesta', 274, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4947, 'San Esteban de la Sierra', 492, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4948, 'San Felices de los Gallegos', 694, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4949, 'San Martín del Castañar', 302, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4950, 'San Miguel de Valero', 445, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4951, 'San Miguel del Robledo', 106, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4952, 'San Morales', 193, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4953, 'San Muñoz', 417, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4954, 'San Pedro de Rozados', 410, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4955, 'San Pedro del Valle', 136, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4956, 'San Pelayo de Guareña', 121, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4957, 'Sancti-Spíritus', 1297, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4958, 'Sanchón de la Ribera', 153, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4959, 'Sanchón de la Sagrada', 63, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4960, 'Sanchotello', 355, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4961, 'Sando', 252, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4962, 'Santa María de Sando', 226, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4963, 'Santa Marta de Tormes', 8801, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4964, 'Santiago de la Puebla', 660, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4965, 'Santibáñez de Béjar', 746, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4966, 'Santibáñez de la Sierra', 255, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4967, 'Santiz', 317, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4968, 'Santos, Los', 808, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4969, 'Sardón de los Frailes', 117, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4970, 'Saucelle', 506, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4971, 'Sepulcro Hilario', 329, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4972, 'Sequeros', 285, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4973, 'Serradilla del Arroyo', 490, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4974, 'Serradilla del Llano', 361, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4975, 'Sierpe, La', 60, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4976, 'Sieteiglesias de Tormes', 171, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4977, 'Sobradillo', 403, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4978, 'Sorihuela', 447, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4979, 'Sotoserrano', 769, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4980, 'Tabera de Abajo', 130, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4981, 'Tala, La', 166, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4982, 'Tamames', 1117, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4983, 'Tarazona de Guareña', 463, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4984, 'Tardáguila', 280, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4985, 'Tejado, El', 208, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4986, 'Tejeda y Segoyuela', 145, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4987, 'Tenebrón', 232, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4988, 'Terradillos', 2594, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4989, 'Topas', 785, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4990, 'Tordillos', 654, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4991, 'Tornadizo, El', 162, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4992, 'Torresmenudas', 263, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4993, 'Trabanca', 271, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4994, 'Tremedal de Tormes', 61, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4995, 'Valdecarros', 471, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4996, 'Valdefuentes de Sangusín', 350, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4997, 'Valdehijaderos', 129, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4998, 'Valdelacasa', 352, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
4999, 'Valdelageve', 142, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5000, 'Valdelosa', 505, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5001, 'Valdemierque', 75, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5002, 'Valderrodrigo', 212, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5003, 'Valdunciel', 139, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5004, 'Valero', 518, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5005, 'Valsalabroso', 253, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5006, 'Valverde de Valdelacasa', 85, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5007, 'Valverdón', 283, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5008, 'Vallejera de Riofrío', 68, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5009, 'Vecinos', 346, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5010, 'Vega de Tirados', 259, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5011, 'Veguillas, Las', 335, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5012, 'Vellés, La', 496, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5013, 'Ventosa del Río Almar', 175, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5014, 'Vídola, La', 216, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5015, 'Vilvestre', 688, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5016, 'Villaflores', 520, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5017, 'Villagonzalo de Tormes', 254, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5018, 'Villalba de los Llanos', 225, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5019, 'Villamayor', 1847, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5020, 'Villanueva del Conde', 286, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5021, 'Villar de Argañán', 130, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5022, 'Villar de Ciervo', 450, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5023, 'Villar de Gallimazo', 268, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5024, 'Villar de la Yegua', 356, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5025, 'Villar de Peralonso', 393, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5026, 'Villar de Samaniego', 141, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5027, 'Villares de la Reina', 1592, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5028, 'Villares de Yeltes', 193, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5029, 'Villarino de los Aires', 1214, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5030, 'Villarmayor', 244, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5031, 'Villarmuerto', 73, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5032, 'Villasbuenas', 360, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5033, 'Villasdardo', 33, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5034, 'Villaseco de los Gamitos', 227, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5035, 'Villaseco de los Reyes', 461, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5036, 'Villasrubias', 447, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5037, 'Villaverde de Guareña', 220, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5038, 'Villavieja de Yeltes', 1176, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5039, 'Villoria', 1420, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5040, 'Villoruela', 1084, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5041, 'Vitigudino', 3213, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5042, 'Yecla de Yeltes', 414, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5043, 'Zamarra', 176, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5044, 'Zamayón', 211, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5045, 'Zarapicos', 79, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5046, 'Zarza de Pumareda, La', 228, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5047, 'Zorita de la Frontera', 335, 37); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5048, 'Adanero', 355, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5049, 'Adrada, La', 2034, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5050, 'Albornos', 297, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5051, 'Aldeanueva de Santa Cruz', 206, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5052, 'Aldeaseca', 388, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5053, 'Aldehuela, La', 308, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5054, 'Amavida', 214, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5055, 'Arenal, El', 1096, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5056, 'Arenas de San Pedro', 6782, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5057, 'Arevalillo', 162, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5058, 'Arévalo', 7442, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5059, 'Aveinte', 154, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5060, 'Avellaneda', 51, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5061, 'Ávila', 50015, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5062, 'Barco de Avila, El', 2650, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5063, 'Barraco, El', 2056, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5064, 'Barromán', 278, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5065, 'Becedas', 511, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5066, 'Becedillas', 185, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5067, 'Bercial de Zapardiel', 353, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5068, 'Berlanas, Las', 389, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5069, 'Bernuy-Zapardiel', 301, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5070, 'Berrocalejo de Aragona', 46, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5071, 'Blascomillán', 328, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5072, 'Blasconuño de Matacabras', 32, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5073, 'Blascosancho', 171, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5074, 'Bohodón, El', 211, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5075, 'Bohoyo', 521, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5076, 'Bonilla de la Sierra', 209, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5077, 'Brabos', 77, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5078, 'Bularros', 134, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5079, 'Burgohondo', 1353, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5080, 'Cabezas de Alambre', 275, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5081, 'Cabezas del Pozo', 202, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5082, 'Cabezas del Villar', 545, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5083, 'Cabizuela', 161, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5084, 'Canales', 92, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5085, 'Candeleda', 5359, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5086, 'Cantiveros', 201, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5087, 'Cardeñosa', 560, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5088, 'Carrera, La', 335, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5089, 'Casas del Puerto de Villatoro', 127, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5090, 'Casasola', 184, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5091, 'Casavieja', 1628, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5092, 'Casillas', 1000, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5093, 'Castellanos de Zapardiel', 162, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5094, 'Cebreros', 3652, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5095, 'Cepeda la Mora', 162, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5096, 'Cillán', 163, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5097, 'Cisla', 219, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5098, 'Colilla, La', 208, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5099, 'Collado de Contreras', 286, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5100, 'Collado del Mirón', 111, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5101, 'Constanzana', 216, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5102, 'Crespos', 808, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5103, 'Cuevas del Valle', 673, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5104, 'Chamartín', 122, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5105, 'Diego del Carpio', 375, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5106, 'Donjimeno', 151, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5107, 'Donvidas', 80, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5108, 'Espinosa de los Caballeros', 118, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5109, 'Flores de Avila', 478, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5110, 'Fontiveros', 1135, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5111, 'Fresnedilla', 129, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5112, 'Fresno, El', 449, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5113, 'Fuente el Sauz', 368, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5114, 'Fuentes de Año', 250, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5115, 'Gallegos de Altamiros', 121, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5116, 'Gallegos de Sobrinos', 121, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5117, 'Garganta del Villar', 91, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5118, 'Gavilanes', 783, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5119, 'Gemuño', 256, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5120, 'Gil García', 80, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5121, 'Gilbuena', 171, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5122, 'Gimialcón', 142, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5123, 'Gotarrendura', 192, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5124, 'Grandes y San Martín', 61, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5125, 'Guisando', 729, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5126, 'Gutierrez-Muñoz', 141, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5127, 'Hernansancho', 242, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5128, 'Herradón de Pinares', 508, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5129, 'Herreros de Suso', 254, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5130, 'Higuera de las Dueñas', 322, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5131, 'Hija de Dios, La', 145, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5132, 'Horcajada, La', 924, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5133, 'Horcajo de las torres', 903, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5134, 'Hornillo, El', 527, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5135, 'Hoyo de Pinares, El', 2598, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5136, 'Hoyocasero', 450, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5137, 'Hoyorredondo', 145, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5138, 'Hoyos de Miguel Muñoz', 63, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5139, 'Hoyos del Collado', 53, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5140, 'Hoyos del Espino', 419, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5141, 'Hurtumpascual', 144, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5142, 'Junciana', 102, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5143, 'Langa', 621, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5144, 'Lanzahíta', 961, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5145, 'Losar del Barco, El', 170, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5146, 'Llanos de Tormes, Los', 173, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5147, 'Madrigal de las Altas Torres', 2103, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5148, 'Maello', 677, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5149, 'Malpartida de Corneja', 261, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5150, 'Mamblas', 318, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5151, 'Mancera de Arriba', 167, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5152, 'Manjabálago', 87, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5153, 'Marlín', 39, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5154, 'Martiherrero', 221, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5155, 'Martínez', 280, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5156, 'Mediana de Voltoya', 117, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5157, 'Medinilla', 268, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5158, 'Mengamuñoz', 74, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5159, 'Mesegar de Corneja', 138, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5160, 'Mijares', 1095, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5161, 'Mingorría', 561, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5162, 'Mirón, El', 304, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5163, 'Mironcillo', 137, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5164, 'Mirueña de los Infanzones', 251, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5165, 'Mombeltrán', 1259, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5166, 'Monsalupe', 107, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5167, 'Moraleja de Matacabras', 77, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5168, 'Muñana', 615, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5169, 'Muñico', 164, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5170, 'Muñogalindo', 461, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5171, 'Muñogrande', 123, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5172, 'Muñomer del Peco', 140, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5173, 'Muñopepe', 115, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5174, 'Muñosancho', 185, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5175, 'Muñotello', 145, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5176, 'Narrillos del Alamo', 179, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5177, 'Narrillos del Rebollar', 87, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5178, 'Narros de Saldueña', 232, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5179, 'Narros del Castillo', 287, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5180, 'Narros del Puerto', 49, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5181, 'Nava de Arévalo', 1072, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5182, 'Nava del Barco', 232, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5183, 'Navacepedilla de Corneja', 154, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5184, 'Navadijos', 82, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5185, 'Navaescurial', 115, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5186, 'Navahondilla', 136, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5187, 'Navalacruz', 344, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5188, 'Navalmoral', 651, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5189, 'Navalonguilla', 538, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5190, 'Navalosa', 597, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5191, 'Navalperal de Pinares', 951, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5192, 'Navalperal de Tormes', 165, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5193, 'Navaluenga', 2049, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5194, 'Navaquesera', 69, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5195, 'Navarredonda de Gredos', 521, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5196, 'Navarredondilla', 321, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5197, 'Navarrevisca', 413, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5198, 'Navas del Marqués, Las', 4287, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5199, 'Navatalgordo', 576, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5200, 'Navatejares', 111, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5201, 'Neila de San Miguel', 149, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5202, 'Niharra', 210, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5203, 'Ojos-Albos', 41, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5204, 'Orbita', 110, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5205, 'Oso, El', 257, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5206, 'Padiernos', 273, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5207, 'Pajares de Adaja', 204, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5208, 'Palacios de Goda', 554, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5209, 'Papatrigo', 360, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5210, 'Parral, El', 135, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5211, 'Pascualcobo', 48, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5212, 'Pedro Bernardo', 1524, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5213, 'Pedro-Rodríguez', 244, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5214, 'Peguerinos', 381, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5215, 'Peñalba de Avila', 134, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5216, 'Piedrahíta', 2287, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5217, 'Piedralaves', 2162, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5218, 'Poveda', 97, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5219, 'Poyales del Hoyo', 822, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5220, 'Pozanco', 66, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5221, 'Pradosegar', 220, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5222, 'Puerto Castilla', 157, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5223, 'Rasueros', 414, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5224, 'Riocabado', 218, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5225, 'Riofrío', 358, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5226, 'Rivilla de Barajas', 108, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5227, 'Salobral', 135, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5228, 'Salvadiós', 133, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5229, 'San Bartolomé de Béjar', 99, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5230, 'San Bartolomé de Corneja', 138, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5231, 'San Bartolomé de Pinares', 815, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5232, 'San Esteban de los Patos', 48, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5233, 'San Esteban de Zapardiel', 83, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5234, 'San Esteban del Valle', 1002, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5235, 'San García de Ingelmos', 198, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5236, 'San Juan de Gredos', 466, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5237, 'San Juan de la Encinilla', 158, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5238, 'San Juan de la Nava', 723, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5239, 'San Juan del Molinillo', 379, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5240, 'San Juan del Olmo', 201, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5241, 'San Lorenzo de Tormes', 83, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5242, 'San Martín de la Vega del Alberche', 322, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5243, 'San Martín del Pimpollar', 352, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5244, 'San Miguel de Corneja', 138, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5245, 'San Miguel de Serrezuela', 243, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5246, 'San Pascual', 75, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5247, 'San Pedro del Arroyo', 497, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5248, 'San Vicente de Arévalo', 244, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5249, 'Sanchidrián', 776, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5250, 'Sanchorreja', 141, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5251, 'Santa Cruz de Pinares', 236, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5252, 'Santa Cruz del Valle', 667, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5253, 'Santa María de los Caballeros', 182, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5254, 'Santa María del Arroyo', 152, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5255, 'Santa María del Berrocal', 680, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5256, 'Santa María del Cubillo', 409, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5257, 'Santa María del Tiétar', 400, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5258, 'Santiago de Tormes', 372, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5259, 'Santiago del Collado', 323, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5260, 'Santo Domingo de las Posadas', 100, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5261, 'Santo Tomé de Zabarcos', 131, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5262, 'Serrada, La', 145, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5263, 'Serranillos', 515, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5264, 'Sigeres', 93, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5265, 'Sinlabajos', 271, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5266, 'Solana de Avila', 258, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5267, 'Solana de Rioalmar', 337, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5268, 'Solosancho', 1151, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5269, 'Sotalvo', 281, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5270, 'Sotillo de la Adrada', 3534, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5271, 'Tiemblo, El', 3808, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5272, 'Tiñosillos', 764, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5273, 'Tolbaños', 164, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5274, 'Tormellas', 138, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5275, 'Tornadizos de Avila', 352, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5276, 'Torre, La', 491, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5277, 'Tórtoles', 140, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5278, 'Umbrías', 179, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5279, 'Vadillo de la Sierra', 190, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5280, 'Valdecasa', 134, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5281, 'Vega de Santa María', 147, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5282, 'Velayos', 301, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5283, 'Villaflor', 182, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5284, 'Villafranca de la Sierra', 271, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5285, 'Villanueva de Avila', 620, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5286, 'Villanueva de Gómez', 166, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5287, 'Villanueva del Aceral', 233, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5288, 'Villanueva del Campillo', 244, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5289, 'Villar de Corneja', 106, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5290, 'Villarejo del Valle', 493, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5291, 'Villatoro', 253, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5292, 'Viñegra de Moraña', 101, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5293, 'Vita', 126, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5294, 'Zapardiel de la Cañada', 215, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5295, 'Zapardiel de la Ribera', 157, 5); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5296, 'Ábalos', 289, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5297, 'Agoncillo', 885, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5298, 'Aguilar del Río Alhama', 728, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5299, 'Ajamil', 79, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5300, 'Albelda de Iregua', 2267, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5301, 'Alberite', 1985, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5302, 'Alcanadre', 836, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5303, 'Aldeanueva de Ebro', 2523, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5304, 'Alesanco', 510, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5305, 'Alesón', 146, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5306, 'Alfaro', 9257, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5307, 'Almarza de Cameros', 40, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5308, 'Anguciana', 318, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5309, 'Anguiano', 643, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5310, 'Arenzana de Abajo', 331, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5311, 'Arenzana de Arriba', 41, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5312, 'Arnedillo', 433, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5313, 'Arnedo', 12715, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5314, 'Arrúbal', 440, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5315, 'Ausejo', 777, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5316, 'Autol', 3381, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5317, 'Azofra', 365, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5318, 'Badarán', 771, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5319, 'Bañares', 443, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5320, 'Baños de Río Tobía', 1845, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5321, 'Baños de Rioja', 117, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5322, 'Berceo', 228, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5323, 'Bergasa', 195, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5324, 'Bergasillas Bajera', 33, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5325, 'Bezares', 33, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5326, 'Bobadilla', 175, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5327, 'Brieva de Cameros', 77, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5328, 'Briñas', 197, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5329, 'Briones', 840, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5330, 'Cabezón de Cameros', 32, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5331, 'Calahorra', 18801, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5332, 'Camprovín', 239, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5333, 'Canales de la Sierra', 107, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5334, 'Canillas de Río Tuerto', 75, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5335, 'Cañas', 119, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5336, 'Cárdenas', 253, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5337, 'Casalarreina', 909, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5338, 'Castañares de Rioja', 496, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5339, 'Castroviejo', 63, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5340, 'Cellorigo', 20, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5341, 'Cenicero', 2102, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5342, 'Cervera del Río Alhama', 3381, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5343, 'Cidamón', 50, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5344, 'Cihuri', 149, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5345, 'Cirueña', 132, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5346, 'Clavijo', 202, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5347, 'Cordovín', 224, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5348, 'Corera', 257, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5349, 'Cornago', 637, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5350, 'Corporales', 64, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5351, 'Cuzcurrita de Río Tirón', 482, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5352, 'Daroca de Rioja', 61, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5353, 'Enciso', 188, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5354, 'Entrena', 1121, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5355, 'Estollo', 156, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5356, 'Ezcaray', 1812, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5357, 'Foncea', 130, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5358, 'Fonzaleche', 175, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5359, 'Fuenmayor', 2120, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5360, 'Galbárruli', 69, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5361, 'Galilea', 286, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5362, 'Gallinero de Cameros', 31, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5363, 'Gimileo', 95, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5364, 'Grañón', 439, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5365, 'Grávalos', 288, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5366, 'Haro', 9119, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5367, 'Herce', 378, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5368, 'Herramélluri', 179, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5369, 'Hervías', 204, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5370, 'Hormilla', 497, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5371, 'Hormilleja', 188, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5372, 'Hornillos de Cameros', 26, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5373, 'Hornos de Moncalvillo', 98, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5374, 'Huércanos', 895, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5375, 'Igea', 820, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5376, 'Jalón de Cameros', 33, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5377, 'Laguna de Cameros', 169, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5378, 'Lagunilla del Jubera', 386, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5379, 'Lardero', 3729, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5380, 'Ledesma de la Cogolla', 20, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5381, 'Leiva', 315, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5382, 'Leza de Río Leza', 33, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5383, 'Logroño', 125617, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5384, 'Lumbreras', 183, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5385, 'Manjarrés', 152, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5386, 'Mansilla de la Sierra', 54, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5387, 'Manzanares de Rioja', 132, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5388, 'Matute', 174, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5389, 'Medrano', 218, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5390, 'Munilla', 120, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5391, 'Murillo de Río Leza', 1573, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5392, 'Muro de Aguas', 74, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5393, 'Muro en Cameros', 43, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5394, 'Nájera', 6952, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5395, 'Nalda', 907, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5396, 'Navajún', 19, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5397, 'Navarrete', 2028, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5398, 'Nestares', 77, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5399, 'Nieva de Cameros', 122, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5400, 'Ocón', 353, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5401, 'Ochánduri', 108, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5402, 'Ojacastro', 241, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5403, 'Ollauri', 329, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5404, 'Ortigosa de Cameros', 338, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5405, 'Pazuengos', 51, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5406, 'Pedroso', 119, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5407, 'Pinillos', 31, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5408, 'Pradejón', 2904, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5409, 'Pradillo', 101, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5410, 'Préjano', 222, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5411, 'Quel', 1934, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5412, 'Rabanera', 64, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5413, 'Rasillo de Cameros, El', 125, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5414, 'Redal, El', 216, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5415, 'Ribafrecha', 1028, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5416, 'Rincón de Soto', 3343, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5417, 'Robres del Castillo', 20, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5418, 'Rodezno', 324, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5419, 'Sajazarra', 161, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5420, 'San Asensio', 1345, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5421, 'San Millán de la Cogolla', 288, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5422, 'San Millán de Yécora', 63, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5423, 'San Román de Cameros', 178, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5424, 'San Torcuato', 110, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5425, 'San Vicente de la Sonsierra', 1119, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5426, 'Santa Coloma', 153, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5427, 'Santa Engracia del Jubera', 232, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5428, 'Santa Eulalia Bajera', 111, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5429, 'Santo Domingo de la Calzada', 5646, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5430, 'Santurde de Rioja', 329, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5431, 'Santurdejo', 218, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5432, 'Sojuela', 93, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5433, 'Sorzano', 249, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5434, 'Sotés', 267, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5435, 'Soto en Cameros', 151, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5436, 'Terroba', 37, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5437, 'Tirgo', 282, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5438, 'Tobía', 62, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5439, 'Tormantos', 222, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5440, 'Torre en Cameros', 11, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5441, 'Torrecilla en Cameros', 554, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5442, 'Torrecilla sobre Alesanco', 90, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5443, 'Torremontalbo', 15, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5444, 'Treviana', 284, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5445, 'Tricio', 389, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5446, 'Tudelilla', 464, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5447, 'Uruñuela', 753, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5448, 'Valdemadera', 19, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5449, 'Valgañón', 182, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5450, 'Ventosa', 136, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5451, 'Ventrosa', 105, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5452, 'Viguera', 376, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5453, 'Villalba de Rioja', 161, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5454, 'Villalobar de Rioja', 136, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5455, 'Villamediana de Iregua', 1945, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5456, 'Villanueva de Cameros', 126, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5457, 'Villar de Arnedo, El', 697, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5458, 'Villar de Torre', 338, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5459, 'Villarejo', 46, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5460, 'Villarroya', 9, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5461, 'Villarta-Quintana', 225, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5462, 'Villavelayo', 82, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5463, 'Villaverde de Rioja', 105, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5464, 'Villoslada de Cameros', 391, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5465, 'Viniegra de Abajo', 131, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5466, 'Viniegra de Arriba', 56, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5467, 'Zarratón', 275, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5468, 'Zarzosa', 18, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5469, 'Zorraquín', 49, 26); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5470, 'Abadía', 302, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5471, 'Abertura', 515, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5472, 'Acebo', 875, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5473, 'Acehuche', 1010, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5474, 'Aceituna', 764, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5475, 'Ahigal', 1751, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5476, 'Albalá del Caudillo', 916, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5477, 'Alcántara', 1977, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5478, 'Alcollarín', 372, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5479, 'Alcuéscar', 3344, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5480, 'Aldea del Obispo, La', 429, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5481, 'Aldea del Cano', 792, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5482, 'Aldeacentenera', 1012, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5483, 'Aldeanueva de la Vera', 2670, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5484, 'Aldeanueva del Camino', 988, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5485, 'Aldehuela del Jerte', 385, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5486, 'Alía', 1617, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5487, 'Aliseda', 2484, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5488, 'Almaraz', 1478, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5489, 'Almoharín', 2122, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5490, 'Arroyo de la Luz', 6713, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5491, 'Arroyomolinos', 1176, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5492, 'Arroyomolinos de la Vera', 652, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5493, 'Baños de Montemayor', 720, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5494, 'Barrado', 583, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5495, 'Belvís de Monroy', 584, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5496, 'Benquerencia', 116, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5497, 'Berrocalejo', 139, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5498, 'Berzocana', 703, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5499, 'Bohonal de Ibor', 608, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5500, 'Botija', 195, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5501, 'Brozas', 2510, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5502, 'Cabañas del Castillo', 672, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5503, 'Cabezabellosa', 601, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5504, 'Cabezuela del Valle', 2423, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5505, 'Cabrero', 479, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5506, 'Cáceres', 81037, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5507, 'Cachorrilla', 107, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5508, 'Cadalso', 603, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5509, 'Calzadilla', 623, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5510, 'Caminomorisco', 1313, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5511, 'Campillo de Deleitosa', 164, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5512, 'Campo Lugar', 1284, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5513, 'Cañamero', 2021, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5514, 'Cañaveral', 1697, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5515, 'Carbajo', 294, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5516, 'Carcaboso', 1296, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5517, 'Carrascalejo', 468, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5518, 'Casar de Cáceres', 4506, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5519, 'Casar de Palomero', 1435, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5520, 'Casares de las Hurdes', 942, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5521, 'Casas de Don Antonio', 266, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5522, 'Casas de Don Gómez', 412, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5523, 'Casas de Millán', 874, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5524, 'Casas de Miravete', 167, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5525, 'Casas del Castañar', 743, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5526, 'Casas del Monte', 946, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5527, 'Casatejada', 1455, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5528, 'Casillas de Coria', 615, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5529, 'Castañar de Ibor', 1398, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5530, 'Ceclavín', 2392, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5531, 'Cedillo', 593, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5532, 'Cerezo', 269, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5533, 'Cilleros', 2368, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5534, 'Collado', 354, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5535, 'Conquista de la Sierra', 201, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5536, 'Coria', 12055, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5537, 'Cuacos de Yuste', 966, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5538, 'Cumbre, La', 1230, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5539, 'Deleitosa', 1045, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5540, 'Descargamaría', 281, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5541, 'Eljas', 1358, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5542, 'Escurial', 1013, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5543, 'Fresnedoso de Ibor', 497, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5544, 'Galisteo', 2065, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5545, 'Garciaz', 1100, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5546, 'Garganta, La', 640, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5547, 'Garganta la Olla', 1228, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5548, 'Gargantilla', 555, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5549, 'Gargüera', 265, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5550, 'Garrovillas', 2640, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5551, 'Garvín', 127, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5552, 'Gata', 2051, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5553, 'Gordo, El', 329, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5554, 'Granja, La', 475, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5555, 'Guadalupe', 2469, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5556, 'Guijo de Coria', 339, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5557, 'Guijo de Galisteo', 1777, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5558, 'Guijo de Granadilla', 805, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5559, 'Guijo de Santa Bárbara', 547, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5560, 'Herguijuela', 454, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5561, 'Hernán-Pérez', 508, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5562, 'Herrera de Alcántara', 375, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5563, 'Herreruela', 525, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5564, 'Hervás', 3933, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5565, 'Higuera', 130, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5566, 'Hinojal', 461, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5567, 'Holguera', 859, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5568, 'Hoyos', 998, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5569, 'Huélaga', 207, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5570, 'Ibahernando', 854, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5571, 'Jaraicejo', 727, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5572, 'Jaraíz de la Vera', 7742, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5573, 'Jarandilla de la Vera', 3162, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5574, 'Jarilla', 197, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5575, 'Jerte', 1394, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5576, 'Ladrillar', 429, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5577, 'Logrosán', 2755, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5578, 'Losar de la Vera', 3096, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5579, 'Madrigal de la Vera', 1823, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5580, 'Madrigalejo', 2420, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5581, 'Madroñera', 3258, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5582, 'Majadas', 1316, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5583, 'Malpartida de Cáceres', 4236, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5584, 'Malpartida de Plasencia', 4237, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5585, 'Marchagaz', 422, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5586, 'Mata de Alcántara', 396, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5587, 'Membrío', 990, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5588, 'Mesas de Ibor', 236, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5589, 'Miajadas', 10014, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5590, 'Millanes', 262, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5591, 'Mirabel', 900, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5592, 'Mohedas de Granadilla', 1231, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5593, 'Monroy', 1342, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5594, 'Montánchez', 2391, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5595, 'Montehermoso', 5368, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5596, 'Moraleja', 8341, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5597, 'Morcillo', 602, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5598, 'Navaconcejo', 2197, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5599, 'Navalmoral de la Mata', 16325, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5600, 'Navalvillar de Ibor', 601, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5601, 'Navas del Madroño', 1709, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5602, 'Navezuelas', 774, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5603, 'Nuñomoral', 2091, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5604, 'Oliva de Plasencia', 375, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5605, 'Palomero', 613, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5606, 'Pasarón de la Vera', 724, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5607, 'Pedroso de Acim', 176, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5608, 'Peraleda de la Mata', 1489, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5609, 'Peraleda de San Román', 444, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5610, 'Perales del Puerto', 1061, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5611, 'Pescueza', 253, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5612, 'Pesga, La', 1357, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5613, 'Piedras Albas', 261, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5614, 'Pinofranqueado', 1827, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5615, 'Piornal', 1616, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5616, 'Plasencia', 37703, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5617, 'Plasenzuela', 561, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5618, 'Portaje', 457, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5619, 'Portezuelo', 351, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5620, 'Pozuelo de Zarzón', 676, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5621, 'Puerto de Santa Cruz', 461, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5623, 'Riolobos', 1788, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5624, 'Robledillo de Gata', 205, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5625, 'Robledillo de la Vera', 451, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5626, 'Robledillo de Trujillo', 535, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5627, 'Robledollano', 444, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5628, 'Romangordo', 231, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5629, 'Rosalejo', 2025, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5630, 'Ruanes', 109, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5631, 'Salorino', 951, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5632, 'Salvatierra de Santiago', 463, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5633, 'San Martín de Trevejo', 963, 10); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5634, 'Santa Ana', 410, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5635, 'Santa Cruz de la Sierra', 388, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5636, 'Santa Cruz de Paniagua', 474, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5637, 'Santa Marta de Magasca', 445, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5638, 'Santiago de Alcántara', 882, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5639, 'Santiago del Campo', 348, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5640, 'Santibáñez el Alto', 523, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5641, 'Santibáñez el Bajo', 1076, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5642, 'Saucedilla', 645, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5643, 'Segura de Toro', 215, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5644, 'Serradilla', 2191, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5645, 'Serrejón', 525, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5646, 'Sierra de Fuentes', 1675, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5647, 'Talaván', 1092, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5648, 'Talaveruela de la Vera', 524, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5649, 'Talayuela', 7616, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5650, 'Tejeda de Tiétar', 1063, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5651, 'Toril', 183, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5652, 'Tornavacas', 1453, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5653, 'Torno, El', 1085, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5654, 'Torre de Don Miguel', 696, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5655, 'Torre de Santa María', 807, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5656, 'Torrecilla de los Ángeles', 712, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5657, 'Torrecillas de la Tiesa', 1283, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5658, 'Torrejón el Rubio', 832, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5659, 'Torrejoncillo', 3727, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5660, 'Torremenga', 623, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5661, 'Torremocha', 1338, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5662, 'Torreorgaz', 1533, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5663, 'Torrequemada', 634, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5664, 'Trujillo', 9347, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5665, 'Valdastillas', 459, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5666, 'Valdecañas de Tajo', 152, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5667, 'Valdefuentes', 1697, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5668, 'Valdehúncar', 170, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5669, 'Valdelacasa de Tajo', 739, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5670, 'Valdemorales', 275, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5671, 'Valdeobispo', 870, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5672, 'Valencia de Alcántara', 6429, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5673, 'Valverde de la Vera', 687, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5674, 'Valverde del Fresno', 2859, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5675, 'Viandar de la Vera', 347, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5676, 'Villa del Campo', 691, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5677, 'Villa del Rey', 179, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5678, 'Villamesías', 475, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5679, 'Villamiel', 803, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5680, 'Villanueva de la Sierra', 675, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5681, 'Villanueva de la Vera', 2268, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5682, 'Villar de Plasencia', 317, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5683, 'Villar del Pedroso', 907, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5684, 'Villasbuenas de Gata', 549, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5685, 'Zarza de Granadilla', 1927, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5686, 'Zarza de Montánchez', 718, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5687, 'Zarza la Mayor', 1716, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5688, 'Zorita', 2187, 10); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5854, 'Acedera', 1037, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5855, 'Aceuchal', 5137, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5856, 'Ahillones', 1246, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5857, 'Alange', 2064, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5858, 'Albuera, La', 1820, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5859, 'Alburquerque', 5797, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5860, 'Alconchel', 2309, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5861, 'Alconera', 766, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5862, 'Aljucén', 226, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5863, 'Almendral', 1529, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5864, 'Almendralejo', 26869, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5865, 'Arroyo de San Serván', 4085, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5866, 'Atalaya', 388, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5867, 'Azuaga', 10064, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5868, 'Badajoz', 132154, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5869, 'Barcarrota', 4195, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5870, 'Baterno', 414, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5871, 'Benquerencia de la Serena', 1150, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5872, 'Berlanga', 2769, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5873, 'Bienvenida', 2475, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5874, 'Bodonal de la Sierra', 1442, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5875, 'Burguillos del Cerro', 3393, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5876, 'Cabeza del Buey', 6374, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5877, 'Cabeza la Vaca', 1660, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5878, 'Calamonte', 5868, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5879, 'Calera de León', 1187, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5880, 'Calzadilla de los Barros', 825, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5881, 'Campanario', 6036, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5882, 'Campillo de Llerena', 1817, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5883, 'Capilla', 235, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5884, 'Carmonita', 728, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5885, 'Carrascalejo, El', 29, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5886, 'Casas de Don Pedro', 1914, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5887, 'Casas de Reina', 319, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5888, 'Castilblanco', 1456, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5889, 'Castuera', 7522, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5890, 'Codosera, La', 2639, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5891, 'Cordobilla de Lácara', 1031, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5892, 'Coronada, La', 2544, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5893, 'Corte de Peleas', 1315, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5894, 'Cristina', 568, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5895, 'Cheles', 1387, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5896, 'Don Alvaro', 655, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5897, 'Don Benito', 31098, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5898, 'Entrín Bajo', 708, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5899, 'Esparragalejo', 1527, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5900, 'Esparragosa de la Serena', 1172, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5901, 'Esparragosa de Lares', 1266, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5902, 'Feria', 1575, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5903, 'Fregenal de la Sierra', 5544, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5904, 'Fuenlabrada de los Montes', 2153, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5905, 'Fuente de Cantos', 5211, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5906, 'Fuente del Arco', 877, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5907, 'Fuente del Maestre', 6912, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5908, 'Fuentes de León', 2878, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
5909, 'Garbayuela', 615, 6); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6145, 'Navas de Oro', 1503, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6690, 'Gallipienzo', 161, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6691, 'Gallués', 124, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6692, 'Garaioa', 126, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6693, 'Garde', 201, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6694, 'Garínoain', 299, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6695, 'Garralda', 227, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6696, 'Genevilla', 127, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6697, 'Goizueta', 949, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6698, 'Goñi', 206, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6699, 'Güesa', 79, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6700, 'Guesálaz', 458, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6701, 'Guirguillano', 80, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6702, 'Hiriberri/Villanueva de Aezkoa', 156, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6703, 'Huarte/Uharte', 2750, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6704, 'Ibargoiti', 218, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6705, 'Igantzi', 595, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6706, 'Igúzquiza', 343, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6707, 'Imotz', 405, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6708, 'Irañeta', 161, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6709, 'Irurtzun', 1991, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6710, 'Isaba', 562, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6711, 'Ituren', 462, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6712, 'Iturmendi', 360, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6713, 'Iza', 660, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6714, 'Izagaondoa', 178, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6715, 'Izalzu', 49, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6716, 'Jaurrieta', 268, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6717, 'Javier', 143, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6718, 'Juslapeña', 464, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6719, 'Lakuntza', 1003, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6720, 'Lana', 213, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6721, 'Lantz', 122, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6722, 'Lapoblación', 183, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6723, 'Larraga', 1900, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6724, 'Larraona', 164, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6725, 'Larraun', 846, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6726, 'Lazagurría', 245, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6727, 'Leache', 50, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6728, 'Legarda', 71, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6729, 'Legaria', 152, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6730, 'Leitza', 3086, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6731, 'Lekunberri', 846, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6732, 'Leoz', 260, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6733, 'Lerga', 87, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6734, 'Lerín', 1932, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6735, 'Lesaka', 2728, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6736, 'Lezáun', 262, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6737, 'Liédena', 322, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6738, 'Lizoáin', 231, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6739, 'Lodosa', 4607, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6740, 'Lónguida', 288, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6741, 'Lumbier', 1420, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6742, 'Luquin', 132, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6743, 'Luzaide/Valcarlos', 467, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6744, 'Mañeru', 365, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6745, 'Marañón', 76, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6746, 'Marcilla', 2384, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6747, 'Mélida', 844, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6748, 'Mendavia', 3521, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6749, 'Mendaza', 401, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6750, 'Mendigorría', 901, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6751, 'Metauten', 311, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6752, 'Milagro', 2585, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6753, 'Mirafuentes', 57, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6754, 'Miranda de Arga', 978, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6755, 'Monreal', 295, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6756, 'Monteagudo', 1189, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6757, 'Morentin', 120, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6758, 'Mues', 119, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6759, 'Murchante', 2997, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6760, 'Murieta', 281, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6761, 'Murillo el Cuende', 669, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6762, 'Murillo el Fruto', 780, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6763, 'Muruzábal', 212, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6764, 'Navascués', 222, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6765, 'Nazar', 59, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6766, 'Noáin (Valle de Elorz)', 3857, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6767, 'Obanos', 750, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6768, 'Oco', 91, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6769, 'Ochagavía', 701, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6770, 'Odieta', 329, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6771, 'Oitz', 159, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6772, 'Olaibar', 169, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6773, 'Olazti/Olazagutía', 1622, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6774, 'Olejua', 58, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6775, 'Olite', 3106, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6776, 'Olóriz', 172, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6777, 'Olza', 1216, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6778, 'Ollo', 363, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6779, 'Orbaitzeta', 243, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6780, 'Orbara', 67, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6781, 'Orcoyen', 1250, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6782, 'Orísoain', 98, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6783, 'Oronz', 53, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6784, 'Oroz-Betelu', 232, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6785, 'Orreaga/Roncesvalles', 31, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6786, 'Oteiza', 921, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6787, 'Pamplona', 171150, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6788, 'Peralta', 4668, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6789, 'Petilla de Aragón', 52, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6790, 'Piedramillera', 75, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6791, 'Pitillas', 614, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6792, 'Puente la Reina', 2904, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6793, 'Pueyo', 333, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6794, 'Ribaforada', 3165, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6795, 'Romanzado', 161, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6796, 'Roncal', 364, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6798, 'Saldías', 157, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6799, 'Salinas de Oro', 107, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6800, 'San Adrián', 5241, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6801, 'San Martín de Unx', 494, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6802, 'Sangüesa', 4553, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6803, 'Sansol', 127, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6804, 'Santacara', 1049, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6805, 'Sarriés', 84, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6806, 'Sartaguda', 1376, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6807, 'Sesma', 1408, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6808, 'Sorlada', 53, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6809, 'Sunbilla', 659, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6810, 'Tafalla', 10017, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6811, 'Tiebas', 594, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6812, 'Tirapu', 70, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6813, 'Torralba del Río', 152, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6814, 'Torres del Río', 198, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6815, 'Tudela', 27188, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6816, 'Tulebras', 102, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6817, 'Ucar', 114, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6818, 'Uharte-Arakil', 794, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6819, 'Ujué', 254, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6820, 'Ultzama', 1646, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6821, 'Unciti', 231, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6822, 'Unzué', 132, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6823, 'Urdazubi/Urdax', 420, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6824, 'Urdiain', 638, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6825, 'Urraul Alto', 150, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6826, 'Urraul Bajo', 284, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6827, 'Urrotz', 216, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6828, 'Urroz', 363, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6829, 'Urzainqui', 111, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6830, 'Uterga', 141, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6831, 'Uztárroz', 289, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6832, 'Valtierra', 2459, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6833, 'Viana', 3389, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6834, 'Vidángoz', 117, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6835, 'Vidaurreta', 101, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6836, 'Villafranca', 2515, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6837, 'Villamayor de Monjardín', 118, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6838, 'Villatuerta', 786, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6839, 'Villava', 8570, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6840, 'Yerri', 1528, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6841, 'Yesa', 272, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6842, 'Zabalza', 141, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6843, 'Ziordia', 372, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6844, 'Zizur Mayor', 8248, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6845, 'Zubieta', 321, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6846, 'Zugarramurdi', 247, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6847, 'Zúñiga', 130, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6848, 'Abantoza', 202, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6849, 'Acered', 307, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6850, 'Agón', 211, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6851, 'Aguarón', 757, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6852, 'Aguilón', 262, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6853, 'Ainzón', 1223, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6854, 'Aladrén', 66, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6855, 'Alagón', 5651, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6856, 'Alarba', 173, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6857, 'Alberite de San Juan', 112, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6858, 'Albeta', 137, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6859, 'Alborge', 126, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6860, 'Alcalá de Ebro', 332, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6861, 'Alcalá de Moncayo', 162, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6862, 'Alconchel de Ariza', 188, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6863, 'Aldehuela de Liestos', 78, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6864, 'Alfajarín', 1459, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6865, 'Alfamén', 1323, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6866, 'Alforque', 88, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6867, 'Alhama de Aragón', 1223, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6868, 'Almochuel', 48, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6869, 'Almolda, La', 719, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6870, 'Almonacid de la Cuba', 373, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6871, 'Almonacid de la Sierra', 845, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6872, 'Almunia de Doña Godina, La', 5269, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6873, 'Alpartir', 628, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6874, 'Ambel', 394, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6875, 'Anento', 103, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6876, 'Aniñón', 944, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6877, 'Añón de Moncayo', 327, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6878, 'Aranda de Moncayo', 263, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6879, 'Arándiga', 558, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6880, 'Ardisa', 76, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6881, 'Ariza', 1361, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6882, 'Artieda', 100, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6883, 'Asín', 106, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6884, 'Atea', 271, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6885, 'Ateca', 2126, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6886, 'Azuara', 776, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6887, 'Badules', 119, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6888, 'Bagüés', 30, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6889, 'Balconchán', 34, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6890, 'Bárboles', 337, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6891, 'Bardallur', 310, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6892, 'Belchite', 1667, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6893, 'Belmonte de Gracián', 328, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6894, 'Berdejo', 44, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6895, 'Berrueco', 38, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6896, 'Biel-Fuencalderas', 225, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6897, 'Bijuesca', 145, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6898, 'Biota', 1286, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6899, 'Bisimbre', 148, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6900, 'Boquiñeni', 1041, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6901, 'Bordalba', 103, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6902, 'Borja', 4197, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6903, 'Botorrita', 461, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6904, 'Brea de Aragón', 2032, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6905, 'Bubierca', 114, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6906, 'Bujaraloz', 1073, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6907, 'Bulbuente', 270, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6908, 'Bureta', 338, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6909, 'Burgo de Ebro, El', 1385, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6910, 'Buste, El', 114, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6911, 'Cabañas de Ebro', 547, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6912, 'Cabolafuente', 98, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6913, 'Cadrete', 1188, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6914, 'Calatayud', 17256, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6915, 'Calatorao', 2637, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6916, 'Calcena', 103, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6917, 'Calmarza', 114, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6918, 'Campillo de Aragón', 217, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6919, 'Carenas', 254, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6920, 'Cariñena', 2918, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6921, 'Caspe', 8182, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6922, 'Castejón de Alarba', 128, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6923, 'Castejón de las Armas', 171, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6924, 'Castejón de Valdejasa', 379, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6925, 'Castiliscar', 449, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6926, 'Cervera de la Cañada', 365, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6927, 'Cerveruela', 4, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6928, 'Cetina', 798, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6929, 'Cimballa', 141, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6930, 'Cinco Olivas', 138, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6931, 'Clarés de Ribota', 102, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6932, 'Codo', 301, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6933, 'Codos', 310, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6934, 'Contamina', 65, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6935, 'Cosuenda', 443, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6936, 'Cuarte de Huerva', 1613, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6937, 'Cubel', 254, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6938, 'Cuerlas, Las', 105, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6939, 'Chiprana', 435, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6940, 'Chodes', 146, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6941, 'Daroca', 2399, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6942, 'Ejea de los Caballeros', 15624, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6943, 'Embid de Ariza', 70, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6944, 'Encinacorba', 340, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6945, 'Épila', 3978, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6946, 'Erla', 507, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6947, 'Escatrón', 1403, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6948, 'Fabara', 1290, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6949, 'Farlete', 475, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6950, 'Fayón', 413, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6951, 'Fayos, Los', 215, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6952, 'Figueruelas', 961, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6953, 'Fombuena', 23, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6954, 'Frago, El', 114, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6955, 'Frasno, El', 602, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6956, 'Fréscano', 284, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6957, 'Fuendejalón', 965, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6958, 'Fuendetodos', 175, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6959, 'Fuentes de Ebro', 3877, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6960, 'Fuentes de Jiloca', 398, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6961, 'Gallocanta', 196, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6962, 'Gallur', 3009, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6963, 'Gelsa', 1317, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6964, 'Godojos', 83, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6965, 'Gotor', 390, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6966, 'Grisel', 69, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6967, 'Grisén', 471, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6968, 'Herrera de los Navarros', 655, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6969, 'Ibdes', 618, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6970, 'Illueca', 3232, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6971, 'Isuerre', 64, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6972, 'Jaraba', 341, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6973, 'Jarque', 598, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6974, 'Jaulín', 308, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6975, 'Joyosa, La', 355, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6976, 'Lagata', 144, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6977, 'Langa del Castillo', 201, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6978, 'Layana', 174, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6979, 'Lécera', 933, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6980, 'Leciñena', 1403, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6981, 'Lechón', 59, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6982, 'Letux', 487, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6983, 'Litago', 189, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6984, 'Lituénigo', 128, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6985, 'Lobera de Onsella', 57, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6986, 'Longares', 904, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6987, 'Longás', 39, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6988, 'Lucena de Jalón', 309, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6989, 'Luceni', 1073, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6990, 'Luesia', 441, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6991, 'Luesma', 28, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6992, 'Lumpiaque', 983, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6993, 'Luna', 962, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6994, 'Maella', 2120, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6995, 'Magallón', 1283, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6996, 'Mainar', 194, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6997, 'Malanquilla', 144, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6998, 'Maleján', 321, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6999, 'Malón', 501, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7000, 'Maluenda', 1037, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7001, 'Mallén', 3008, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7002, 'Manchones', 162, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7003, 'Mara', 234, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7004, 'María de Huerva', 845, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7005, 'Mediana de Aragón', 521, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7006, 'Mequinenza', 2673, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7007, 'Mesones de Isuela', 415, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7008, 'Mezalocha', 330, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7009, 'Mianos', 38, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7010, 'Miedes de Aragón', 536, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7011, 'Monegrillo', 554, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7012, 'Moneva', 134, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7013, 'Monreal de Ariza', 331, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7014, 'Monterde', 271, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7015, 'Montón', 155, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7016, 'Morata de Jalón', 1682, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7017, 'Morata de Jiloca', 361, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7018, 'Morés', 567, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7019, 'Moros', 571, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7020, 'Moyuela', 397, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7021, 'Mozota', 116, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7022, 'Muel', 1187, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7023, 'Muela, La', 1053, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7024, 'Munébrega', 500, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7025, 'Murero', 160, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7026, 'Murillo de Gállego', 156, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7027, 'Navardún', 83, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7028, 'Nigüella', 133, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7029, 'nombrevilla', 33, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7030, 'Nonaspe', 1119, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7031, 'Novallas', 817, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7032, 'Novillas', 726, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7033, 'Nuévalos', 318, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7034, 'Nuez de Ebro', 570, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7035, 'Olvés', 173, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7036, 'Orcajo', 56, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7037, 'Orera', 164, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7038, 'Orés', 125, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7039, 'Oseja', 29, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7040, 'Osera de Ebro', 357, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7041, 'Paniza', 756, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7042, 'Paracuellos de Jiloca', 532, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7043, 'Paracuellos de la Ribera', 344, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7044, 'Pastriz', 818, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7045, 'Pedrola', 2557, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7046, 'Pedrosas, Las', 106, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7047, 'Perdiguera', 463, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7048, 'Piedratajada', 218, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7049, 'Pina de Ebro', 2222, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7050, 'Pinseque', 1391, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7051, 'Pintanos, Los', 85, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7052, 'Plasencia de Jalón', 382, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7053, 'Pleitas', 76, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7054, 'Plenas', 176, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7055, 'Pomer', 20, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7056, 'Pozuel de Ariza', 34, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7057, 'Pozuelo de Aragón', 381, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7058, 'Pradilla de Ebro', 677, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7059, 'Puebla de Albortón', 150, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7060, 'Puebla de Alfindén, La', 1539, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7061, 'Puendeluna', 65, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7062, 'Purujosa', 37, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7063, 'Quinto', 2180, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7064, 'Remolinos', 1261, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7065, 'Retascón', 81, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7066, 'Ricla', 2047, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7067, 'Romanos', 151, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7068, 'Rueda de Jalón', 361, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7069, 'Ruesca', 84, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7070, 'Sabiñán', 1013, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7071, 'Sádaba', 1789, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7072, 'Salillas de Jalón', 378, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7073, 'Salvatierra de Esca', 314, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7074, 'Samper del Salz', 108, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7075, 'San Martín de la Virgen de Moncayo', 315, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7076, 'San Mateo de Gállego', 1926, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7077, 'Santa Cruz de Grío', 254, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7078, 'Santa Cruz de Moncayo', 104, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7079, 'Santa Eulalia de Gállego', 143, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7080, 'Santed', 84, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7081, 'Sástago', 1584, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7082, 'Sediles', 107, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7083, 'Sestrica', 554, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7084, 'Sierra de Luna', 295, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7085, 'Sigüés', 200, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7086, 'Sisamón', 99, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7087, 'Sobradiel', 587, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7088, 'Sos del Rey Católico', 867, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7089, 'Tabuenca', 523, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7090, 'Talamantes', 62, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7091, 'Tarazona', 10658, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7092, 'Tauste', 7030, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7093, 'Terrer', 750, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7094, 'Tierga', 278, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7095, 'Tobed', 315, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7096, 'Torralba de los Frailes', 107, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7097, 'Torralba de Ribota', 235, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7098, 'Torralbilla', 75, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7099, 'Torrehermosa', 128, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7100, 'Torrelapaja', 51, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7101, 'Torrellas', 357, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7102, 'Torres de Berrellén', 1419, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7103, 'Torrijo de la Cañada', 453, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7104, 'Tosos', 240, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7105, 'Trasmoz', 74, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7106, 'Trasobares', 268, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7107, 'Uncastillo', 925, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7108, 'Undués de Lerda', 52, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7109, 'Urrea de Jalón', 369, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7110, 'Urriés', 83, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7111, 'Used', 416, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7112, 'Utebo', 8874, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7113, 'Val de San Martín', 79, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7114, 'Valdehorna', 72, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7115, 'Valmadrid', 69, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7116, 'Valpalmas', 219, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7117, 'Valtorres', 108, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7118, 'Velilla de Ebro', 290, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7119, 'Velilla de Jiloca', 145, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7120, 'Vera de Moncayo', 477, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7121, 'Vierlas', 119, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7122, 'Vilueña, La', 108, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7123, 'Villadoz', 88, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7124, 'Villafeliche', 254, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7125, 'Villafranca de Ebro', 679, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7126, 'Villalba de Perejil', 132, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7127, 'Villalengua', 486, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7128, 'Villanueva de Gállego', 2694, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7129, 'Villanueva de Huerva', 640, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7130, 'Villanueva de Jiloca', 125, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7131, 'Villar de los Navarros', 191, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7132, 'Villarreal de Huerva', 187, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7133, 'Villarroya de la Sierra', 774, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7134, 'Villarroya del Campo', 77, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7135, 'Vistabella', 33, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7136, 'Zaida, La', 648, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7137, 'Zaragoza', 607899, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7138, 'Zuera', 5422, 50); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7139, 'Ababuj', 86, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7140, 'Abejuela', 118, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7141, 'Aguatón', 27, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7142, 'Aguaviva', 638, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7143, 'Aguilar del Alfambra', 87, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7144, 'Alacón', 509, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7145, 'Alba', 306, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7146, 'Albalate del Arzobispo', 2458, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7147, 'Albarracín', 1079, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7148, 'Albentosa', 262, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7149, 'Alcaine', 50, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7150, 'Alcalá de la Selva', 437, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7151, 'Alcañiz', 12853, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7152, 'Alcorisa', 3296, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7153, 'Alfambra', 733, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7154, 'Aliaga', 461, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7155, 'Almohaja', 37, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7156, 'Alobras', 99, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7157, 'Alpeñés', 35, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7158, 'Allepuz', 153, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7159, 'Alloza', 894, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7160, 'Allueva', 19, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7161, 'Anadón', 27, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7162, 'Andorra', 8503, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7163, 'Arcos de las Salinas', 194, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7164, 'Arens de Lledó', 258, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7165, 'Argente', 281, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7166, 'Ariño', 952, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7167, 'Azaila', 215, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7168, 'Bádenas', 27, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7169, 'Báguena', 569, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7170, 'Bañón', 205, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7171, 'Barrachina', 184, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7172, 'Bea', 30, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7173, 'Beceite', 684, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7174, 'Belmonte de San José', 155, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7175, 'Bello', 445, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7176, 'Berge', 255, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7177, 'Bezas', 76, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7178, 'Blancas', 234, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7179, 'Blesa', 167, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7180, 'Bordón', 137, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7181, 'Bronchales', 473, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7182, 'Bueña', 118, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7183, 'Burbáguena', 363, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7184, 'Cabra de Mora', 98, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7185, 'Calaceite', 1295, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7186, 'Calamocha', 4185, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7187, 'Calanda', 3564, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7188, 'Calomarde', 106, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7189, 'Camañas', 150, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7447, 'Castelflorite', 160, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7448, 'Castiello de Jaca', 174, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7449, 'Castigaleu', 105, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7450, 'Castillazuelo', 251, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7451, 'Castillonroy', 440, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7452, 'Colungo', 133, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7453, 'Chalamera', 174, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7454, 'Chía', 127, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7455, 'Chimillas', 163, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7456, 'Esplús', 874, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7457, 'Estada', 194, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7458, 'Estadilla', 984, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7459, 'Estopiñán del Castillo', 192, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7460, 'Fago', 45, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7461, 'Fanlo', 96, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7462, 'Fiscal', 250, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7463, 'Fonz', 1196, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7464, 'Foradada del Toscar', 278, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7465, 'Fraga', 11967, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7466, 'Fueva, La', 628, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7467, 'Gistaín', 199, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7468, 'Grado, El', 597, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7469, 'Grañén', 2104, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7470, 'Graus', 3333, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7471, 'Gurrea de Gállego', 1944, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7472, 'Hoz de Jaca', 83, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7473, 'Hoz y Costean', 272, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7474, 'Huerto', 291, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7475, 'Huesca', 45607, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7476, 'Ibieca', 111, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7477, 'Igriés', 148, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7478, 'Ilche', 305, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7479, 'Isábena', 278, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7480, 'Jaca', 11438, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7481, 'Jasa', 118, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7482, 'Labuerda', 167, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7483, 'Laluenga', 279, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7484, 'Lalueza', 1346, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7485, 'Lanaja', 1729, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7486, 'Laperdiguera', 109, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7487, 'Lascellas-Ponzano', 166, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7488, 'Lascuarre', 170, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7489, 'Laspaúles', 302, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7490, 'Laspuña', 289, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7491, 'Loarre', 407, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7492, 'Loporzano', 573, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7493, 'Loscorrales', 132, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7494, 'Lupiñén-Ortilla', 359, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7495, 'Monesma y Cajigar', 109, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7496, 'Monflorite-Lascasas', 198, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7497, 'Montanuy', 331, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7498, 'Monzón', 14757, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7499, 'Naval', 301, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7500, 'Novales', 182, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7501, 'Nueno', 228, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7502, 'Olvena', 56, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7503, 'Ontiñena', 705, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7504, 'Osso de Cinca', 768, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7505, 'Palo', 32, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7506, 'Panticosa', 635, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7507, 'Peñalba', 810, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7508, 'Peñas de Riglos, Las', 303, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7509, 'Peralta de Alcofea', 760, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7510, 'Peralta de Calasanz', 327, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7511, 'Peraltilla', 164, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7512, 'Perarrúa', 156, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7513, 'Pertusa', 153, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7514, 'Piracés', 102, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7515, 'Plan', 310, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7516, 'Poleñino', 264, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7517, 'Pozán de Vero', 266, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7518, 'Puebla de Castro, La', 310, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7519, 'Puente de Montañana', 147, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7520, 'Puente la Reina de Jaca', 286, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7521, 'Puértolas', 198, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7522, 'Pueyo de Araguás, El', 176, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7523, 'Pueyo de Santa Cruz', 387, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7524, 'Quicena', 135, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7525, 'Robres', 706, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7526, 'Sabiñánigo', 8923, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7527, 'Sahún', 325, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7528, 'Salas Altas', 414, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7529, 'Salas Bajas', 203, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7530, 'Salillas', 127, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7531, 'Sallent de Gállego', 987, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7532, 'San Esteban de Litera', 693, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7533, 'San Juan de Plan', 171, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7534, 'San Miguel del Cinca', 964, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7535, 'Sangarrén', 310, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7536, 'Santa Cilia de Jaca', 207, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7537, 'Santa Cruz de la Serós', 171, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7538, 'Santa María de Dulcis', 223, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7539, 'Santaliestra y San Quílez', 103, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7540, 'Sariñena', 4136, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7541, 'Secastilla', 180, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7542, 'Seira', 208, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7543, 'Sena', 628, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7544, 'Senés de Alcubierre', 61, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7545, 'Sesa', 287, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7546, 'Sesué', 103, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7547, 'Siétamo', 355, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7548, 'Sopeira', 134, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7549, 'Sotonera, La', 1201, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7550, 'Tamarite de Litera', 3961, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7551, 'Tardienta', 1140, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7552, 'Tella-Sin', 321, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7553, 'Tierz', 184, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7554, 'Tolva', 235, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7555, 'Torla', 371, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7556, 'Torralba de Aragón', 147, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7557, 'Torre la Ribera', 110, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7558, 'Torrente de Cinca', 1165, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7559, 'Torres de Alcanadre', 147, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7560, 'Torres de Barbués', 387, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7561, 'Tramaced', 122, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7562, 'Valfarta', 110, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7563, 'Valle de Bardají', 46, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7564, 'Valle de Hecho', 1045, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7565, 'Valle de Lierp', 63, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7566, 'Velilla de Cinca', 520, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7567, 'Vencillón', 509, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7568, 'Veracruz', 119, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7569, 'Viacamp y Litera', 32, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7570, 'Vicién', 127, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7571, 'Villanova', 106, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7572, 'Villanúa', 334, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7573, 'Villanueva de Sigena', 498, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7574, 'Yebra de Basa', 164, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7575, 'Yésero', 66, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7576, 'Zaidín', 1766, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7577, 'Abrera', 6629, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7578, 'Aguilar de Segarra', 212, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7579, 'Aiguafreda', 2086, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7580, 'Alella', 7540, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7581, 'Alpens', 257, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7582, 'Ametlla del Vallès, La', 4447, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7583, 'Arenys de Mar', 11906, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7584, 'Arenys de Munt', 5441, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7585, 'Argençola', 210, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7586, 'Argentona', 8627, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7587, 'Artés', 4318, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7588, 'Avià', 1793, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7589, 'Avinyó', 2022, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7590, 'Avinyonet del Penedès', 1221, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7591, 'Badalona', 217983, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7592, 'Badia del Vallès', 17927, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7593, 'Bagà', 2114, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7594, 'Balenyà', 3314, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7595, 'Balsareny', 3379, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7596, 'Barberà del Vallès', 24623, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7597, 'Barcelona', 1614571, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7598, 'Begues', 2799, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7599, 'Bellprat', 95, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7600, 'Berga', 14512, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7601, 'Bigues i Riells', 3676, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7602, 'Borredà', 474, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7603, 'Bruc, El', 877, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7604, 'Brull, El', 218, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7605, 'Cabanyes, Les', 425, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7606, 'Cabrera de Mar', 3277, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7607, 'Cabrera d’Igualada', 341, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7608, 'Cabrils', 3699, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7609, 'Calaf', 3151, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7610, 'Calders', 622, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7611, 'Caldes de Montbui', 12279, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7612, 'Caldes d’Estrac', 1652, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7613, 'Calella', 12069, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7614, 'Calonge de Segarra', 190, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7615, 'Calldetenes', 1594, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7616, 'Callús', 1344, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7617, 'Campins', 217, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7618, 'Canet de Mar', 9300, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7619, 'Canovelles', 13506, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7620, 'Cànoves i Samalús', 1430, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7621, 'Canyelles', 1140, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7622, 'Capellades', 5025, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7623, 'Capolat', 70, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7624, 'Cardedeu', 10467, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7625, 'Cardona', 6192, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7626, 'Carme', 691, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7627, 'Casserres', 1627, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7628, 'Castell de l’Areny', 52, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7629, 'Castellar de n’Hug', 162, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7630, 'Castellar del Riu', 80, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7631, 'Castellar del Vallès', 15442, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7632, 'Castellbell i el Vilar', 2896, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7633, 'Castellbisbal', 5864, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7634, 'Castellcir', 274, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7635, 'Castelldefels', 36647, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7636, 'Castellet i la Gornal', 1193, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7637, 'Castellfollit de Riubregós', 234, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7638, 'Castellfollit del Boix', 341, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7639, 'Castellgalí', 764, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7640, 'Castellnou de Bages', 305, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7641, 'Castellolí', 430, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7642, 'Castellterçol', 1956, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7643, 'Castellví de la Marca', 1444, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7644, 'Castellví de Rosanes', 841, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7645, 'Centelles', 5791, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7646, 'Cercs', 1611, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7647, 'Cerdanyola del Vallès', 50235, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7648, 'Cervelló', 6999, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7649, 'Collbató', 1384, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7650, 'Collsuspina', 238, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7651, 'Copons', 265, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7652, 'Corbera de Llobregat', 7002, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7653, 'Cornellà de Llobregat', 83287, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7654, 'Cubelles', 4456, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7655, 'Dosrius', 2203, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7656, 'Esparreguera', 14188, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7657, 'Esplugues de Llobregat', 48244, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7658, 'Espunyola, L''', 275, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7659, 'Estany, L''', 390, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7660, 'Figaró-Montmany', 701, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7661, 'Fígols', 56, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7662, 'Fogars de Montclús', 284, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7663, 'Fogars de Tordera', 533, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7664, 'Folgueroles', 1231, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7665, 'Fonollosa', 769, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7666, 'Font-rubí', 1188, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7667, 'Franqueses del Vallès, Les', 10768, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7668, 'Gaià', 164, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7669, 'Gallifa', 139, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7670, 'Garriga, La', 10287, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7671, 'Gavà', 37953, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7672, 'Gelida', 4192, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7673, 'Gironella', 5142, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7674, 'Gisclareny', 30, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7675, 'Granada, La', 1288, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7676, 'Granera', 57, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7677, 'Granollers', 53225, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7678, 'Gualba', 635, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7679, 'Guardiola de Berguedà', 1020, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7680, 'Gurb', 1786, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7681, 'Hospitalet de Llobregat', 262501, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7682, 'Hostalets de Pierola, Els', 1110, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7683, 'Igualada', 32460, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7684, 'Jorba', 558, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7685, 'Llacuna, La', 837, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7686, 'Llagosta, La', 11662, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7687, 'Lliçà d’Amunt', 7273, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7688, 'Lliçà de Vall', 4312, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7689, 'Llinars del Vallès', 6207, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7690, 'Lluçà', 273, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7691, 'Malgrat de Mar', 12341, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7692, 'Malla', 255, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7693, 'Manlleu', 16938, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7694, 'Manresa', 65724, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7695, 'Marganell', 221, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7696, 'Martorell', 17493, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7697, 'Martorelles', 5041, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7698, 'Masies de Roda, Les', 635, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7699, 'Masies de Voltregà, Les', 2587, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7700, 'Masnou, El', 20301, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7701, 'Masquefa', 3213, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7702, 'Matadepera', 5846, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7703, 'Mataró', 102137, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7704, 'Mediona', 1245, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7705, 'Moià', 3591, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7706, 'Molins de Rei', 19144, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7707, 'Mollet del Vallès', 43502, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7708, 'Monistrol de Calders', 601, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7709, 'Monistrol de Montserrat', 2502, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7710, 'Montcada i Reixac', 27531, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7711, 'Montclar', 251, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7712, 'Montesquiu', 846, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7713, 'Montgat', 7809, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7714, 'Montmajor', 483, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7715, 'Montmaneu', 235, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7716, 'Montmeló', 7719, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7717, 'Montornès del Vallès', 11573, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7718, 'Montseny', 300, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7719, 'Muntanyola', 226, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7720, 'Mura', 203, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7721, 'Navarcles', 5255, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7722, 'Navàs', 5699, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7723, 'Nou de Berguedà, La', 149, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7724, 'Odena', 2634, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7725, 'Olèrdola', 1880, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7726, 'Olesa de Bonesvalls', 623, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7727, 'Olesa de Montserrat', 15592, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7728, 'Olivella', 767, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7729, 'Olost', 1210, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7730, 'Olvan', 961, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7731, 'Orís', 218, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7732, 'Oristà', 691, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7733, 'Orpí', 150, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7734, 'Orrius', 368, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7735, 'Pacs del Penedès', 540, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7736, 'Palafolls', 3995, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7737, 'Palau de Plegamans', 9539, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7738, 'Pallejà', 6994, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7739, 'Papiol, El', 3478, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7740, 'Parets del Vallès', 12292, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7741, 'Perafita', 334, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7742, 'Piera', 7058, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7743, 'Pineda de Mar', 17814, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7744, 'Pla del Penedès, El', 975, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7745, 'Pobla de Claramunt, La', 1697, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7746, 'Pobla de Lillet, La', 1690, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7747, 'Polinyà', 3904, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7748, 'Pont de Vilomara i Rocafort, El', 2424, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7749, 'Pontons', 312, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7750, 'Prat de Llobregat, El', 64987, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7751, 'Prats de Lluçanès', 2737, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7752, 'Prats de Rei, Els', 558, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7753, 'Premià de Dalt', 7555, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7754, 'Premià de Mar', 25300, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7755, 'Puigdàlber', 306, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7756, 'Puig-reig', 4732, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7757, 'Pujalt', 181, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7758, 'Quar, La', 55, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7759, 'Rajadell', 319, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7760, 'Rellinars', 317, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7761, 'Ripollet', 28622, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7762, 'Roca del Vallès, La', 6502, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7763, 'Roda de Ter', 4952, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7764, 'Rubí', 53100, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7765, 'Rubió', 119, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7766, 'Rupit i Pruit', 364, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7767, 'Sabadell', 188386, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7768, 'Sagàs', 189, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7769, 'Saldes', 327, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7770, 'Sallent', 7501, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7771, 'Sant Adrià de Besòs', 34361, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7772, 'Sant Agustí de Lluçanès', 108, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7773, 'Sant Andreu de la Barca', 17254, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7774, 'Sant Andreu de Llavaneres', 5723, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7775, 'Sant Antoni de Vilamajor', 2585, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7776, 'Sant Bartomeu del Grau', 1207, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7777, 'Sant Boi de Llobregat', 79737, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7778, 'Sant Boi de Lluçanès', 538, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7779, 'Sant Cebrià de Vallalta', 1198, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7780, 'Sant Celoni', 12896, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7781, 'Sant Climent de Llobregat', 2443, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7782, 'Sant Cugat del Vallès', 44956, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7783, 'Sant Cugat Sesgarrigues', 743, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7784, 'Sant Esteve de Palautordera', 1267, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7785, 'Sant Esteve Sesrovires', 3422, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7786, 'Sant Feliu de Codines', 3973, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7787, 'Sant Feliu de Llobregat', 36736, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7788, 'Sant Feliu Sasserra', 644, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7789, 'Sant Fost de Campsentelles', 5612, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7790, 'Sant Fruitós de Bages', 5026, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7791, 'Sant Hipòlit de Voltregà', 2979, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7792, 'Sant Iscle de Vallalta', 648, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7793, 'Sant Jaume de Frontanyà', 26, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7794, 'Sant Joan de Vilatorrada', 8409, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7795, 'Sant Joan Despí', 27013, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7796, 'Sant Julià de Cerdanyola', 222, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7797, 'Sant Julià de Vilatorta', 2004, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7798, 'Sant Just Desvern', 13553, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7799, 'Sant Llorenç d’Hortons', 1261, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7800, 'Sant Llorenç Savall', 2024, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7801, 'Sant Martí d’Albars', 126, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7802, 'Sant Martí de Centelles', 661, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7803, 'Sant Martí de Tous', 943, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7804, 'Sant Martí Sarroca', 2491, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7805, 'Sant Martí Sesgueioles', 365, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7806, 'Sant Mateu de Bages', 530, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7807, 'Sant Pere de Ribes', 17391, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7808, 'Sant Pere de Riudebitlles', 2147, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7809, 'Sant Pere de Torelló', 2061, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7810, 'Sant Pere de Vilamajor', 1657, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7811, 'Sant Pere Sallavinera', 179, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7812, 'Sant Pol de Mar', 2715, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7813, 'Sant Quintí de Mediona', 1627, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7814, 'Sant Quirze de Besora', 2004, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7815, 'Sant Quirze del Vallès', 10262, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7816, 'Sant Quirze Safaja', 259, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7817, 'Sant Sadurní d’Anoia', 9458, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7818, 'Sant Sadurní d’Osormort', 82, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7819, 'Sant Salvador de Guardiola', 1612, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7820, 'Sant Vicenç de Castellet', 7554, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7821, 'Sant Vicenç de Montalt', 2091, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7822, 'Sant Vicenç de Torelló', 1739, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7823, 'Sant Vicenç dels Horts', 22545, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7824, 'Santa Cecília de Voltregà', 190, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7825, 'Santa Coloma de Cervelló', 3242, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7826, 'Santa Coloma de Gramenet', 129751, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7827, 'Santa Eugènia de Berga', 2080, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7828, 'Santa Eulàlia de Riuprimer', 850, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7829, 'Santa Eulàlia de Ronçana', 3829, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7830, 'Santa Fe del Penedès', 222, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7831, 'Santa Margarida de Montbui', 9440, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7832, 'Santa Margarida i els Monjos', 4232, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7833, 'Santa Maria de Besora', 192, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7834, 'Santa Maria de Corcó', 2061, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7835, 'Santa Maria de Martorelles', 675, 8); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7836, 'Santa Maria de Merlès', 189, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7837, 'Santa Maria de Miralles', 112, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7838, 'Santa Maria de Palautordera', 5358, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7839, 'Santa Maria d’Oló', 999, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7840, 'Santa Perpètua de Mogoda', 17603, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7841, 'Santa Susanna', 1365, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7842, 'Santpedor', 4892, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7843, 'Sentmenat', 5042, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7844, 'Seva', 1923, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7845, 'Sitges', 16107, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7846, 'Sobremunt', 97, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7847, 'Sora', 193, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7848, 'Subirats', 2246, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7849, 'Súria', 6395, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7850, 'Tagamanent', 178, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7851, 'Talamanca', 109, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7852, 'Taradell', 4555, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7853, 'Tavèrnoles', 239, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7854, 'Tavertet', 126, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7855, 'Teià', 4426, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7856, 'Terrassa', 162327, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7857, 'Tiana', 5168, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7858, 'Tona', 5701, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7859, 'Tordera', 8951, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7860, 'Torelló', 11903, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7861, 'Torre de Claramunt, La', 1958, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7862, 'Torrelavit', 1226, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7863, 'Torrelles de Foix', 1602, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7864, 'Torrelles de Llobregat', 3043, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7865, 'Ullastrell', 966, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7866, 'Vacarisses', 1577, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7867, 'Vallbona d’Anoia', 1036, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7868, 'Vallcebre', 293, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7869, 'Vallgorguina', 974, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7870, 'Vallirana', 7730, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7871, 'Vallromanes', 926, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7872, 'Veciana', 164, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7873, 'Vic', 30206, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7874, 'Vilada', 531, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7875, 'Viladecans', 52510, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7876, 'Viladecavalls', 4423, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7877, 'Vilafranca del Penedès', 28240, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7878, 'Vilalba Sasserra', 342, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7879, 'Vilanova de Sau', 308, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7880, 'Vilanova del Camí', 9947, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7881, 'Vilanova del Vallès', 1810, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7882, 'Vilanova i la Geltrú', 48955, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7883, 'Vilassar de Dalt', 7224, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7884, 'Vilassar de Mar', 14631, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7885, 'Vilobí del Penedès', 817, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7886, 'Viver i Serrateix', 204, 8); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7887, 'Abella de la Conca', 164, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7888, 'Ager', 590, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7889, 'Agramunt', 4893, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7890, 'Aitona', 2372, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7891, 'Alamús, Els', 670, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7892, 'Alàs i Cerc', 388, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7893, 'Albagés, L’', 543, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7894, 'Albatàrrec', 1013, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7895, 'Albesa', 1481, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7896, 'Albi, L’', 777, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7897, 'Alcanó', 271, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7898, 'Alcarràs', 4633, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7899, 'Alcoletge', 1610, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7900, 'Alfarràs', 3062, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7901, 'Alfés', 353, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7902, 'Algerri', 538, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7903, 'Alguaire', 2898, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7904, 'Alins', 303, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7905, 'Almacelles', 5496, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7906, 'Almatret', 521, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7907, 'Almenar', 3607, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7908, 'Alòs de Balaguer', 173, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7909, 'Alpicat', 3101, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7910, 'Alt Aneu', 387, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7911, 'Anglesola', 1230, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7912, 'Arbeca', 2319, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7913, 'Arres', 80, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7914, 'Arsèguel', 111, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7915, 'Artesa de Lleida', 1232, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7916, 'Artesa de Segre', 3125, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7917, 'Aspa', 258, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7918, 'Avellanes i Santa Linya, Les', 465, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7919, 'Baix Pallars', 373, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7920, 'Balaguer', 13373, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7921, 'Barbens', 794, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7922, 'Baronia de Rialb, La', 260, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7923, 'Barruera', 749, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7924, 'Bassella', 361, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7925, 'Bausen', 68, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7926, 'Belianes', 564, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7927, 'Bellaguarda', 375, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7928, 'Bellcaire d’Urgell', 1417, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7929, 'Bell-lloc d’Urgell', 2181, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7930, 'Bellmunt d’Urgell', 237, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7931, 'Bellpuig', 4010, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7932, 'Bellver de Cerdanya', 1610, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7933, 'Bellvís', 2210, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7934, 'Benavent de Segrià', 756, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7935, 'Biosca', 269, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7936, 'Bòrdes, Es', 217, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7937, 'Borges Blanques, Les', 5193, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7938, 'Bossòst', 823, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7939, 'Bovera', 429, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7940, 'Cabanabona', 103, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7941, 'Cabó', 137, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7942, 'Camarasa', 920, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7943, 'Canejan', 110, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7944, 'Castell de Mur', 155, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7945, 'Castellar de la Ribera', 149, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7946, 'Castelldans', 973, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7947, 'Castellnou de Seana', 714, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7948, 'Castelló de Farfanya', 608, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7949, 'Castellserà', 1158, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7950, 'Cava', 51, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7951, 'Cervera', 7418, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7952, 'Cervià de les Garrigues', 873, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7953, 'Ciutadilla', 222, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7954, 'Clariana de Cardener', 148, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7955, 'Cogul, El', 232, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7956, 'Coll de Nargó', 626, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7957, 'Coma i la Pedra, La', 246, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7958, 'Corbins', 1031, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7959, 'Cubells', 368, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7960, 'Espluga Calba, L’', 435, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7961, 'Espot', 247, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7962, 'Estamariu', 134, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7963, 'Estaràs', 174, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7964, 'Esterri d’Aneu', 517, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7965, 'Esterri de Cardós', 75, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7966, 'Farrera', 92, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7967, 'Fígols i Alinyà', 338, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7968, 'Floresta, La', 195, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7969, 'Fondarella', 659, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7970, 'Foradada', 183, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7971, 'Fuliola, La', 1307, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7972, 'Fulleda', 131, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7973, 'Gavet de la Conca', 353, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7974, 'Gimenells i el Pla de la Font', 1191, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7975, 'Golmés', 1328, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7976, 'Gósol', 200, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7977, 'Granadella, La', 864, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7978, 'Granja d’Escarp, La', 1145, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7979, 'Granyanella', 140, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7980, 'Granyena de les Garrigues', 194, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7190, 'Camarena de la Sierra', 156, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7191, 'Camarillas', 138, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7192, 'Caminreal', 863, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7193, 'Cantavieja', 747, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7194, 'Cañada de Benatanduz', 71, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7195, 'Cañada de Verich, La', 110, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7196, 'Cañada Vellida', 65, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7197, 'Cañizar del Olivar', 136, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7198, 'Cascante del Río', 136, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7199, 'Castejón de Tornos', 115, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7200, 'Castel de Cabra', 205, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7201, 'Castelnou', 114, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7202, 'Castelserás', 904, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7203, 'Castellar, El', 95, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7204, 'Castellote', 846, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7205, 'Cedrillas', 557, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7206, 'Celadas', 490, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7207, 'Cella', 3101, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7208, 'Cerollera, La', 98, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7209, 'Codoñera, La', 370, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7210, 'Corbalán', 76, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7211, 'Cortes de Aragón', 149, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7212, 'Cosa', 115, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7213, 'Cretas', 685, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7214, 'Crivillén', 149, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7215, 'Cuba, La', 73, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7216, 'Cubla', 65, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7217, 'Cucalón', 90, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7218, 'Cuervo, El', 153, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7219, 'Cuevas de Almudén', 108, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7220, 'Cuevas Labradas', 190, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7221, 'Ejulve', 247, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7222, 'Escorihuela', 257, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7223, 'Escucha', 1160, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7224, 'Estercuel', 404, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7225, 'Ferreruela de Huerva', 95, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7227, 'Formiche Alto', 212, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7228, 'Fórnoles', 121, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7229, 'Fortanete', 219, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7230, 'Foz-Calanda', 257, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7231, 'Fresneda, La', 480, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7232, 'Frías de Albarracín', 193, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7233, 'Fuenferrada', 51, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7234, 'Fuentes Calientes', 142, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7235, 'Fuentes Claras', 733, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7236, 'Fuentes de Rubielos', 77, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7237, 'Fuentespalda', 414, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7238, 'Galve', 159, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7239, 'Gargallo', 137, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7240, 'Gea de Albarracín', 506, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7241, 'Ginebrosa, La', 282, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7242, 'Griegos', 163, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7243, 'Guadalaviar', 293, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7244, 'Gúdar', 85, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7245, 'Híjar', 2027, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7246, 'Hinojosa de Jarque', 203, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7247, 'Hoz de la Vieja, La', 147, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7248, 'Huesa del Común', 150, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7249, 'Iglesuela del Cid, La', 509, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7250, 'Jabaloyas', 102, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7251, 'Jarque de la Val', 113, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7252, 'Jatiel', 80, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7253, 'Jorcas', 66, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7254, 'Josa', 37, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7255, 'Lagueruela', 78, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7256, 'Lanzuela', 37, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7257, 'Libros', 196, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7258, 'Lidón', 91, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7259, 'Linares de Mora', 326, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7260, 'Loscos', 247, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7261, 'Lledó', 216, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7262, 'Maicas', 25, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7263, 'Manzanera', 498, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7264, 'Martín del Río', 542, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7265, 'Mas de las Matas', 1498, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7266, 'Mata de los Olmos, La', 279, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7267, 'Mazaleón', 636, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7268, 'Mezquita de Jarque', 161, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7269, 'Mirambel', 154, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7270, 'Miravete de la Sierra', 52, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7271, 'Molinos', 391, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7272, 'Monforte de Moyuela', 90, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7273, 'Monreal del Campo', 2344, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7274, 'Monroyo', 402, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7275, 'Montalbán', 1690, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7276, 'Monteagudo del Castillo', 76, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7277, 'Monterde de Albarracín', 82, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7278, 'Mora de Rubielos', 1349, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7279, 'Moscardón', 62, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7280, 'Mosqueruela', 705, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7281, 'Muniesa', 798, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7282, 'Noguera', 175, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7283, 'Nogueras', 26, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7284, 'Nogueruelas', 236, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7285, 'Obón', 61, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7286, 'Odón', 288, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7287, 'Ojos Negros', 649, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7288, 'Olba', 227, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7289, 'Oliete', 540, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7290, 'Olmos, Los', 164, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7291, 'Orihuela del Tremedal', 622, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7292, 'Orrios', 216, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7293, 'Palomar de Arroyos', 279, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7294, 'Pancrudo', 227, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7295, 'Parras de Castellote, Las', 111, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7296, 'Peñarroya de Tastavins', 570, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7297, 'Peracense', 119, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7298, 'Peralejos', 105, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7299, 'Perales del Alfambra', 313, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7300, 'Pitarque', 117, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7301, 'Plou', 57, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7302, 'Pobo, El', 164, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7303, 'Portellada, La', 352, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7304, 'Pozondón', 95, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7305, 'Pozuel del Campo', 136, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7306, 'Puebla de Híjar, La', 1186, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7307, 'Puebla de Valverde, La', 478, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7308, 'Puertomingalvo', 133, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7309, 'Ráfales', 244, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7310, 'Rillo', 155, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7311, 'Riodeva', 262, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7312, 'Ródenas', 96, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7313, 'Royuela', 239, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7314, 'Rubiales', 67, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7315, 'Rubielos de la Cérida', 65, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7316, 'Rubielos de Mora', 649, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7317, 'Salcedillo', 9, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7318, 'Saldón', 51, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7319, 'Samper de Calanda', 1120, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7320, 'San Agustín', 164, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7321, 'San Martín del Río', 326, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7322, 'Santa Cruz de Nogueras', 32, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7323, 'Santa Eulalia', 1325, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7324, 'Sarrión', 1046, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7325, 'Segura de los Baños', 60, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7326, 'Seno', 53, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7327, 'Singra', 101, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7328, 'Terriente', 196, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7329, 'Teruel', 30304, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7330, 'Toril y Masegoso', 43, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7331, 'Tormón', 43, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7332, 'Tornos', 287, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7333, 'Torralba de los Sisones', 249, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7334, 'Torre de Arcas', 114, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7335, 'Torre de las Arcas', 43, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7336, 'Torre del Compte', 190, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7337, 'Torre los Negros', 101, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7338, 'Torrecilla de Alcañiz', 464, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7339, 'Torrecilla del Rebollar', 184, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7340, 'Torrelacárcel', 334, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7341, 'Torremocha de Jiloca', 195, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7342, 'Torres de Albarracín', 172, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7343, 'Torrevelilla', 225, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7344, 'Torrijas', 103, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7345, 'Torrijo del Campo', 627, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7346, 'Tramacastiel', 134, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7347, 'Tramacastilla', 145, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7348, 'Tronchón', 105, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7349, 'Urrea de Gaén', 668, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7350, 'Utrillas', 3548, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7351, 'Valacloche', 26, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7352, 'Valbona', 208, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7353, 'Valdealgorfa', 808, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7354, 'Valdecuenca', 35, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7355, 'Valdelinares', 131, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7356, 'Valdeltormo', 410, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7357, 'Valderrobres', 1939, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7358, 'Valjunquera', 480, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7359, 'Vallecillo, El', 37, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7360, 'Veguillas de la Sierra', 30, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7361, 'Villafranca del Campo', 426, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7362, 'Villahermosa del Campo', 80, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7363, 'Villanueva del Rebollar de la Sierra', 49, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7364, 'Villar del Cobo', 229, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7365, 'Villar del Salz', 134, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7366, 'Villarluengo', 231, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7367, 'Villarquemado', 1039, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7368, 'Villarroya de los Pinares', 212, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7369, 'Villastar', 357, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7370, 'Villel', 363, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7371, 'Vinaceite', 319, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7372, 'Visiedo', 252, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7373, 'Vivel del Río Martín', 111, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7374, 'Zoma, La', 37, 44); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7375, 'Abiego', 298, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7376, 'Abizanda', 128, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7377, 'Adahuesca', 172, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7378, 'Agüero', 169, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7379, 'Aínsa-Sobrarbe', 1526, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7380, 'Aisa', 370, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7381, 'Albalate de Cinca', 1143, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7382, 'Albalatillo', 271, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7383, 'Albelda', 1016, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7384, 'Albero Alto', 100, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7385, 'Albero Bajo', 109, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7386, 'Alberuela de Tubo', 431, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7387, 'Alcalá de Gurrea', 378, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7388, 'Alcalá del Obispo', 355, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7389, 'Alcampell', 1011, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7390, 'Alcolea de Cinca', 1228, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7391, 'Alcubierre', 493, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7392, 'Alerre', 161, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7393, 'Alfántega', 136, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7394, 'Almudévar', 2462, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7395, 'Almunia de San Juan', 745, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7396, 'Almuniente', 659, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7397, 'Alquézar', 302, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7398, 'Altorricón', 1468, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7399, 'Angüés', 458, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7400, 'Ansó', 502, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7401, 'Antillón', 172, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7402, 'Aragüés del Puerto', 128, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7403, 'Arén', 451, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7404, 'Argavieso', 120, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7405, 'Arguis', 63, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7406, 'Ayerbe', 1158, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7407, 'Azanuy-Alins', 215, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7408, 'Azara', 223, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7409, 'Azlor', 185, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7410, 'Baélls', 164, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7411, 'Bailo', 339, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7412, 'Baldellou', 168, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7413, 'Ballobar', 1118, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7414, 'Banastás', 166, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7415, 'Barbastro', 15380, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7416, 'Barbués', 121, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7417, 'Barbuñales', 116, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7418, 'Bárcabo', 127, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7419, 'Belver de Cinca', 1435, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7420, 'Benabarre', 1234, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7421, 'Benasque', 1252, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7422, 'Berbegal', 505, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7423, 'Bielsa', 464, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7424, 'Bierge', 221, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7425, 'Biescas', 1231, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7426, 'Binaced', 1631, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7427, 'Binéfar', 8035, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7428, 'Bisaurri', 234, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7429, 'Biscarrués', 263, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7430, 'Blecua y Torres', 195, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7431, 'Boltaña', 852, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7432, 'Bonansa', 76, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7433, 'Borau', 79, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7434, 'Broto', 510, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7435, 'Caldearenas', 259, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7436, 'Campo', 388, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7437, 'Camporrélls', 255, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7438, 'Canal de Berdún', 462, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7439, 'Candasnos', 597, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7440, 'Canfranc', 499, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7441, 'Capdesaso', 201, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7442, 'Capella', 411, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7443, 'Casbas de Huesca', 342, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7444, 'Castejón de Monegros', 760, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7445, 'Castejón de Sos', 486, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7446, 'Castejón del Puente', 457, 22); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6146, 'Navas de Riofrío', 247, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6147, 'Navas de San Antonio', 315, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6148, 'Nieva', 404, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6149, 'Olombrada', 871, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6150, 'Orejana', 118, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6151, 'Ortigosa de Pestaño', 88, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6152, 'Ortigosa del Monte', 318, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6153, 'Otero de Herreros', 830, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6154, 'Pajarejos', 46, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6155, 'Palazuelos de Eresma', 2193, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6156, 'Pedraza', 461, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6157, 'Pelayos del Arroyo', 48, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6158, 'Perosillo', 37, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6159, 'Pinarejos', 220, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6160, 'Pinarnegrillo', 206, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6161, 'Pradales', 63, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6162, 'Prádena', 575, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6163, 'Puebla de Pedraza', 98, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6164, 'Rapariegos', 311, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6165, 'Rebollo', 144, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6166, 'Remondo', 391, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6167, 'Riaguas de San Bartolomé', 92, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6168, 'Riaza', 1695, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6169, 'Ribota', 38, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6170, 'Riofrío de Riaza', 60, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6171, 'Roda de Eresma', 107, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6172, 'Sacramenia', 603, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6173, 'Samboal', 659, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6174, 'San Cristóbal de Cuéllar', 266, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6175, 'San Cristóbal de la Vega', 185, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6176, 'San Ildefonso', 5127, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6177, 'San Martín y Mudrián', 320, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6178, 'San Miguel de Bernuy', 208, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6179, 'San Pedro de Gaíllos', 339, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6180, 'Sanchonuño', 776, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6181, 'Sangarcía', 537, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6182, 'Santa María la Real de Nieva', 1602, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6183, 'Santa Marta del Cerro', 58, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6184, 'Santiuste de Pedraza', 126, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6185, 'Santiuste de San Juan Bautista', 841, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6186, 'Santo Domingo de Pirón', 58, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6187, 'Santo Tomé del Puerto', 358, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6188, 'Sauquillo de Cabezas', 258, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6189, 'Sebúlcor', 290, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6190, 'Segovia', 55551, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6191, 'Sepúlveda', 1388, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6192, 'Sequera de Fresno', 61, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6193, 'Sotillo', 59, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6194, 'Sotosalbos', 104, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6195, 'Tabanera la Luenga', 85, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6196, 'Tolocirio', 69, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6197, 'Torre Val de San Pedro', 225, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6198, 'Torreadrada', 153, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6199, 'Torrecaballeros', 375, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6200, 'Torrecilla del Pinar', 355, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6201, 'Torreiglesias', 410, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6202, 'Trescasas', 177, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6203, 'Turégano', 1151, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6204, 'Urueñas', 135, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6205, 'Valdeprados', 57, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6206, 'Valdevacas de Montejo', 40, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6207, 'Valdevacas y Guijar', 164, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6208, 'Valseca', 332, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6209, 'Valtiendas', 212, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6210, 'Valverde del Majano', 488, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6211, 'Valle de Tabladillo', 188, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6212, 'Vallelado', 877, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6213, 'Valleruela de Pedraza', 73, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6214, 'Valleruela de Sepúlveda', 78, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6215, 'Veganzones', 327, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6216, 'Vegas de Matute', 267, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6217, 'Ventosilla y Tejadilla', 23, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6218, 'Villacastín', 1571, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6219, 'Villaverde de Iscar', 774, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6220, 'Villaverde de Montejo', 89, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6221, 'Villeguillo', 147, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6222, 'Yanguas de Eresma', 211, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6223, 'Zarzuela del Monte', 546, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6224, 'Zarzuela del Pinar', 627, 40); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6225, 'Alfoz de Lloredo', 2553, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6226, 'Ampuero', 3337, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6227, 'Anievas', 407, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6228, 'Arenas de Iguña', 2165, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6229, 'Argoños', 778, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6230, 'Arnuero', 1811, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6231, 'Arredondo', 668, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6232, 'Astillero, El', 13010, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6233, 'Bárcena de Cicero', 2213, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6234, 'Bárcena de Pie de Concha', 955, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6235, 'Bareyo', 1704, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6236, 'Cabezón de la Sal', 7076, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6237, 'Cabezón de Liébana', 782, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6238, 'Cabuérniga', 1152, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6239, 'Camaleño', 1116, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6240, 'Camargo', 10525, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6241, 'Campoo de Yuso', 761, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6242, 'Campoo de Enmedio', 3858, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6243, 'Cartes', 2954, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6244, 'Castañeda', 1566, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6245, 'Castro-Urdiales', 15167, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6246, 'Cieza', 722, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6247, 'Cillorigo de Liébana', 1166, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6248, 'Colindres', 6099, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6249, 'Comillas', 2330, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6250, 'Corrales de Buelna, Los', 10289, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6251, 'Corvera de Toranzo', 2192, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6252, 'Entrambasaguas', 2483, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6253, 'Escalante', 747, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6254, 'Guriezo', 1705, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6255, 'Hazas de Cesto', 1274, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6256, 'Hermandad de Campoo de Suso', 1863, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6257, 'Herrerías', 754, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6258, 'Lamasón', 417, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6259, 'Laredo', 13155, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6260, 'Liendo', 811, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6261, 'Liérganes', 2263, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6262, 'Limpias', 1271, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6263, 'Luena', 1022, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6264, 'Marina de Cudeyo', 4503, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6265, 'Mazcuerras', 1901, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6266, 'Medio Cudeyo', 5904, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6267, 'Meruelo', 955, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6268, 'Miengo', 3437, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6269, 'Miera', 580, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6270, 'Molledo', 2024, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6271, 'Noja', 1876, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6272, 'Penagos', 1696, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6273, 'Peñarrubia', 298, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6274, 'Pesaguero', 421, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6275, 'Pesquera', 106, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6276, 'Piélagos', 10741, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6277, 'Polaciones', 302, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6278, 'Polanco', 3660, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6279, 'Potes', 1622, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6280, 'Puente Viesgo', 2308, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6281, 'Ramales de la Victoria', 2284, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6282, 'Rasines', 1016, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6283, 'Reinosa', 11786, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6284, 'Reocín', 6837, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6285, 'Ribamontán al Mar', 3355, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6286, 'Ribamontán al Monte', 2045, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6287, 'Rionansa', 1561, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6288, 'Riotuerto', 1535, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6289, 'Rozas de Valdearrollo, Las', 298, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6290, 'Ruente', 949, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6291, 'Ruesga', 1281, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6292, 'Ruiloba', 708, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6293, 'San Felices de Buelna', 2230, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6294, 'San Miguel de Aguayo', 159, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6295, 'San Pedro del Romeral', 693, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6296, 'San Roque de Riomiera', 572, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6297, 'San Vicente de la Barquera', 4417, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6298, 'Santa Cruz de Bezana', 7046, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6299, 'Santa María de Cayón', 6196, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6300, 'Santander', 184165, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6301, 'Santillana del Mar', 3854, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6302, 'Santiurde de Reinosa', 368, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6303, 'Santiurde de Toranzo', 1695, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6304, 'Santoña', 11843, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6305, 'Saro', 547, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6306, 'Selaya', 1987, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6307, 'Soba', 1737, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6308, 'Solórzano', 1014, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6309, 'Suances', 6117, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6310, 'Tojos, Los', 400, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6311, 'Torrelavega', 57493, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6312, 'Tresviso', 62, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6313, 'Tudanca', 275, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6314, 'Udías', 847, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6315, 'Val de San Vicente', 2536, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6316, 'Valdáliga', 2652, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6317, 'Valdeolea', 1626, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6318, 'Valdeprado del Río', 319, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6319, 'Valderredible', 1165, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6320, 'Vega de Liébana', 1063, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6321, 'Vega de Pas', 1011, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6322, 'Villacarriedo', 1804, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6324, 'Villafufre', 1107, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6325, 'Villaverde de Trucíos', 379, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6326, 'Voto', 2310, 39); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6327, 'Abaltzisketa', 273, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6328, 'Aduna', 303, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6329, 'Aia', 1668, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6330, 'Aizarnazabal', 537, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6331, 'Albiztur', 305, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6332, 'Alegia', 1659, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6333, 'Alkiza', 267, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6334, 'Altzaga', 92, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6335, 'Altzo', 318, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6336, 'Amezketa', 1020, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6337, 'Andoain', 14873, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6338, 'Anoeta', 1801, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6339, 'Antzuola', 1974, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6340, 'Arama', 152, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6341, 'Aretxabaleta', 6106, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6342, 'Asteasu', 1183, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6343, 'Astigarraga', 3158, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6344, 'Ataun', 1635, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6345, 'Azkoitia', 10397, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6346, 'Azpeitia', 13879, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6347, 'Baliarrain', 97, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6348, 'Beasain', 12412, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6349, 'Beizama', 172, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6350, 'Belauntza', 297, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6351, 'Berastegi', 956, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6352, 'Bergara', 15541, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6353, 'Berrobi', 584, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6354, 'Bidegoyan', 432, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6355, 'Deba', 5047, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6356, 'Eibar', 31119, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6357, 'Elduain', 235, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6358, 'Elgeta', 984, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6359, 'Elgoibar', 11204, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6360, 'Errezil', 653, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6361, 'Eskoriatza', 3932, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6362, 'Ezkio-Itsaso', 524, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6363, 'Gabiria', 433, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6364, 'Gainza', 134, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6365, 'Gaztelu', 143, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6366, 'Getaria', 2406, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6367, 'Hernani', 18709, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6368, 'Hernialde', 292, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6369, 'Hondarribia', 13965, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6370, 'Ibarra', 4408, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6371, 'Idiazabal', 2047, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6372, 'Ikaztegieta', 389, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6373, 'Irun', 55656, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6374, 'Irura', 700, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6375, 'Itsasondo', 624, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6376, 'Larraul', 135, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6377, 'Lasarte-Oria', 18186, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6378, 'Lazkao', 4978, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6379, 'Leaburu-Gaztelu', 401, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6380, 'Legazpi', 9518, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6381, 'Legorreta', 1447, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6382, 'Leintz-Gatzaga', 242, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6383, 'Lezo', 5557, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6384, 'Lizartza', 663, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6385, 'Mendaro', 1357, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6386, 'Mondragón', 24784, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6387, 'Mutiloa', 179, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6388, 'Mutriku', 4740, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6389, 'Oiartzun', 8825, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6390, 'Olaberria', 1051, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6391, 'Oñati', 10565, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6392, 'Ordizia', 9325, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6393, 'Orendain', 165, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6394, 'Orexa', 80, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6395, 'Orio', 4281, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6396, 'Ormaiztegi', 1212, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6397, 'Pasaia', 18176, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6398, 'Placencia de las Armas', 4556, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6399, 'Rentería', 41033, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6400, 'San Sebastián', 178470, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6401, 'Segura', 1290, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6402, 'Tolosa', 18091, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6403, 'Urnieta', 4982, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6404, 'Urretxu', 6166, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6405, 'Usurbil', 5311, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6406, 'Villabona', 5369, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6407, 'Zaldibia', 1571, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6408, 'Zarautz', 19061, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6409, 'Zegama', 1400, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6410, 'Zerain', 229, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6411, 'Zestoa', 3315, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6412, 'Zizurkil', 2692, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6413, 'Zumaia', 8278, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6414, 'Zumárraga', 10737, 20); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6415, 'Abadiño', 7049, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6416, 'Abanto y Ciérvana', 9779, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6417, 'Ajangiz', 377, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6418, 'Alonsotegi', 3044, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6419, 'Amorebieta-Etxano', 16113, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6420, 'Amoroto', 380, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6421, 'Arakaldo', 106, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6422, 'Arantzazu', 279, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6423, 'Arcentales', 645, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6424, 'Areatza', 1119, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6425, 'Arrankudiaga', 733, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6426, 'Arratzu', 395, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6427, 'Arrieta', 429, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6428, 'Arrigorriaga', 10442, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6429, 'Artea', 613, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6430, 'Atxondo', 1536, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6431, 'Aulesti', 686, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6432, 'Bakio', 1335, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6433, 'Balmaseda', 7272, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6434, 'Barakaldo', 102561, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6435, 'Barrika', 936, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6436, 'Basauri', 50024, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6437, 'Bedia', 1028, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6438, 'Berango', 4459, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6439, 'Bermeo', 17717, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6440, 'Berriatua', 1017, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6441, 'Berriz', 4160, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6442, 'Bilbao', 370997, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6443, 'Busturia', 1738, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6444, 'Carranza', 3150, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6445, 'Derio', 4768, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6446, 'Dima', 1067, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6447, 'Durango', 23354, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6448, 'Ea', 831, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6449, 'Elantxobe', 518, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6450, 'Elorrio', 7416, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6451, 'Erandio', 24392, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6452, 'Ereño', 281, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6453, 'Ermua', 17824, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6454, 'Errigoiti', 437, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6455, 'Etxebarri Doneztebeko Elizatea ', 6505, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6456, 'Etxebarria', 797, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6457, 'Forua', 927, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6458, 'Fruiz', 325, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6459, 'Galdakao', 29691, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6460, 'Galdames', 818, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6461, 'Gamiz-Fika', 960, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6462, 'Garay', 255, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6463, 'Gatika', 975, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6464, 'Gautegiz Arteaga', 766, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6465, 'Gernika', 15800, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6466, 'Getxo', 83936, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6467, 'Gordexola', 1495, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6468, 'Gorliz', 3414, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6469, 'Güeñes', 5925, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6470, 'Guizaburuaga', 136, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6471, 'Ibarrangelu', 545, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6472, 'Igorre', 3950, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6473, 'Ispaster', 622, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6474, 'Iurreta', 4731, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6475, 'Izurtza', 279, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6476, 'Kortezubi', 385, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6477, 'Lanestosa', 295, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6478, 'Larrabetzu', 1506, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6479, 'Laukiz', 969, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6480, 'Leioa', 25758, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6481, 'Lekeitio', 7517, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6482, 'Lemoa', 2587, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6483, 'Lemoiz', 795, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6484, 'Lezama', 2040, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6485, 'Loiu', 1762, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6486, 'Mallabia', 1111, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6487, 'Mañaria', 504, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6488, 'Markina', 4782, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6489, 'Maruri', 569, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6490, 'Mendata', 341, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6491, 'Mendexa', 344, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6492, 'Meñaka', 436, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6493, 'Morga', 336, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6494, 'Mundaka', 1774, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6495, 'Mungia', 12816, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6496, 'Munitibar', 424, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6497, 'Murueta', 195, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6498, 'Muskiz', 6500, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6499, 'Muxika', 1416, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6500, 'Nabarniz', 259, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6501, 'Ondarroa', 10517, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6502, 'Orduña', 4007, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6503, 'Orozko', 1873, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6504, 'Ortuella', 8732, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6505, 'Otxandio', 1061, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6506, 'Plentzia', 3191, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6507, 'Portugalete', 56109, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6508, 'Santurtzi', 50281, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6509, 'Sestao', 35464, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6510, 'Sondika', 3554, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6511, 'Sopelana', 9085, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6512, 'Sopuerta', 2260, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6513, 'Sukarrieta', 323, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6514, 'Trucios', 538, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6515, 'Ubidea', 148, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6516, 'Ugao-Miraballes', 4169, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6517, 'Urduliz', 2728, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6518, 'Valle de Trápaga-Trapagaran', 13143, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6519, 'Zaldibar', 3018, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6520, 'Zalla', 7516, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6521, 'Zamudio', 3111, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6522, 'Zaratamo', 1583, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6523, 'Zeanuri', 1126, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6524, 'Zeberio', 909, 48); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6525, 'Alegría', 1139, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6526, 'Amurrio', 9890, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6527, 'Añana', 195, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6528, 'Aramaio', 1316, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6529, 'Armiñón', 133, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6530, 'Arraia-Maeztu', 706, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6531, 'Arrazua-Ubarrundia', 702, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6532, 'Artziniega', 1323, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6533, 'Asparrena', 1555, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6534, 'Ayala/Aiara', 2060, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6535, 'Baños de Ebro/Mañueta', 330, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6536, 'Barrundia', 563, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6537, 'Berantevilla', 414, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6538, 'Bernedo', 539, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6539, 'Campezo', 1145, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6540, 'Elburgo', 204, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6541, 'Elciego', 951, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6542, 'Elvillar', 349, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6543, 'Harana', 374, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6544, 'Iruña Oka', 1612, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6545, 'Iruraiz-Gauna', 426, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6546, 'Kripan', 199, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6547, 'Kuartango', 360, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6548, 'Labastida', 1049, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6549, 'Lagrán', 191, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6550, 'Laguardia', 1461, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6551, 'Lanciego', 649, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6552, 'Lantarón', 838, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6553, 'Lapuebla de Labarca', 842, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6554, 'Legutiano', 1286, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6555, 'Leza', 203, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6556, 'Llodio', 20179, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6557, 'Moreda de Álava', 286, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6558, 'Navaridas', 217, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6559, 'Okondo', 778, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6560, 'Oyón/Oion', 2189, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6561, 'Peñacerrada', 241, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6562, 'Ribera Alta', 526, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6563, 'Ribera Baja', 433, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6564, 'Salvatierra', 3817, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6565, 'Samaniego', 293, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6566, 'San Millán', 712, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6567, 'Urkabustaiz', 861, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6568, 'Valdegovía', 887, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6569, 'Villabuena de Álava', 364, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6570, 'Vitoria', 215049, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6571, 'Yécora', 254, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6572, 'Zalduondo', 131, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6573, 'Zambrana', 341, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6574, 'Zigoitia', 983, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6575, 'Zuia', 1399, 1); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6576, 'Abáigar', 95, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6577, 'Abárzuza', 508, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6578, 'Abaurrea Alta', 192, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6579, 'Abaurrea Baja', 48, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6580, 'Aberin', 365, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6581, 'Ablitas', 2231, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6582, 'Adiós', 125, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6583, 'Aguilar de Codés', 112, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6584, 'Aibar', 933, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6585, 'Altsasu/Alsasua', 7004, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6586, 'Allín', 819, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6587, 'Allo', 1049, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6588, 'Améscoa Baja', 844, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6589, 'Ancín', 276, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6590, 'Andosilla', 2511, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6591, 'Ansoáin', 5396, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6592, 'Anue', 449, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6593, 'Añorbe', 401, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6594, 'Aoiz', 1848, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6595, 'Araitz', 613, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6596, 'Arakil', 856, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6597, 'Aranarache', 93, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6598, 'Aranguren', 2786, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6599, 'Arano', 154, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6600, 'Arantza', 714, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6601, 'Aras', 227, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6602, 'Arbizu', 919, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6603, 'Arce', 317, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6604, 'Arcos, Los', 1346, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6605, 'Arellano', 205, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6606, 'Areso', 310, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6607, 'Arguedas', 2221, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6608, 'Aria', 69, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6609, 'Aribe', 70, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6610, 'Armañanzas', 100, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6611, 'Arróniz', 1212, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6612, 'Arruazu', 110, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6613, 'Artajona', 1676, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6614, 'Artazu', 86, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6615, 'Atez', 213, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6616, 'Auritz/Burguete', 320, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6617, 'Ayegui', 849, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6618, 'Azagra', 3496, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6619, 'Azuelo', 63, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6620, 'Bakaiku', 359, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6621, 'Barañain', 18936, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6622, 'Barásoain', 465, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6623, 'Barbarin', 106, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6624, 'Bargota', 396, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6625, 'Barillas', 211, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6626, 'Basaburua', 682, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6627, 'Baztan', 7806, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6628, 'Beintza-Labaien', 303, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6629, 'Beire', 349, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6630, 'Belascoáin', 96, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6631, 'Bera/Vera de Bidasoa', 3480, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6632, 'Berbinzana', 714, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6633, 'Beriáin', 2317, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6634, 'Berrioplano', 1057, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6635, 'Berriozar', 5500, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6636, 'Bertizarana', 651, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6637, 'Betelu', 334, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6638, 'Biurrun-Olcoz', 173, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6639, 'Buñuel', 2390, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6640, 'Burgui', 253, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6641, 'Burlada', 15366, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6642, 'Busto, El', 105, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6643, 'Cabanillas', 1464, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6644, 'Cabredo', 130, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6645, 'Cadreita', 1873, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6646, 'Caparroso', 2331, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6647, 'Cárcar', 1257, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6648, 'Carcastillo', 2670, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6649, 'Cascante', 3555, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6650, 'Cáseda', 1078, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6651, 'Castejón', 3170, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6652, 'Castillonuevo', 27, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6653, 'Cintruénigo', 5430, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6654, 'Cirauqui', 454, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6655, 'Ciriza', 52, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6656, 'Cizur', 1105, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6657, 'Corella', 6329, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6658, 'Cortes', 3196, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6659, 'Desojo', 151, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6660, 'Dicastillo', 708, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6661, 'Donamaria', 394, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6662, 'Doneztebe/Santesteban', 1291, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6663, 'Echarri', 58, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6664, 'Egüés', 8467, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6665, 'Elgorriaga', 198, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6666, 'Enériz', 185, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6667, 'Eratsun', 189, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6668, 'Ergoiena', 491, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6669, 'Erro', 787, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6670, 'Eslava', 196, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6671, 'Esparza de Salazar', 122, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6672, 'Espronceda', 178, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6673, 'Estella', 12535, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6674, 'Esteribar', 1475, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6675, 'Etayo', 95, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6676, 'Etxalar', 837, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6677, 'Etxarri-Aranatz', 2372, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6678, 'Etxauri', 383, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6679, 'Eulate', 403, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6680, 'Ezcabarte', 1085, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6681, 'Ezcároz', 364, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6682, 'Ezkurra', 253, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6683, 'Ezprogui', 67, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6684, 'Falces', 2661, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6685, 'Fitero', 2083, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6686, 'Fontellas', 651, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6687, 'Funes', 2112, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6688, 'Fustiñana', 2295, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
6689, 'Galar', 1032, 31); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7981, 'Granyena de Segarra', 179, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7982, 'Guimerà', 397, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7983, 'Guingueta d’Aneu, La', 281, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7984, 'Guissona', 2915, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7985, 'Guixers', 159, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7986, 'Isona i Conca Dellà', 1337, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7987, 'Ivars de Noguera', 323, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7988, 'Ivars d’Urgell', 1731, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7989, 'Ivorra', 140, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7990, 'Josa i Tuixén', 148, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7991, 'Juncosa', 584, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7992, 'Juneda', 3027, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7993, 'Lérida', 114367, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7994, 'Les', 684, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7995, 'Linyola', 2384, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7996, 'Lladorre', 226, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7997, 'Lladurs', 253, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7998, 'Llardecans', 649, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
7999, 'Llavorsí', 271, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8000, 'Lles de Cerdanya', 293, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8001, 'Llimiana', 132, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8002, 'Llobera', 251, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8003, 'Maials', 1043, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8004, 'Maldà', 306, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8005, 'Massalcoreig', 657, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8006, 'Massoteres', 159, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8007, 'Menàrguens', 863, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8008, 'Miralcamp', 1254, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8009, 'Molsosa, La', 135, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8010, 'Mollerussa', 9290, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8011, 'Montellà i Martinet', 512, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8012, 'Montferrer i Castellbò', 702, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8013, 'Montgai', 839, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8014, 'Montoliu de Lleida', 465, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8015, 'Montoliu de Segarra', 210, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8016, 'Montornès de Segarra', 115, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8017, 'Nalec', 105, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8018, 'Naut Aran', 1330, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8019, 'Navès', 270, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8020, 'Odèn', 294, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8021, 'Oliana', 1923, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8022, 'Oliola', 200, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8023, 'Olius', 506, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8024, 'Oluges, Les', 210, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8025, 'Omellons, Els', 265, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8026, 'Omells de na Gaia, Els', 149, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8027, 'Organyà', 1022, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8028, 'Os de Balaguer', 786, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8029, 'Ossó de Sió', 230, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8030, 'Palau d’Anglesola, El', 1646, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8031, 'Pallars Jussà', 466, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8032, 'Penelles', 540, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8033, 'Peramola', 391, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8034, 'Pinell de Solsonès', 246, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8035, 'Pinós', 338, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8036, 'Plans de Sió, Els', 646, 25); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8037, 'Poal, El', 639, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8038, 'Pobla de Cérvoles, La', 212, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8039, 'Pobla de Segur, La', 3076, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8040, 'Pont de Bar, El', 159, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8041, 'Pont de Suert, El', 2281, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8042, 'Ponts', 2317, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8043, 'Portella, La', 596, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8044, 'Prats i Sansor', 172, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8045, 'Preixana', 471, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8046, 'Preixens', 512, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8047, 'Prullans', 219, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8048, 'Puiggròs', 266, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8049, 'Puigverd d’Agramunt', 229, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8050, 'Puigverd de Lleida', 991, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8051, 'Rialp', 549, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8052, 'Ribera d’Ondara', 506, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8053, 'Ribera d’Urgellet', 790, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8054, 'Riner', 261, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8055, 'Rosselló', 1691, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8056, 'Salàs de Pallars', 363, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8057, 'Sanaüja', 460, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8058, 'Sant Esteve de la Sarga', 106, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8059, 'Sant Guim de Freixenet', 1080, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8060, 'Sant Guim de la Plana', 193, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8061, 'Sant Llorenç de Morunys', 871, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8062, 'Sant Martí de Riucorb', 764, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8063, 'Sant Ramon', 589, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8064, 'Sarroca de Bellera', 145, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8065, 'Sarroca de Lleida', 481, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8066, 'Senterada', 116, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8067, 'Sentiu de Sió, La', 486, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8068, 'Seròs', 1842, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8069, 'Seu d’Urgell, La', 10259, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8070, 'Sidamon', 459, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8071, 'Soleràs, El', 430, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8072, 'Solsona', 7091, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8073, 'Soriguera', 302, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8074, 'Sort', 1625, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8075, 'Soses', 1522, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8076, 'Sudanell', 728, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8077, 'Sunyer', 319, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8078, 'Talarn', 326, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8079, 'Talavera', 304, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8080, 'Tàrrega', 11656, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8081, 'Tarrés', 110, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8082, 'Tarroja de Segarra', 182, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8083, 'Térmens', 1436, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8084, 'Tírvia', 118, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8085, 'Tiurana', 188, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8086, 'Torà', 1142, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8087, 'Torms, Els', 206, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8088, 'Tornabous', 837, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8089, 'Torre de Cabdella, La', 732, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8090, 'Torrebesses', 351, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8091, 'Torrefarrera', 1553, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8092, 'Torrefeta i Florejacs', 709, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8093, 'Torregrossa', 2218, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8094, 'Torrelameu', 588, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8095, 'Torres de Segre', 1832, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8096, 'Torre-serona', 302, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8097, 'Tremp', 5332, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8098, 'Vall de Cardós', 350, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8099, 'Vallbona de les Monges', 294, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8100, 'Vallfogona de Balaguer', 1424, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8101, 'Valls d’Aguilar, Les', 245, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8102, 'Valls de Valira, Les', 820, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8103, 'Vansa i Fórnols, La', 164, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8104, 'Verdú', 957, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8105, 'Vielha e Mijaran', 3704, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8106, 'Vilagrassa', 435, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8107, 'Vilaller', 630, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8108, 'Vilamòs', 132, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8109, 'Vilanova de Bellpuig', 1187, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8110, 'Vilanova de la Barca', 976, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8111, 'Vilanova de l’Aguda', 298, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8112, 'Vilanova de Meià', 497, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8113, 'Vilanova de Segrià', 682, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8114, 'Vila-sana', 498, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8115, 'Vilosell, El', 215, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8116, 'Vinaixa', 688, 25); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8117, 'Agullana', 668, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8118, 'Aiguaviva', 413, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8119, 'Albanyà', 118, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8120, 'Albons', 515, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8121, 'Alp', 1050, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8122, 'Amer', 2293, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8123, 'Anglès', 5132, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8124, 'Arbúcies', 4848, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8125, 'Argelaguer', 353, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8126, 'Armentera, L’', 766, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8127, 'Avinyonet de Puigventós', 448, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8128, 'Banyoles', 14751, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8129, 'Bàscara', 780, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8130, 'Begur', 2995, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8131, 'Bellcaire d’Empordà', 490, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8132, 'Besalú', 2050, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8133, 'Bescanó', 2949, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8134, 'Beuda', 127, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8135, 'Bisbal d’Empordà, La', 7974, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8136, 'Biure', 231, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8137, 'Blanes', 27596, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8138, 'Boadella d’Empordà', 221, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8139, 'Bolvir', 244, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8140, 'Bordils', 1350, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8141, 'Borrassà', 476, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8142, 'Breda', 3354, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8143, 'Brunyola', 372, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8144, 'Cabanelles', 231, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8145, 'Cabanes', 798, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8146, 'Cadaqués', 1909, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8147, 'Caldes de Malavella', 3483, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8148, 'Calonge', 6176, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8149, 'Camós', 640, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8150, 'Campdevànol', 3332, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8151, 'Campelles', 131, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8152, 'Campllong', 283, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8153, 'Camprodon', 2209, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8154, 'Canet d’Adri', 512, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8155, 'Cantallops', 266, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8156, 'Capmany', 387, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8157, 'Cassà de la Selva', 7482, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8158, 'Castellfollit de la Roca', 1029, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8159, 'Castelló d’Empúries', 4652, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8160, 'Castell-Platja d’Aro', 6338, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8161, 'Celrà', 2633, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8162, 'Cellera de Ter, La', 2090, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8163, 'Cervià de Ter', 652, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8164, 'Cistella', 216, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8165, 'Colera', 447, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8166, 'Colomers', 206, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8167, 'Corçà', 1158, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8168, 'Cornellà del Terri', 1851, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8169, 'Crespià', 237, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8170, 'Cruïlles', 1121, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8171, 'Darnius', 524, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8172, 'Das', 138, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8173, 'Escala, L’', 6043, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8174, 'Espinelves', 171, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8175, 'Espolla', 400, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8176, 'Esponellà', 379, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8177, 'Far d’Empordà, El', 433, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8178, 'Figueres', 35175, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8179, 'Flaçà', 899, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8180, 'Foixà', 310, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8181, 'Fontanals de Cerdanya', 345, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8182, 'Fontanilles', 124, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8183, 'Fontcoberta', 1015, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8184, 'Forallac', 1626, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8185, 'Fornells de la Selva', 1227, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8186, 'Fortià', 487, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8187, 'Garrigàs', 309, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8188, 'Garrigoles', 147, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8189, 'Garriguella', 703, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8190, 'Ger', 297, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8191, 'Gerona', 72879, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8192, 'Gombrèn', 254, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8193, 'Gualta', 264, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8194, 'Guils de Cerdanya', 315, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8195, 'Hostalric', 2886, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8196, 'Isòvol', 172, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8197, 'Jafre', 367, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8198, 'Jonquera, La', 2573, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8199, 'Juià', 263, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8200, 'Lladó', 487, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8201, 'Llagostera', 5398, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8202, 'Llambilles', 455, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8203, 'Llanars', 421, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8204, 'Llançà', 3751, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8205, 'Llers', 869, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8206, 'Llívia', 933, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8207, 'Lloret de Mar', 17277, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8208, 'Llosses, Les', 368, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8209, 'Maçanet de Cabrenys', 677, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8210, 'Maçanet de la Selva', 3484, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8211, 'Madremanya', 184, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8212, 'Maià de Montcal', 333, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8213, 'Masarac', 254, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8470, 'Rodonyà', 398, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8471, 'Roquetes', 6037, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8472, 'Rourell, El', 279, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8473, 'Salomó', 439, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8474, 'Salou', 10359, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8475, 'Sant Carles de la Ràpita', 10815, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8476, 'Sant Jaume dels Domenys', 1342, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8477, 'Sant Jaume d’Enveja', 3417, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8478, 'Santa Bàrbara', 3387, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8479, 'Santa Coloma de Queralt', 2549, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8480, 'Santa Oliva', 1788, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8481, 'Santa Perpètua de Gaià', 126, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8482, 'Sarral', 1418, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8483, 'Savallà del Comtat', 63, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8484, 'Secuita, La', 1073, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8485, 'Selva del Camp, La', 3702, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8486, 'Senan', 30, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8487, 'Sénia, La', 5096, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8488, 'Solivella', 714, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8489, 'Tarragona', 114931, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8490, 'Tivenys', 1009, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8491, 'Tivissa', 1766, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8492, 'Torre de Fontaubella, La', 83, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8493, 'Torre de l’Espanyol, La', 679, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8214, 'Massanes', 537, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8215, 'Meranges', 72, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8217, 'Mollet de Peralada', 175, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8218, 'Molló', 353, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8219, 'Montagut', 792, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8220, 'Mont-ras', 1509, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8221, 'Navata', 658, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8222, 'Ogassa', 261, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8223, 'Olot', 27890, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8224, 'Ordis', 308, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8225, 'Osor', 505, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8226, 'Palafrugell', 17758, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8227, 'Palamós', 14126, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8228, 'Palau de Santa Eulàlia', 93, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8229, 'Palau-sator', 296, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8230, 'Palau-saverdera', 782, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8231, 'Palol de Revardit', 358, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8232, 'Pals', 1846, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8233, 'Pardines', 136, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8234, 'Parlavà', 338, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8235, 'Pau', 377, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8236, 'Pedret i Marzà', 119, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8237, 'Pera, La', 374, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8238, 'Peralada', 1148, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8239, 'Planes d’Hostoles, Les', 1807, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8240, 'Planoles', 275, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8241, 'Pont de Molins', 416, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8242, 'Pontós', 201, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8243, 'Porqueres', 3258, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8244, 'Port de la Selva, El', 861, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8245, 'Portbou', 1791, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8246, 'Preses, Les', 1331, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8247, 'Puigcerdà', 6635, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8248, 'Quart', 2093, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8249, 'Queralbs', 203, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8250, 'Rabós', 147, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8251, 'Regencós', 270, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8252, 'Ribes de Freser', 2248, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8253, 'Riells i Viabrea', 1298, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8254, 'Ripoll', 11247, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8255, 'Riudarenes', 1190, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8256, 'Riudaura', 380, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8257, 'Riudellots de la Selva', 1450, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8258, 'Riumors', 201, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8259, 'Roses', 11717, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8260, 'Rupià', 204, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8261, 'Sales de Llierca', 59, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8262, 'Salt', 22080, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8263, 'Sant Andreu Salou', 132, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8264, 'Sant Aniol de Finestres', 255, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8265, 'Sant Climent Sescebes', 429, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8266, 'Sant Feliu de Buixalleu', 649, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8267, 'Sant Feliu de Guíxols', 17430, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8268, 'Sant Feliu de Pallerols', 1119, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8269, 'Sant Ferriol', 205, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8270, 'Sant Gregori', 2120, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8271, 'Sant Hilari Sacalm', 5012, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8272, 'Sant Jaume de Llierca', 780, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8273, 'Sant Joan de les Abadesses', 3875, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8274, 'Sant Joan de Mollet', 312, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8275, 'Sant Joan les Fonts', 2849, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8276, 'Sant Jordi Desvalls', 605, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8277, 'Sant Julià de Ramis', 1966, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8278, 'Sant Julià del Llor i Bonmatí', 907, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8279, 'Sant Llorenç de la Muga', 156, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8280, 'Sant Martí de Llémena', 377, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8281, 'Sant Martí Vell', 204, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8282, 'Sant Miquel de Campmajor', 215, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8283, 'Sant Miquel de Fluvià', 549, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8284, 'Sant Mori', 131, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8285, 'Sant Pau de Segúries', 634, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8286, 'Sant Pere Pescador', 1413, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8287, 'Santa Coloma de Farners', 8682, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8288, 'Santa Cristina d’Aro', 2276, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8289, 'Santa Llogaia d’Alguema', 325, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8290, 'Santa Pau', 1440, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8291, 'Sarrià de Ter', 3256, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8292, 'Saus', 686, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8293, 'Selva de Mar, La', 167, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8294, 'Serinyà', 768, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8295, 'Serra de Daró', 186, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8296, 'Setcases', 161, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8297, 'Sils', 2636, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8298, 'Siurana', 157, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8299, 'Susqueda', 84, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8300, 'Tallada d’Empordà, La', 335, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8301, 'Terrades', 190, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8302, 'Torrent', 186, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8303, 'Torroella de Fluvià', 316, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8304, 'Torroella de Montgrí', 7770, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8305, 'Tortellà', 673, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8306, 'Toses', 138, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8307, 'Tossa de Mar', 3831, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8308, 'Ultramort', 200, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8309, 'Ullà', 737, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8310, 'Ullastret', 253, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8311, 'Urús', 148, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8312, 'Vajol, La', 100, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8313, 'Vall de Bianya, La', 1072, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8314, 'Vall d’en Bas, La', 2523, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8315, 'Vallfogona de Ripollès', 260, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8316, 'Vall-llobrega', 291, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8317, 'Ventalló', 566, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8318, 'Verges', 1090, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8319, 'Vidrà', 176, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8320, 'Vidreres', 4055, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8321, 'Vilabertran', 789, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8322, 'Vilablareix', 1173, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8323, 'Viladamat', 408, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8324, 'Viladasens', 188, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8325, 'Vilademuls', 773, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8326, 'Viladrau', 890, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8327, 'Vilafant', 3234, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8328, 'Vilajuïga', 705, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8329, 'Vilallonga de Ter', 431, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8330, 'Vilamacolum', 255, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8331, 'Vilamalla', 701, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8332, 'Vilamaniscle', 122, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8333, 'Vilanant', 264, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8334, 'Vila-sacra', 373, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8335, 'Vilaür', 118, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8336, 'Vilobí d’Onyar', 2154, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8337, 'Vilopriu', 183, 17); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8338, 'Aiguamúrcia', 596, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8339, 'Albinyana', 1088, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8340, 'Albiol, L’', 163, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8341, 'Alcanar', 8147, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8342, 'Alcover', 3466, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8343, 'Aldea, L’', 3622, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8344, 'Aldover', 813, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8345, 'Aleixar, L’', 625, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8346, 'Alfara de Carles', 378, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8347, 'Alforja', 1178, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8348, 'Alió', 342, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8349, 'Almoster', 637, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8350, 'Altafulla', 2429, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8351, 'Ametlla de Mar, L’', 4422, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8352, 'Ampolla, L’', 1700, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8353, 'Amposta', 15687, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8354, 'Arboç, L’', 3497, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8355, 'Arbolí', 143, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8356, 'Argentera, L’', 138, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8357, 'Arnes', 536, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8358, 'Ascó', 1807, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8359, 'Banyeres del Penedès', 1566, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8360, 'Barberà de la Conca', 429, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8361, 'Batea', 2006, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8362, 'Bellmunt del Priorat', 308, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8363, 'Bellvei', 1186, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8364, 'Benifallet', 934, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8365, 'Benissanet', 1039, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8366, 'Bisbal de Falset, La', 257, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8367, 'Bisbal del Penedès, La', 1606, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8368, 'Blancafort', 398, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8369, 'Bonastre', 301, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8370, 'Borges del Camp, Les', 1457, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8371, 'Bot', 879, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8372, 'Botarell', 501, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8373, 'Bràfim', 561, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8374, 'Cabacés', 340, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8375, 'Cabra del Camp', 483, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8376, 'Calafell', 9705, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8377, 'Camarles', 2873, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8378, 'Cambrils', 17127, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8379, 'Capafonts', 102, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8380, 'Capçanes', 404, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8381, 'Caseres', 343, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8382, 'Castellvell del Camp', 1047, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8383, 'Catllar, El', 1687, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8384, 'Colldejou', 189, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8385, 'Conesa', 126, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8386, 'Constantí', 5407, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8387, 'Corbera d’Ebre', 1103, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8388, 'Cornudella de Montsant', 855, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8389, 'Creixell', 1345, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8390, 'Cunit', 3977, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8391, 'Deltebre', 10393, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8392, 'Duesaigües', 211, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8393, 'Espluga de Francolí, L’', 3661, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8394, 'Falset', 2517, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8395, 'Fatarella, La', 1329, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8396, 'Febró, La', 60, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8397, 'Figuera, La', 125, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8398, 'Figuerola del Camp', 204, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8399, 'Flix', 4761, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8400, 'Forès', 61, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8401, 'Freginals', 355, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8402, 'Galera, La', 760, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8403, 'Gandesa', 2702, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8404, 'Garcia', 550, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8405, 'Garidells, Els', 190, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8406, 'Ginestar', 849, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8407, 'Godall', 767, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8408, 'Gratallops', 231, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8409, 'Guiamets, Els', 310, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8410, 'Horta de Sant Joan', 1309, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8411, 'Lloar, El', 131, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8412, 'Llorac', 106, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8413, 'Llorenç del Penedès', 1394, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8414, 'Marçà', 604, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8415, 'Margalef', 152, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8416, 'Mas de Barberans', 747, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8417, 'Masdenverge', 939, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8418, 'Masllorenç', 382, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8419, 'Masó, La', 251, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8420, 'Maspujols', 406, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8421, 'Masroig, El', 528, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8422, 'Milà, El', 164, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8423, 'Miravet', 807, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8424, 'Molar, El', 310, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8425, 'Montblanc', 5932, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8426, 'Montbrió del Camp', 1426, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8427, 'Montferri', 161, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8428, 'Montmell, El', 397, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8429, 'Mont-ral', 139, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8430, 'Mont-roig del Camp', 5580, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8431, 'Móra d’Ebre', 4735, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8432, 'Móra la Nova', 2776, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8433, 'Morell, El', 2389, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8434, 'Morera de Montsant, La', 204, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8435, 'Nou de Gaià, La', 383, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8436, 'Nulles', 338, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8437, 'Palma d’Ebre, La', 429, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8438, 'Pallaresos, Els', 1460, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8439, 'Passanant', 189, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8440, 'Paüls', 683, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8441, 'Perafort', 513, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8442, 'Perelló, El', 2158, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8443, 'Piles, Les', 149, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8444, 'Pinell de Brai, El', 1142, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8445, 'Pira', 342, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8446, 'Pla de Santa Maria, El', 1655, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8447, 'Pobla de Mafumet, La', 968, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8448, 'Pobla de Massaluca, La', 452, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8449, 'Pobla de Montornès, La', 1178, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8450, 'Poboleda', 378, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8451, 'Pont d’Armentera, El', 601, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8452, 'Porrera', 455, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8453, 'Pradell de la Teixeta', 245, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8454, 'Prades', 529, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8455, 'Prat de Comte', 208, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8456, 'Pratdip', 437, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8457, 'Puigpelat', 469, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8458, 'Querol', 238, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8459, 'Rasquera', 857, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8460, 'Renau', 63, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8461, 'Reus', 90221, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8462, 'Riba, La', 852, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8463, 'Riba-roja d’Ebre', 1544, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8464, 'Riera de Gaià, La', 910, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8465, 'Riudecanyes', 590, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8466, 'Riudecols', 980, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8467, 'Riudoms', 4962, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8468, 'Rocafort de Queralt', 261, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8469, 'Roda de Barà', 2759, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8494, 'Torredembarra', 8572, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8495, 'Torroja del Priorat', 142, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8496, 'Tortosa', 30560, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8497, 'Ulldecona', 5208, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8498, 'Ulldemolins', 506, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8499, 'Vallclara', 109, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8500, 'Vallfogona de Riucorb', 111, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8501, 'Vallmoll', 1154, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8502, 'Valls', 20315, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8503, 'Vandellòs i l’Hospitalet de l’Infant', 4457, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8504, 'Vendrell, El', 17890, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8505, 'Vespella', 148, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8506, 'Vilabella', 856, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8507, 'Vilalba dels Arcs', 792, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8508, 'Vilallonga del Camp', 1225, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8509, 'Vilanova de Prades', 153, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8510, 'Vilanova d’Escornalbou', 441, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8511, 'Vilaplana', 519, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8512, 'Vila-rodona', 1010, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8513, 'Vila-seca i Salou', 12610, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8514, 'Vilaverd', 367, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8515, 'Vilella Alta, La', 135, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8516, 'Vilella Baixa, La', 168, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8517, 'Vimbodí', 1113, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8518, 'Vinebre', 442, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8519, 'Vinyols i els Arcs', 957, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8520, 'Xerta', 1237, 43); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8523, 'Horcajuelo de la Sierra', 91, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8524, 'Hoyo de Manzanares', 5080, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8525, 'Humanes de Madrid', 8305, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8526, 'Leganés', 173163, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8527, 'Loeches', 2672, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8528, 'Lozoya', 444, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8529, 'Lozoyuela-Navas-Sieteiglesias', 622, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8530, 'Madarcos', 36, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8531, 'Madrid', 2879052, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8532, 'Majadahonda', 40042, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8533, 'Manzanares el Real', 3087, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8534, 'Meco', 4142, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8535, 'Mejorada del Campo', 14677, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8536, 'Miraflores de la Sierra', 3365, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8538, 'Molinos, Los', 2957, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8539, 'Montejo de la Sierra', 279, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8540, 'Moraleja de Enmedio', 2289, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8541, 'Moralzarzal', 3672, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8542, 'Morata de Tajuña', 5438, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8543, 'Móstoles', 195311, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8544, 'Navacerrada', 1778, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8545, 'Navalafuente', 459, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8546, 'Navalagamella', 939, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8547, 'Navalcarnero', 11601, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8548, 'Navarredonda', 99, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8549, 'Navas del Rey', 1440, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8550, 'Nuevo Baztán', 2108, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8551, 'Olmeda de las Fuentes', 146, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8552, 'Orusco de Tajuña', 670, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8553, 'Paracuellos de Jarama', 5293, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8554, 'Parla', 69163, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8555, 'Patones', 360, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8556, 'Pedrezuela', 1154, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8557, 'Pelayos de la Presa', 1198, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8558, 'Perales de Tajuña', 1991, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8559, 'Pezuela de las Torres', 540, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8560, 'Pinilla del Valle', 167, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8561, 'Pinto', 25038, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8562, 'Piñuécar', 160, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8563, 'Pozuelo de Alarcón', 60120, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8564, 'Pozuelo del Rey', 252, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8565, 'Prádena del Rincón', 110, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8566, 'Puebla de la Sierra', 78, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8567, 'Puentes Viejas', 414, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8568, 'Quijorna', 829, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8569, 'Rascafría', 1459, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8570, 'Redueña', 163, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8571, 'Ribatejada', 307, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8572, 'Rivas-Vaciamadrid', 22620, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8573, 'Robledillo de la Jara', 84, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8574, 'Robledo de Chavela', 2139, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8575, 'Robregordo', 88, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8576, 'Rozas de Madrid, Las', 45280, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8577, 'Rozas de Puerto Real', 319, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8578, 'San Agustín de Guadalix', 4603, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8579, 'San Fernando de Henares', 31677, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8580, 'San Lorenzo de El Escorial', 10828, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8581, 'San Martín de la Vega', 8995, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8582, 'San Martín de Valdeiglesias', 5969, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8583, 'San Sebastián de los Reyes', 57632, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8584, 'Santa María de la Alameda', 752, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8585, 'Santorcaz', 529, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8586, 'Santos de la Humosa, Los', 918, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8587, 'Serna del Monte, La', 111, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8588, 'Serranillos del Valle', 810, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8589, 'Sevilla la Nueva', 2650, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8590, 'Somosierra', 99, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8591, 'Soto del Real', 3992, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8592, 'Talamanca de Jarama', 1334, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8593, 'Tielmes', 1973, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8594, 'Titulcia', 918, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8595, 'Torrejón de Ardoz', 88821, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8596, 'Torrejón de la Calzada', 3219, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8597, 'Torrejón de Velasco', 1504, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8598, 'Torrelaguna', 2612, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8599, 'Torrelodones', 10743, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8600, 'Torremocha de Jarama', 322, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8601, 'Torres de la Alameda', 3925, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8602, 'Tres Cantos', 27715, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8603, 'Valdaracete', 650, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8604, 'Valdeavero', 556, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8605, 'Valdelaguna', 540, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8606, 'Valdemanco', 515, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8607, 'Valdemaqueda', 553, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8608, 'Valdemorillo', 3997, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8609, 'Valdemoro', 21240, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8610, 'Valdeolmos', 1625, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8611, 'Valdepiélagos', 327, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8612, 'Valdetorres de Jarama', 1662, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8613, 'Valdilecha', 1797, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8614, 'Valverde de Alcalá', 265, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8615, 'Velilla de San Antonio', 4597, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8616, 'Vellón, El', 1045, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8617, 'Venturada', 539, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8618, 'Villa del Prado', 3758, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8619, 'Villaconejos', 2909, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8620, 'Villalbilla', 3586, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8621, 'Villamanrique de Tajo', 585, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8622, 'Villamanta', 1499, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8623, 'Villamantilla', 338, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8624, 'Villanueva de la Cañada', 7913, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8625, 'Villanueva de Perales', 444, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8626, 'Villanueva del Pardillo', 2887, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8627, 'Villar del Olmo', 1010, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8628, 'Villarejo de Salvanés', 5384, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8629, 'Villaviciosa de Odón', 17019, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8630, 'Villavieja del Lozoya', 180, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8631, 'Zarzalejo', 1002, 28); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8632, 'Abenójar', 1987, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8633, 'Agudo', 2226, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8634, 'Alamillo', 752, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8635, 'Albaladejo', 1803, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8636, 'Alcázar de San Juan', 26652, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8637, 'Alcoba', 811, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8638, 'Alcolea de Calatrava', 1624, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8639, 'Alcubillas', 746, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8640, 'Aldea del Rey', 2353, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8641, 'Alhambra', 1428, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8642, 'Almadén', 8268, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8643, 'Almadenejos', 646, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8644, 'Almagro', 8551, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8645, 'Almedina', 829, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8646, 'Almodóvar del Campo', 7778, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8647, 'Almuradiel', 893, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8648, 'Anchuras', 472, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8649, 'Arenas de San Juan', 1101, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8650, 'Argamasilla de Alba', 6667, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8651, 'Argamasilla de Calatrava', 5535, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8652, 'Arroba de los Montes', 696, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8653, 'Ballesteros de Calatrava', 607, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8654, 'Bolaños de Calatrava', 10537, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8655, 'Brazatortas', 1352, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8656, 'Cabezarados', 405, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8657, 'Cabezarrubias del Puerto', 714, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8658, 'Calzada de Calatrava', 5027, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8659, 'Campo de Criptana', 14094, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8660, 'Cañada de Calatrava', 101, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8661, 'Caracuel de Calatrava', 199, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8662, 'Carrión de Calatrava', 2558, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8663, 'Carrizosa', 1791, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8915, 'Méntrida', 1655, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8916, 'Mesegar de Tajo', 242, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8917, 'Miguel Esteban', 4755, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8918, 'Mocejón', 4112, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8919, 'Mohedas de la Jara', 684, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8920, 'Montearagón', 490, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8921, 'Montesclaros', 476, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8922, 'Mora', 9333, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8923, 'Nambroca', 2114, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8924, 'Nava de Ricomalillo, La', 789, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8925, 'Navahermosa', 3805, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8926, 'Navalcán', 2522, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8927, 'Navalmoralejo', 91, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8928, 'Navalmorales, Los', 2733, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8929, 'Navalucillos, Los', 2934, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8930, 'Navamorcuende', 760, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8931, 'Noblejas', 2942, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8932, 'Noez', 952, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8933, 'Nombela', 916, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8934, 'Novés', 1561, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8935, 'Numancia de la Sagra', 1438, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8936, 'Nuño Gómez', 175, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8937, 'Ocaña', 5991, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8938, 'Olías del Rey', 4102, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8939, 'Ontígola', 875, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8940, 'Orgaz', 2683, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8941, 'Oropesa', 2945, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8942, 'Otero', 239, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8943, 'Palomeque', 442, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8944, 'Pantoja', 2185, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8945, 'Paredes de Escalona', 111, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8946, 'Parrillas', 486, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8947, 'Pelahustán', 376, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8948, 'Pepino', 739, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8949, 'Polán', 3188, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8950, 'Portillo de Toledo', 1919, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8951, 'Puebla de Almoradiel, La', 5412, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8952, 'Puebla de Montalbán, La', 6756, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8953, 'Pueblanueva, La', 1965, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8954, 'Puente del Arzobispo, El', 1598, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8955, 'Puerto de San Vicente', 291, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8956, 'Pulgar', 1204, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8957, 'Quero', 1403, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8958, 'Quintanar de la Orden', 9348, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8959, 'Quismondo', 1335, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8960, 'Real de San Vicente, El', 1037, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8961, 'Recas', 2447, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8962, 'Retamoso', 193, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8963, 'Rielves', 496, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8964, 'Robledo del Mazo', 580, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8965, 'Romeral, El', 955, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8966, 'San Bartolomé de las Abiertas', 476, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8967, 'San Martín de Montalbán', 758, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8968, 'San Martín de Pusa', 809, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8969, 'San Pablo de los Montes', 2094, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8970, 'San Román de los Montes', 651, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8971, 'Santa Ana de Pusa', 382, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8972, 'Santa Cruz de la Zarza', 4438, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8973, 'Santa Cruz del Retamar', 1550, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8974, 'Santa Olalla', 2322, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8975, 'Santo Domingo-Caudilla', 830, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8976, 'Sartajada', 115, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8977, 'Segurilla', 969, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8978, 'Seseña', 3251, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8979, 'Sevilleja de la Jara', 1145, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8664, 'Castellar de Santiago', 2321, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8665, 'Ciudad Real', 63008, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8666, 'Corral de Calatrava', 1348, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8667, 'Cortijos, Los', 1125, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8668, 'Cózar', 1444, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8669, 'Chillón', 2538, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8670, 'Daimiel', 17371, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8671, 'Fernancaballero', 1063, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8672, 'Fontanarejo', 420, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8673, 'Fuencaliente', 1369, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8674, 'Fuenllana', 353, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8675, 'Fuente el Fresno', 3540, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8676, 'Granátula de Calatrava', 1064, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8677, 'Guadalmez', 1104, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8678, 'Herencia', 7081, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8679, 'Hinojosas de Calatrava', 895, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8680, 'Horcajo de los Montes', 1099, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8681, 'Labores, Las', 695, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8682, 'Luciana', 479, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8683, 'Malagón', 8179, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8684, 'Manzanares', 18325, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8685, 'Membrilla', 6774, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8686, 'Mestanza', 1060, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8687, 'Miguelturra', 8251, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8688, 'Montiel', 1775, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8689, 'Moral de Calatrava', 5284, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8690, 'Navalpino', 341, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8691, 'Navas de Estena', 432, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8692, 'Pedro Muñoz', 7249, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8693, 'Picón', 632, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8694, 'Piedrabuena', 5277, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8695, 'Poblete', 751, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8696, 'Porzuna', 4118, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8697, 'Pozuelo de Calatrava', 2466, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8698, 'Pozuelos de Calatrava, Los', 619, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8699, 'Puebla de Don Rodrigo', 1370, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8700, 'Puebla del Príncipe', 1110, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8701, 'Puerto Lápice', 1053, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8702, 'Puertollano', 53143, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8703, 'Retuerta del Bullaque', 1119, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8704, 'Robledo, El', 1122, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8705, 'Ruidera', 610, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8706, 'Saceruela', 791, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8707, 'San Carlos del Valle', 1276, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8708, 'San Lorenzo de Calatrava', 360, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8709, 'Santa Cruz de los Cáñamos', 685, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8710, 'Santa Cruz de Mudela', 4881, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8711, 'Socuéllamos', 11583, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8712, 'Solana, La', 14879, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8713, 'Solana del Pino', 695, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8714, 'Terrinches', 1061, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8715, 'Tomelloso', 29322, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8716, 'Torralba de Calatrava', 3046, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8717, 'Torre de Juan Abad', 1707, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8718, 'Torrenueva', 3280, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8719, 'Valdemanco del Esteras', 340, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8720, 'Valdepeñas', 26307, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8721, 'Valenzuela de Calatrava', 844, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8722, 'Villahermosa', 2875, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8723, 'Villamanrique', 1859, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8724, 'Villamayor de Calatrava', 776, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8725, 'Villanueva de la Fuente', 2922, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8727, 'Villanueva de San Carlos', 543, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8728, 'Villar del Pozo', 98, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8729, 'Villarrubia de los Ojos', 9489, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8730, 'Villarta de San Juan', 2993, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8731, 'Viso del Marqués', 3253, 13); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8732, 'Abengibre', 1036, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8733, 'Alatoz', 716, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8734, 'Albacete', 143779, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8735, 'Albatana', 932, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8736, 'Alborea', 810, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8737, 'Alcadozo', 812, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8738, 'Alcalá del Júcar', 1614, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8739, 'Alcaraz', 1904, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8740, 'Almansa', 23473, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8741, 'Alpera', 2356, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8742, 'Ayna', 1088, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8743, 'Balazote', 2281, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8744, 'Balsa de Ves', 284, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8745, 'Ballestero, El', 634, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8746, 'Barrax', 2015, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8747, 'Bienservida', 912, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8748, 'Bogarra', 1521, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8749, 'Bonete', 1275, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8750, 'Bonillo, El', 3332, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8751, 'Carcelén', 743, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8752, 'Casas de Juan Núñez', 1363, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8753, 'Casas de Lázaro', 517, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8754, 'Casas de Ves', 955, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8755, 'Casas-Ibáñez', 4040, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8756, 'Caudete', 8665, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8757, 'Cenizate', 1083, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8758, 'Corral-Rubio', 492, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8759, 'Cotillas', 251, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8760, 'Chinchilla de Monte-Aragón', 3289, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8761, 'Elche de la Sierra', 3995, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8762, 'Férez', 867, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8763, 'Fuensanta', 439, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8764, 'Fuente-Álamo', 2478, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8765, 'Fuentealbilla', 1873, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8766, 'Gineta, La', 2141, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8767, 'Golosalvo', 136, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8768, 'Hellín', 26403, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8769, 'Herrera, La', 446, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8770, 'Higueruela', 1318, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8771, 'Hoya-Gonzalo', 761, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8772, 'Jorquera', 649, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8773, 'Letur', 1402, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8774, 'Lezuza', 1949, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8775, 'Liétor', 1808, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8776, 'Madrigueras', 4520, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8777, 'Mahora', 1397, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8778, 'Masegoso', 239, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8779, 'Minaya', 1933, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8780, 'Molinicos', 1611, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8781, 'Montalvos', 148, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8782, 'Montealegre del Castillo', 2146, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8783, 'Motilleja', 548, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8784, 'Munera', 4089, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8785, 'Navas de Jorquera', 594, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8786, 'Nerpio', 1978, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8787, 'Ontur', 2515, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8788, 'Ossa de Montiel', 2875, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8789, 'Paterna del Madera', 662, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8790, 'Peñas de San Pedro', 1288, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8791, 'Peñascosa', 466, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8792, 'Pétrola', 1001, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8793, 'Povedilla', 775, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8794, 'Pozohondo', 1966, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8795, 'Pozo-Lorente', 549, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8796, 'Pozuelo', 720, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8797, 'Recueja, La', 378, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8798, 'Riópar', 1398, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8799, 'Robledo', 484, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8800, 'Roda, La', 13564, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8801, 'Salobre', 680, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8802, 'San Pedro', 1341, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8803, 'Socovos', 2153, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8804, 'Tarazona de la Mancha', 5922, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8805, 'Tobarra', 7410, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8806, 'Valdeganga', 2096, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8807, 'Vianos', 549, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8808, 'Villa de Ves', 76, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8809, 'Villalgordo del Júcar', 1318, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8810, 'Villamalea', 3397, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8811, 'Villapalacios', 968, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8812, 'Villarrobledo', 22215, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8813, 'Villatoya', 207, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8814, 'Villavaliente', 320, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8815, 'Villaverde de Guadalimar', 625, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8816, 'Viveros', 626, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8817, 'Yeste', 4743, 2); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8818, 'Ajofrín', 2259, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8819, 'Alameda de la Sagra', 2816, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8820, 'Albarreal de Tajo', 604, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8821, 'Alcabón', 561, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8822, 'Alcañizo', 357, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8823, 'Alcaudete de la Jara', 1615, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8824, 'Alcolea de Tajo', 810, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8825, 'Aldea en Cabo', 192, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8826, 'Aldeanueva de Barbarroya', 887, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8827, 'Aldeanueva de San Bartolomé', 669, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8828, 'Almendral de la Cañada', 440, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8829, 'Almonacid de Toledo', 812, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8830, 'Almorox', 2279, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8831, 'Añover de Tajo', 4602, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8832, 'Arcicóllar', 567, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8833, 'Argés', 2013, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8834, 'Azután', 369, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8835, 'Barcience', 126, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8836, 'Bargas', 6416, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8837, 'Belvís de la Jara', 1824, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8838, 'Borox', 2080, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8839, 'Buenaventura', 588, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8840, 'Burguillos de Toledo', 722, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8841, 'Burujón', 1267, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8842, 'Cabañas de la Sagra', 1041, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8843, 'Cabañas de Yepes', 268, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8844, 'Cabezamesada', 567, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8845, 'Calera y Chozas', 3742, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8846, 'Caleruela', 340, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8847, 'Calzada de Oropesa', 686, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8848, 'Camarena', 2143, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8849, 'Camarenilla', 562, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8850, 'Campillo de la Jara, El', 604, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8851, 'Camuñas', 1810, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8852, 'Cardiel de los Montes', 136, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8853, 'Carmena', 802, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8854, 'Carpio de Tajo, El', 2406, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8855, 'Carranque', 1325, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8856, 'Carriches', 324, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8857, 'Casar de Escalona, El', 893, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8858, 'Casarrubios del Monte', 2284, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8859, 'Casasbuenas', 244, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8860, 'Castillo de Bayuela', 1046, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8861, 'Cazalegas', 1154, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8862, 'Cebolla', 2777, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8863, 'Cedillo del Condado', 1166, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8864, 'Cerralbos, Los', 503, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8865, 'Cervera de los Montes', 416, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8866, 'Ciruelos', 333, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8867, 'Cobeja', 1701, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8868, 'Cobisa', 517, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8869, 'Consuegra', 10135, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8870, 'Corral de Almaguer', 5946, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8871, 'Cuerva', 1239, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8872, 'Chozas de Canales', 987, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8873, 'Chueca', 263, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8874, 'Domingo Pérez', 517, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8875, 'Dosbarrios', 2049, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8876, 'Erustes', 210, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8877, 'Escalona', 1970, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8878, 'Escalonilla', 1484, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8879, 'Espinoso del Rey', 629, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8880, 'Esquivias', 3635, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8881, 'Estrella, La', 478, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8882, 'Fuensalida', 7272, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8883, 'Gálvez', 3195, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8884, 'Garciotum', 165, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8885, 'Gerindote', 1824, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8886, 'Guadamur', 1635, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8887, 'Guardia, La', 2492, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8888, 'Herencias, Las', 721, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8889, 'Herreruela de Oropesa', 450, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8890, 'Hinojosa de San Vicente', 525, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8891, 'Hontanar', 128, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8892, 'Hormigos', 424, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8893, 'Huecas', 408, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8894, 'Huerta de Valdecarábanos', 1729, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8895, 'Iglesuela, La', 481, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8896, 'Illán de Vacas', 5, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8897, 'Illescas', 8959, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8898, 'Lagartera', 1949, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8899, 'Layos', 274, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8900, 'Lillo', 2951, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8901, 'Lominchar', 1059, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8902, 'Lucillos', 535, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8903, 'Madridejos', 10541, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8904, 'Magán', 997, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8905, 'Malpica de Tajo', 1833, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8906, 'Manzaneque', 464, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8907, 'Maqueda', 502, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8908, 'Marjaliza', 333, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8909, 'Marrupe', 139, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8910, 'Mascaraque', 512, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8911, 'Mata, La', 1008, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8912, 'Mazarambroz', 1199, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8913, 'Mejorada', 1097, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8914, 'Menasalbas', 3017, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8980, 'Sonseca', 9049, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8981, 'Sotillo de las Palomas', 204, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8982, 'Talavera de la Reina', 75864, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8983, 'Tembleque', 2176, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8984, 'Toboso, El', 2162, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8985, 'Toledo', 65104, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8986, 'Torralba de Oropesa', 325, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8987, 'Torre de Esteban Hambrán, La', 1359, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8988, 'Torrecilla de la Jara', 317, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8989, 'Torrico', 975, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8990, 'Torrijos', 9737, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8991, 'Totanés', 371, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8992, 'Turleque', 1066, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8993, 'Ugena', 744, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8994, 'Urda', 3089, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8995, 'Valdeverdeja', 888, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8996, 'Valmojado', 2273, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8997, 'Velada', 2374, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8998, 'Ventas con Peña Aguilera, Las', 1449, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
8999, 'Ventas de Retamosa, Las', 599, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9000, 'Ventas de San Julián, Las', 250, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9001, 'Villa de Don Fadrique, La', 4245, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9002, 'Villacañas', 9066, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9003, 'Villafranca de los Caballeros', 5425, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9004, 'Villaluenga de la Sagra', 2600, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9005, 'Villamiel de Toledo', 349, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9006, 'Villaminaya', 678, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9007, 'Villamuelas', 790, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9008, 'Villanueva de Alcardete', 3329, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9009, 'Villanueva de Bogas', 839, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9010, 'Villarejo de Montalbán', 104, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9011, 'Villarrubia de Santiago', 2958, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9012, 'Villaseca de la Sagra', 1586, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9013, 'Villasequilla', 2389, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9014, 'Villatobas', 2323, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9015, 'Viso de San Juan, El', 873, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9016, 'Yébenes, Los', 6586, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9017, 'Yeles', 1308, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9018, 'Yepes', 4437, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9019, 'Yuncler', 1885, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9020, 'Yunclillos', 612, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9021, 'Yuncos', 3077, 45); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9022, 'Abia de la Obispalía', 107, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9023, 'Acebrón, El', 301, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9024, 'Alarcón', 230, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9025, 'Albaladejo del Cuende', 432, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9026, 'Albalate de las Nogueras', 413, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9027, 'Albendea', 212, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9028, 'Alberca de Záncara, La', 1862, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9029, 'Alcalá de la Vega', 174, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9030, 'Alcantud', 155, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9031, 'Alcázar del Rey', 268, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9032, 'Alcohujate', 70, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9033, 'Alconchel de la Estrella', 236, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9034, 'Algarra', 40, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9035, 'Aliaguilla', 919, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9036, 'Almarcha, La', 658, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9037, 'Almendros', 419, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9038, 'Almodóvar del Pinar', 582, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9039, 'Almonacid del Marquesado', 578, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9040, 'Altarejos', 403, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9041, 'Arandilla del Arroyo', 52, 16); 
COMMIT;
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9042, 'Arcas del Villar', 424, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9043, 'Arcos de la Sierra', 128, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9044, 'Arguisuelas', 217, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9045, 'Arrancacepas', 39, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9046, 'Atalaya del Cañavate', 131, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9047, 'Barajas de Melo', 755, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9048, 'Barchín del Hoyo', 154, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9049, 'Bascuñana de San Pedro', 38, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9050, 'Beamud', 107, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9051, 'Belinchón', 330, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9052, 'Belmonte', 2597, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9053, 'Belmontejo', 298, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9054, 'Beteta', 428, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9055, 'Boniches', 267, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9056, 'Buciegas', 89, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9057, 'Buenache de Alarcón', 657, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9058, 'Buenache de la Sierra', 126, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9059, 'Buendía', 514, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9060, 'Campillo de Altobuey', 1739, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9061, 'Campillos-Paravientos', 162, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9062, 'Campillos-Sierra', 105, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9063, 'Campos del Paraíso', 1262, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9064, 'Canalejas del Arroyo', 372, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9065, 'Cañada del Hoyo', 402, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9066, 'Cañada Juncosa', 402, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9067, 'Cañamares', 621, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9068, 'Cañavate, El', 290, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9069, 'Cañaveras', 449, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9070, 'Cañaveruelas', 257, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9071, 'Cañete', 823, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9072, 'Cañizares', 646, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9073, 'Carboneras de Guadazaón', 1045, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9074, 'Cardenete', 761, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9075, 'Carrascosa', 125, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9076, 'Carrascosa de Haro', 172, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9077, 'Casas de Benítez', 1131, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9078, 'Casas de Fernando Alonso', 1441, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9079, 'Casas de Garcimolina', 29, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9080, 'Casas de Guijarro', 172, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9081, 'Casas de Haro', 901, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9082, 'Casas de los Pinos', 548, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9083, 'Casasimarro', 3060, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9085, 'Castillejo de Iniesta', 202, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9086, 'Castillejo-Sierra', 57, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9087, 'Castillo de Garcimuñoz', 297, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9088, 'Castillo-Albaráñez', 34, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9089, 'Cervera del Llano', 332, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9090, 'Cierva, La', 55, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9091, 'Cuenca', 45789, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9092, 'Cueva del Hierro', 49, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9093, 'Chillarón de Cuenca', 306, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9094, 'Chumillas', 59, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9095, 'Enguídanos', 573, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9096, 'Fresneda de Altarejos', 107, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9097, 'Fresneda de la Sierra', 78, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9098, 'Frontera, La', 237, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9099, 'Fuente de Pedro Naharro', 1257, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9100, 'Fuentelespino de Haro', 386, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9101, 'Fuentelespino de Moya', 153, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9102, 'Fuentenava de Jábaga', 261, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9103, 'Fuentes', 539, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9104, 'Fuertescusa', 132, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9105, 'Gabaldón', 199, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9106, 'Garaballa', 171, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9107, 'Gascueña', 172, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9108, 'Graja de Campalbo', 143, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9109, 'Graja de Iniesta', 358, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9110, 'Henarejos', 323, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9111, 'Herrumblar, El', 798, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9112, 'Hinojosa, La', 382, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9113, 'Hinojosos, Los', 1196, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9114, 'Hito, El', 252, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9115, 'Honrubia', 1692, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9116, 'Hontanaya', 543, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9117, 'Hontecillas', 103, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9118, 'Horcajo de Santiago', 3626, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9119, 'Huélamo', 164, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9120, 'Huelves', 84, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9121, 'Huérguina', 124, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9122, 'Huerta de la Obispalía', 167, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9123, 'Huerta del Marquesado', 218, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9124, 'Huete', 2437, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9125, 'Iniesta', 3787, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9126, 'Laguna del Marquesado', 75, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9127, 'Lagunaseca', 105, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9128, 'Landete', 1587, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9129, 'Ledaña', 1978, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9130, 'Leganiel', 273, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9131, 'Majadas, Las', 412, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9132, 'Mariana', 302, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9133, 'Masegosa', 132, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9134, 'Mesas, Las', 2622, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9135, 'Minglanilla', 2378, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9136, 'Mira', 1173, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9137, 'Monreal del Llano', 97, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9138, 'Montalbanejo', 235, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9139, 'Montalbo', 816, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9140, 'Monteagudo de las Salinas', 123, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9141, 'Mota de Altarejos', 69, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9142, 'Mota del Cuervo', 5563, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9143, 'Motilla del Palancar', 4898, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9144, 'Moya', 318, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9145, 'Narboneta', 105, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9146, 'Olivares de Júcar', 647, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9147, 'Olmeda de la Cuesta', 49, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9148, 'Olmeda del Rey', 253, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9149, 'Olmedilla de Alarcón', 242, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9150, 'Olmedilla de Eliz', 38, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9151, 'Osa de la Vega', 721, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9152, 'Pajarón', 156, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9153, 'Pajaroncillo', 104, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9154, 'Palomares del Campo', 1042, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9155, 'Palomera', 196, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9156, 'Paracuellos', 187, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9157, 'Paredes', 82, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9158, 'Parra de las Vegas, La', 59, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9159, 'Pedernoso, El', 1401, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9160, 'Pedroñeras, Las', 6549, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9161, 'Peral, El', 743, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9162, 'Peraleja, La', 184, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9163, 'Pesquera, La', 293, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9164, 'Picazo, El', 736, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9165, 'Pinarejo', 624, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9166, 'Pineda de Gigüela', 179, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9167, 'Piqueras del Castillo', 89, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9168, 'Portalrubio de Guadamajud', 112, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9169, 'Portilla', 105, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9170, 'Poyatos', 131, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9171, 'Pozoamargo', 336, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9172, 'Pozorrubielos de la Mancha', 287, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9173, 'Pozorrubio', 564, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9174, 'Pozuelo, El', 106, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9175, 'Priego', 1135, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9176, 'Provencio, El', 2673, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9177, 'Puebla de Almenara', 650, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9178, 'Puebla de Don Francisco', 423, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9179, 'Puebla del Salvador', 310, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9180, 'Quintanar del Rey', 6075, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9181, 'Rada de Haro', 75, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9182, 'Reíllo', 158, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9183, 'Rozalén del Monte', 147, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9184, 'Saceda-Trasierra', 78, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9185, 'Saelices', 779, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9186, 'Salinas del Manzano', 143, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9187, 'Salmeroncillos', 176, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9188, 'Salvacañete', 362, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9189, 'San Clemente', 6374, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9190, 'San Lorenzo de la Parrilla', 1634, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9191, 'San Martín de Boniches', 112, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9192, 'San Pedro Palmiches', 111, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9193, 'Santa Cruz de Moya', 444, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9194, 'Santa María de los Llanos', 918, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9195, 'Santa María del Campo Rus', 906, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9196, 'Santa María del Val', 128, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9197, 'Sisante', 1850, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9198, 'Solera de Gabaldón', 42, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9199, 'Sotorribas', 1002, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9200, 'Talayuelas', 1261, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9201, 'Tarancón', 11339, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9202, 'Tébar', 437, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9203, 'Tejadillos', 192, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9204, 'Tinajas', 425, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9205, 'Torralba', 223, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9206, 'Torrejoncillo del Rey', 809, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9207, 'Torrubia del Campo', 380, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9208, 'Torrubia del Castillo', 52, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9209, 'Tragacete', 419, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9210, 'Tresjuncos', 585, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9211, 'Tribaldos', 143, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9212, 'Uclés', 300, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9213, 'Uña', 162, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9214, 'Valdecolmenas, Los', 151, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9215, 'Valdemeca', 110, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9216, 'Valdemorillo de la Sierra', 100, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9217, 'Valdemoro-Sierra', 182, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9218, 'Valdeolivas', 340, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9219, 'Valdetórtola', 164, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9220, 'Valeras, Las', 1476, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9221, 'Valhermoso de la Fuente', 70, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9222, 'Valsalobre', 65, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9223, 'Valverde de Júcar', 1499, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9224, 'Valverdejo', 157, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9225, 'Vara de Rey', 783, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9226, 'Vega del Codorno', 257, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9227, 'Vellisca', 195, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9228, 'Villaconejos de Trabaque', 559, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9229, 'Villaescusa de Haro', 650, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9230, 'Villagarcía del Llano', 1024, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9231, 'Villalba de la Sierra', 585, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9232, 'Villalba del Rey', 769, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9233, 'Villalgordo del Marquesado', 168, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9234, 'Villalpardo', 1132, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9235, 'Villamayor de Santiago', 2957, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9236, 'Villanueva de Guadamajud ', 133, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9237, 'Villanueva de la Jara', 2452, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9238, 'Villar de Cañas', 480, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9239, 'Villar de Domingo García', 294, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9240, 'Villar de la Encina', 252, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9241, 'Villar de Olalla', 815, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9242, 'Villar del Humo', 502, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9243, 'Villar del Infantado', 50, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9244, 'Villar y Velasco', 151, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9245, 'Villarejo de Fuentes', 868, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9246, 'Villarejo de la Peñuela', 35, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9247, 'Villarejo-Periesteban', 570, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9248, 'Villares del Saz', 834, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9249, 'Villarrubio', 272, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9250, 'Villarta', 818, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9251, 'Villas de la Ventosa', 443, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9252, 'Villaverde y Pasaconsol', 438, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9253, 'Víllora', 270, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9254, 'Vindel', 30, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9255, 'Yémeda', 38, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9256, 'Zafra de Záncara', 252, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9257, 'Zafrilla', 139, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9258, 'Zarza de Tajo', 297, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9259, 'Zarzuela', 327, 16); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9260, 'Abánades', 119, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9261, 'Ablanque', 152, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9262, 'Adobes', 46, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9263, 'Alaminos', 100, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9264, 'Alarilla', 120, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9265, 'Albalate de Zorita', 1044, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9266, 'Albares', 534, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9267, 'Albendiego', 54, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9268, 'Alcocer', 316, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9269, 'Alcolea de las Peñas', 43, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9270, 'Alcolea del Pinar', 471, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9271, 'Alcoroches', 203, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9272, 'Aldeanueva de Guadalajara', 100, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9273, 'Algar de Mesa', 96, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9274, 'Algora', 131, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9275, 'Alhóndiga', 264, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9276, 'Alique', 34, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9277, 'Almadrones', 110, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9278, 'Almoguera', 823, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9279, 'Almonacid de Zorita', 990, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9280, 'Alocén', 145, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9281, 'Alovera', 1407, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9282, 'Alustante', 295, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9283, 'Angón', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9284, 'Anguita', 348, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9285, 'Anquela del Ducado', 93, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9286, 'Anquela del Pedregal', 27, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9287, 'Aranzueque', 379, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9288, 'Arbancón', 219, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9289, 'Arbeteta', 53, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9290, 'Argecilla', 145, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9291, 'Armallones', 55, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9292, 'Armuña de Tajuña', 120, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9293, 'Arroyo de las Fraguas', 27, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9294, 'Atanzón', 104, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9295, 'Atienza', 501, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9296, 'Auñón', 263, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9297, 'Azuqueca de Henares', 14376, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9298, 'Baides', 90, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9299, 'Baños de Tajo', 35, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9300, 'Bañuelos', 31, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9301, 'Barriopedro', 36, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9302, 'Berninches', 134, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9303, 'Bodera, La', 58, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9304, 'Brihuega', 3103, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9305, 'Budia', 315, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9306, 'Bujalaro', 97, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9307, 'Bustares', 121, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9308, 'Cabanillas del Campo', 1450, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9309, 'Campillo de Dueñas', 162, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9310, 'Campillo de Ranas', 134, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9311, 'Campisábalos', 74, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9312, 'Canredondo', 127, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9313, 'Cantalojas', 169, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9314, 'Cañizar', 116, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9315, 'Cardoso de la Sierra, El', 124, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9316, 'Casa de Uceda', 117, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9317, 'Casar, El', 1911, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9318, 'Casas de San Galindo', 39, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9319, 'Caspueñas', 81, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9320, 'Castejón de Henares', 117, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9321, 'Castellar de la Muela', 58, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9322, 'Castilforte', 59, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9323, 'Castilnuevo', 12, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9324, 'Cendejas de Enmedio', 135, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9325, 'Cendejas de la Torre', 114, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9326, 'Centenera', 82, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9327, 'Cifuentes', 2638, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9328, 'Cincovillas', 39, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9329, 'Ciruelas', 75, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9330, 'Ciruelos del Pinar', 67, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9331, 'Cobeta', 154, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9332, 'Cogollor', 58, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9333, 'Cogolludo', 609, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9334, 'Condemios de Abajo', 33, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9335, 'Condemios de Arriba', 176, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9336, 'Congostrina', 53, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9337, 'Copernal', 31, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9338, 'Corduente', 507, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9339, 'Cubillo de Uceda, El', 148, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9340, 'Checa', 443, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9341, 'Chequilla', 25, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9342, 'Chiloeches', 1135, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9343, 'Chillarón del Rey', 143, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9344, 'Driebes', 384, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9345, 'Durón', 123, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9346, 'Embid', 69, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9347, 'Escamilla', 121, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9348, 'Escariche', 219, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9349, 'Escopete', 67, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9350, 'Espinosa de Henares', 543, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9351, 'Esplegares', 85, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9352, 'Establés', 62, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9353, 'Estriégana', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9354, 'Fontanar', 850, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9355, 'Fuembellida', 19, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9356, 'Fuencemillán', 129, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9357, 'Fuentelahiguera de Albatages', 206, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9358, 'Fuentelencina', 220, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9359, 'Fuentelsaz', 156, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9360, 'Fuentelviejo', 111, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9361, 'Fuentenovilla', 222, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9362, 'Gajanejos', 107, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9363, 'Galápagos', 213, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9364, 'Galve de Sorbe', 181, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9365, 'Gascueña de Bornova', 42, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9366, 'Guadalajara', 68044, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9367, 'Henche', 51, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9368, 'Heras de Ayuso', 114, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9369, 'Herrería', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9370, 'Hiendelaencina', 138, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9371, 'Hijes', 28, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9372, 'Hita', 267, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9373, 'Hombrados', 55, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9374, 'Hontoba', 172, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9375, 'Horche', 1253, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9376, 'Hortezuela de Océn', 100, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9377, 'Huerce, La', 32, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9378, 'Huérmeces del Cerro', 75, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9379, 'Huertahernando', 75, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9380, 'Hueva', 138, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9381, 'Humanes', 1207, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9382, 'Illana', 751, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9383, 'Iniéstola', 24, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9384, 'Inviernas, Las', 98, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9385, 'Irueste', 77, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9386, 'Jadraque', 1207, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9387, 'Jirueque', 62, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9388, 'Ledanca', 174, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9389, 'Loranca de Tajuña', 291, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9390, 'Lupiana', 272, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9391, 'Luzaga', 128, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9392, 'Luzón', 93, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9393, 'Majaelrayo', 63, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9394, 'Málaga del Fresno', 225, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9395, 'Malaguilla', 181, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9396, 'Mandayona', 473, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9397, 'Mantiel', 97, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9398, 'Maranchón', 246, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9399, 'Masegoso de Tajuña', 114, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9400, 'Matarrubia', 60, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9401, 'Matillas', 255, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9402, 'Mazarete', 92, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9403, 'Mazuecos', 410, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9404, 'Medranda', 144, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9405, 'Megina', 96, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9406, 'Membrillera', 107, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9407, 'Miedes de Atienza', 119, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9408, 'Mierla, La', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9409, 'Milmarcos', 116, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9410, 'Millana', 114, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9411, 'Miñosa, La', 49, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9412, 'Mirabueno', 124, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9413, 'Miralrío', 98, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9414, 'Mochales', 144, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9415, 'Mohernando', 141, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9416, 'Molina de Aragón', 3580, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9417, 'Monasterio', 19, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9418, 'Mondéjar', 2150, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9419, 'Montarrón', 73, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9420, 'Moratilla de los Meleros', 121, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9421, 'Morenilla', 58, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9422, 'Muduex', 133, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9423, 'Navas de Jadraque, Las', 25, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9424, 'Negredo', 23, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9425, 'Ocentejo', 45, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9426, 'Olivar, El', 98, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9427, 'Olmeda de Cobeta', 91, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9428, 'Olmeda de Jadraque, La', 14, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9429, 'Ordial, El', 46, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9430, 'Orea', 335, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9431, 'Pálmaces de Jadraque', 68, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9432, 'Pardos', 63, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9433, 'Paredes de Sigüenza', 84, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9434, 'Pareja', 491, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9435, 'Pastrana', 1158, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9436, 'Pedregal, El', 118, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9437, 'Peñalén', 159, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9438, 'Peñalver', 270, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9439, 'Peralejos de las Truchas', 185, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9440, 'Peralveche', 143, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9441, 'Pinilla de Jadraque', 98, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9442, 'Pinilla de Molina', 25, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9443, 'Pioz', 280, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9444, 'Piqueras', 54, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9445, 'Pobo de Dueñas, El', 189, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9446, 'Poveda de la Sierra', 198, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9447, 'Pozo de Almoguera', 221, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9448, 'Pozo de Guadalajara', 370, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9449, 'Prádena de Atienza', 45, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9450, 'Prados Redondos', 94, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9451, 'Puebla de Beleña', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9452, 'Puebla de Valles', 74, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9453, 'Quer', 118, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9454, 'Rebollosa de Jadraque', 39, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9455, 'Recuenco, El', 129, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9456, 'Renera', 68, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9457, 'Retiendas', 46, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9458, 'Riba de Saelices', 199, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9459, 'Rillo de Gallo', 72, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9460, 'Riofrío del Llano', 84, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9461, 'Robledillo de Mohernando', 185, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9462, 'Robledo de Corpes', 80, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9463, 'Romanillos de Atienza', 71, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9464, 'Romanones', 153, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9465, 'Rueda de la Sierra', 79, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9466, 'Sacecorbo', 162, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9467, 'Sacedón', 1615, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9468, 'Saelices de la Sal', 77, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9469, 'Salmerón', 287, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9470, 'San Andrés del Congosto', 96, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9471, 'San Andrés del Rey', 47, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9472, 'Santiuste', 24, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9473, 'Saúca', 78, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9474, 'Sayatón', 206, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9475, 'Selas', 63, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9476, 'Semillas', 38, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9477, 'Setiles', 199, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9478, 'Sienes', 104, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9479, 'Sigüenza', 4801, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9480, 'Solanillos del Extremo', 133, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9481, 'Somolinos', 43, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9482, 'Sotillo, El', 58, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9483, 'Sotodosos', 70, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9484, 'Tamajón', 192, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9485, 'Taragudo', 35, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9486, 'Taravilla', 71, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9487, 'Tartanedo', 215, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9488, 'Tendilla', 398, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9489, 'Terzaga', 48, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9490, 'Tierzo', 41, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9491, 'Toba, La', 131, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9492, 'Tordelrábano', 18, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9493, 'Tordellego', 96, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9494, 'Tordesilos', 169, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9495, 'Torija', 360, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9496, 'Torre del Burgo', 56, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9497, 'Torrecuadrada de Molina', 24, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9498, 'Torrecuadradilla', 75, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9499, 'Torrejón del Rey', 740, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9500, 'Torremocha de Jadraque', 17, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9501, 'Torremocha del Campo', 374, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9502, 'Torremocha del Pinar', 78, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9503, 'Torremochuela', 10, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9504, 'Torrubia', 46, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9505, 'Tórtola de Henares', 403, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9506, 'Tortuera', 255, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9507, 'Tortuero', 43, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9508, 'Traid', 76, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9509, 'Trijueque', 493, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9510, 'Trillo', 1542, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9511, 'Uceda', 669, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9512, 'Ujados', 43, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9513, 'Utande', 67, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9514, 'Valdarachas', 30, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9515, 'Valdearenas', 60, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9516, 'Valdeavellano', 101, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9517, 'Valdeaveruelo', 220, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9518, 'Valdeconcha', 46, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9519, 'Valdegrudas', 63, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9520, 'Valdelcubo', 73, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9521, 'Valdenuño Fernández ', 140, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9522, 'Valdepeñas de la Sierra', 251, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9523, 'Valderrebollo', 39, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9524, 'Valdesotos', 47, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9525, 'Valfermoso de Tajuña', 70, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9526, 'Valhermoso', 45, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9527, 'Valtablado del Río', 18, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9528, 'Valverde de los Arroyos', 96, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9529, 'Viana de Jadraque', 67, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9530, 'Villanueva de Alcorón', 308, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9531, 'Villanueva de Argecilla', 44, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9532, 'Villanueva de la Torre', 225, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9533, 'Villares de Jadraque', 62, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9534, 'Villaseca de Henares', 67, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9535, 'Villaseca de Uceda', 64, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9536, 'Villel de Mesa', 303, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9537, 'Viñuelas', 116, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9538, 'Yebes', 62, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9539, 'Yebra', 585, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9540, 'Yélamos de Abajo', 105, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9541, 'Yélamos de Arriba', 139, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9542, 'Yunquera de Henares', 2036, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9543, 'Yunta, La', 186, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9544, 'Zaorejas', 203, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9545, 'Zarzuela de Jadraque', 31, 19); 
INSERT INTO localidades ( id_localidad, nombre, poblacion,
n_provincia ) VALUES ( 
9546, 'Zorita de los Canes', 102, 19); 

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10000','Aguadulce','2124','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10001','Alanís','1891','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10002','Albaida del Aljarafe','2798','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10003','Alcalá de Guadaíra','68452','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10004','Alcalá del Río','10479','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10005','Alcolea del Río','3370','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10006','La Algaba','14642','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10007','Algámitas','1341','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10008','Almadén de la Plata','1560','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10009','Almensilla','5438','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10010','Arahal','19150','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10011','Aznalcázar','4003','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10012','Aznalcóllar','6188','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10013','Badolatosa','3228','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10014','Benacazón','6103','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10015','Bollullos de la Mitación','8334','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10016','Bormujos','17670','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10017','Brenes','12245','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10018','Burguillos','5335','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10019','Las Cabezas de San Juan','16292','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10020','Camas','25780','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10021','La Campana','5467','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10022','Cantillana','10442','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10023','Cañada Rosal','3175','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10024','Carmona','27950','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10025','Carrión de los Céspedes','2412','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10026','Casariche','5552','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10027','Castilblanco de los Arroyos','5028','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10028','Castilleja de Guzmán','2687','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10029','Castilleja de la Cuesta','17075','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10030','Castilleja del Campo','633','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10031','El Castillo de las Guardas','1609','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10032','Cazalla de la Sierra','5047','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10033','Constantina','6612','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10034','Coria del Río','27528','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10035','Coripe','1456','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10036','El Coronil','5045','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10037','Los Corrales','4081','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10038','El Cuervo de Sevilla','8489','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10039','Dos Hermanas','120323','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10040','Ecija','40143','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10041','Espartinas','11838','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10042','Estepa','12547','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10043','Fuentes de Andalucía','7360','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10044','El Garrobo','786','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10045','Gelves','8828','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10046','Gerena','6180','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10047','Gilena','3948','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10048','Gines','12651','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10049','Guadalcanal','3001','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10050','Guillena','10654','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10051','Herrera','6521','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10052','Huévar del Aljarafe','2589','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10053','Isla Mayor','5810','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10054','La Lantejuela','3852','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10055','Lebrija','26046','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10056','Lora de Estepa','853','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10057','Lora del Río','19327','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10058','La Luisiana','4583','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10059','El Madroño','347','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10060','Mairena del Alcor','19924','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10061','Mairena del Aljarafe','39831','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10062','Marchena','19497','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10063','Marinaleda','2708','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10064','Martín de la Jara','2758','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10065','Los Molares','3042','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10066','Montellano','7085','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10067','Morón de la Frontera','28259','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10068','Las Navas de la Concepción','1778','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10069','Olivares','9182','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10070','Osuna','17813','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10071','Los Palacios y Villafranca','36350','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10072','Palomares del Río','6411','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10073','Paradas','7063','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10074','Pedrera','5240','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10075','El Pedroso','2272','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10076','Peñaflor','3764','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10077','Pilas','12988','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10078','Pruna','2955','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10079','La Puebla de Cazalla','11237','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10080','La Puebla de los Infantes','3299','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10081','La Puebla del Río','11951','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10082','El Real de la Jara','1639','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10083','La Rinconada','35097','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10084','La Roda de Andalucía','4419','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10085','El Ronquillo','1425','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10086','El Rubio','3569','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10087','Salteras','4897','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10088','San Juan de Aznalfarache','20249','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10089','San Nicolás del Puerto','681','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10090','Sanlúcar la Mayor','12485','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10091','Santiponce','7948','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10092','El Saucejo','4457','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10093','Sevilla','699759','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10094','Tocina','9316','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10095','Tomares','21921','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10096','Umbrete','7365','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10097','Utrera','50098','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10098','Valencina de la Concepción','7875','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10099','Villamanrique de la Condesa','4097','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10100','Villanueva de San Juan','1418','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10101','Villanueva del Ariscal','5946','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10102','Villanueva del Río y Minas','5286','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10103','Villaverde del Río','7178','41');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
 ('10104','El Viso del Alcor','18059','41');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10150','Abla','1514','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10151','Abrucena','1379','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10152','Adra','23742','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10153','Albánchez','697','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10154','Alboloduy','728','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10155','Albox','11166','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10156','Alcolea','957','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10157','Alcóntar','611','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10158','Alcudia de Monteagud','154','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10159','Alhabia','710','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10160','Alhama de Almería','3587','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10161','Alicún','272','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10162','Almería','186651','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10163','Almócita','158','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10164','Alsodux','176','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10165','Antas','3244','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10166','Arboleas','3904','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10167','Armuña de Almanzora','333','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10168','Bacares','308','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10169','Bayárcal','273','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10170','Bayarque','244','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10171','Bédar','910','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10172','Beires','128','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10173','Benahadux','3570','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10174','Benitagla','98','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10175','Benizalón','293','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10176','Bentarique','284','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10177','Berja','14508','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10178','Canjáyar','1544','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10179','Cantoria','3838','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10180','Carboneras','7570','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10181','Castro de Filabres','166','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10182','Chercos','306','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10183','Chirivel','1794','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10184','Cóbdar','202','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10185','Cuevas del Almanzora','11649','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10186','Dalías','3848','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10187','El Ejido','78105','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10188','Enix','484','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10189','Felix','626','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10190','Fines','2190','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10191','Fiñana','2426','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10192','Fondón','999','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10193','Gádor','3100','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10194','Los Gallardos','3429','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10195','Garrucha','7920','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10196','Gérgal','1093','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10197','Huécija','548','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10198','Huércal de Almería','12757','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10199','Huércal-Overa','16360','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10200','Illar','434','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10201','Instinción','510','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10202','Laroya','138','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10203','Laujar de Andarax','1804','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10204','Líjar','496','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10205','Lubrín','1768','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10206','Lucainena de las Torres','664','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10207','Lúcar','847','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10208','Macael','6149','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10209','María','1504','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10210','Mojácar','6507','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10211','La Mojonera','7872','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10212','Nacimiento','462','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10213','Níjar','25287','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10214','Ohanes','772','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10215','Olula de Castro','229','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10216','Olula del Río','6446','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10217','Oria','2777','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10218','Padules','536','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10219','Partaloa','746','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10220','Paterna del Río','491','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10221','Pechina','3514','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10222','Pulpí','7911','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10223','Purchena','1621','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10224','Rágol','376','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10225','Rioja','1407','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10226','Roquetas de Mar','81279','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10227','Santa Cruz de Marchena','241','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10228','Santa Fe de Mondújar','494','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10229','Senés','352','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10230','Serón','2456','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10231','Sierro','461','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10232','Somontín','543','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10233','Sorbas','2842','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10234','Suflí','280','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10235','Tabernas','3579','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10236','Taberno','1128','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10237','Tahal','441','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10238','Terque','472','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10239','Tíjola','3949','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10240','Las Tres Villas','682','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10241','Turre','3264','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10242','Turrillas','229','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10243','Uleila del Campo','1003','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10244','Urrácal','349','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10245','Velefique','327','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10246','Vélez-Blanco','2219','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10247','Vélez-Rubio','7062','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10248','Vera','12256','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10249','Viator','4448','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10250','Vícar','20743','4');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10251','Zurgena','2713','4');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10300','Alcalá de los Gazules','5673','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10301','Alcalá del Valle','5372','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10302','Algar','1588','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10303','Algeciras','114012','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10304','Algodonales','5726','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10305','Arcos de la Frontera','30508','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10306','Barbate','22582','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10307','Los Barrios ','21358','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10308','Benalup-Casas Viejas','7038','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10309','Benaocaz','701','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10310','Bornos','8131','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10311','El Bosque ','2035','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10312','Cádiz','128554','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10313','Castellar de la Frontera','2995','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10314','Chiclana de la Frontera','74261','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10315','Chipiona','18182','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10316','Conil de la Frontera','20301','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10317','Espera','3998','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10318','El Gastor ','1901','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10319','Grazalema','2218','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10320','Jerez de la Frontera','202687','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10321','Jimena de la Frontera','10025','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10322','La Línea de la Concepción ','63663','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10323','Medina-Sidonia','11320','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10324','Olvera','8643','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10325','Paterna de Rivera','5520','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10326','Prado del Rey','6002','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10327','Puerto de Santa María ','85117','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10328','Puerto Real','38974','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10329','Puerto Serrano','7005','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10330','Rota','27571','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10331','San Fernando','95026','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10332','San José del Valle','4289','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10333','San Roque','27635','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10334','Sanlúcar de Barrameda','63968','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10335','Setenil de las Bodegas','3007','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10336','Tarifa','17619','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10337','Torre Alháquime','875','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10338','Trebujena','6906','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10339','Ubrique','17162','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10340','Vejer de la Frontera','12828','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10341','Villaluenga del Rosario','476','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10342','Villamartín','12362','11');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10343','Zahara de la Sierra','1529','11');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10400','Adamuz','4469','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10401','Aguilar de la Frontera','13653','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10402','Alcaracejos','1500','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10403','Almedinilla','2510','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10404','Almodóvar del Río','7682','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10405','Añora','1532','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10406','Baena','21138','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10407','Belalcázar','3546','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10408','Belmez','3373','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10409','Benamejí','5095','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10410','Los Blázquez','688','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10411','Bujalance','7841','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10412','Cabra','21087','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10413','Cañete de las Torres','3182','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10414','Carcabuey','2752','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10415','Cardeña','1717','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10416','La Carlota','12303','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10417','El Carpio','4516','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10418','Castro del Río','8058','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10419','Conquista','485','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10420','Córdoba','323600','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10421','Doña Mencía','5002','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10422','Dos Torres','2601','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10423','Encinas Reales','2438','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10424','Espejo','3691','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10425','Espiel','2447','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10426','Fernán-Núñez','9555','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10427','Fuente la Lancha','417','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10428','Fuente Obejuna','5359','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10429','Fuente Palmera','10530','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10430','Fuente-Tójar','799','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10431','La Granjuela','526','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10432','Guadalcázar','1331','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10433','El Guijo','406','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10434','Hinojosa del Duque','7506','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10435','Hornachuelos','4669','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10436','Iznájar','4843','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10437','Lucena','40746','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10438','Luque','3306','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10439','Montalbán de Córdoba','4646','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10440','Montemayor','3984','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10441','Montilla','23650','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10442','Montoro','9752','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10443','Monturque','1985','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10444','Moriles','3989','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10445','Nueva Carteya','5567','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10446','Obejo','1824','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10447','Palenciana','1594','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10448','Palma del Río','20855','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10449','Pedro Abad','2924','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10450','Pedroche','1662','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10451','Peñarroya-Pueblonuevo','11918','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10452','Posadas','7352','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10453','Pozoblanco','17307','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10454','Priego de Córdoba','22999','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10455','Puente Genil','29093','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10456','La Rambla','7444','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10457','Rute','10269','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10458','San Sebastián de los Ballesteros','843','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10459','Santa Eufemia','982','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10460','Santaella','6022','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10461','Torrecampo','1307','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10462','Valenzuela','1355','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10463','Valsequillo','421','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10464','La Victoria','1981','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10465','Villa del Río','7443','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10466','Villafranca de Córdoba','4231','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10467','Villaharta','716','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10468','Villanueva de Córdoba','9720','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10469','Villanueva del Duque','1652','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10470','Villanueva del Rey','1217','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10471','Villaralto','1356','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10472','Villaviciosa de Córdoba','3587','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10473','El Viso','2824','14');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10474','Zuheros','812','14');


INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10500','Alamedilla','777','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10501','Albolote','16450','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10502','Albondón','915','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10503','Albuñán','441','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10504','Albuñol','6190','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10505','Albuñuelas','1063','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10506','Aldeire','730','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10507','Alfacar','5316','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10508','Algarinejo','3957','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10509','Alhama de Granada','6016','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10510','Alhendín','5755','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10511','Alicún de Ortega','555','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10512','Almegíjar','412','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10513','Almuñécar','27076','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10514','Alpujarra de la Sierra','1168','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10515','Alquife','823','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10516','Arenas del Rey','2157','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10517','Armilla','20115','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10518','Atarfe','14144','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10519','Baza','22718','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10520','Beas de Granada','1087','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10521','Beas de Guadix','379','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10522','Benalúa','3300','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10523','Benalúa de las Villas','1352','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10524','Benamaurel','2382','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10525','Bérchules','852','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10526','Bubión','373','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10527','Busquístar','334','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10528','Cacín','647','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10529','Cádiar','1671','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10530','Cájar','4318','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10531','La Calahorra','752','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10532','Calicasas','575','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10533','Campotéjar','1400','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10534','Caniles','4930','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10535','Cáñar','395','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10536','Capileira','560','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10537','Carataunas','203','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10538','Cástaras','273','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10539','Castilléjar','1600','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10540','Castril','2571','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10541','Cenes de la Vega','6363','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10542','Chauchina','4537','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10543','Chimeneas','1467','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10544','Churriana de la Vega','10228','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10545','Cijuela','2455','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10546','Cogollos de Guadix','710','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10547','Cogollos de la Vega','2068','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10548','Colomera','1588','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10549','Cortes de Baza','2167','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10550','Cortes y Graena','1067','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10551','Cuevas del Campo','2032','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10552','Cúllar','4859','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10553','Cúllar Vega','6212','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10554','Darro','1470','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10555','Dehesas de Guadix','531','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10556','Deifontes','2483','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10557','Diezma','830','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10558','Dílar','1638','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10559','Dólar','582','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10560','Dúdar','296','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10561','Dúrcal','7023','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10562','Escúzar','816','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10563','Ferreira','339','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10564','Fonelas','1126','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10565','Freila','1093','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10566','Fuente Vaqueros','4211','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10567','Las Gabias','14000','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10568','Galera','1135','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10569','Gobernador','312','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10570','Gójar','4964','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10571','Gor','953','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10572','Gorafe','506','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10573','Granada','236207','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10574','Guadahortuna','2154','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10575','Guadix','20307','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10576','Los Guájares','1328','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10577','Gualchos','2278','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10578','Güéjar Sierra','2986','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10579','Güevéjar','2234','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10580','Huélago','403','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10581','Huéneja','1218','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10582','Huéscar','8236','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10583','Huétor de Santillán','1798','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10584','Huétor Tájar','9467','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10585','Huétor Vega','10900','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10586','Íllora','10390','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10587','Ítrabo','1115','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10588','Iznalloz','7054','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10589','Jayena','1252','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10590','Jérez del Marquesado','1107','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10591','Jete','870','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10592','Jun','2377','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10593','Juviles','177','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10594','Láchar','2910','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10595','Lanjarón','3823','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10596','Lanteira','605','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10597','Lecrín','2336','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10598','Lentegí','333','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10599','Lobras','128','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10600','Loja','21341','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10601','Lugros','361','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10602','Lújar','497','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10603','La Malahá','1709','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10604','Maracena','19659','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10605','Marchal','388','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10606','Moclín','4091','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10607','Molvízar','3197','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10608','Monachil','6270','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10609','Montefrío','6400','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10610','Montejícar','2575','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10611','Montillana','1350','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10612','Moraleda de Zafayona','3093','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10613','Morelábor','854','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10614','Motril','58501','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10615','Murtas','742','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10616','Nevada','1194','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10617','Nigüelas','1139','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10618','Nívar','785','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10619','Ogíjares','12145','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10620','Orce','1383','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10621','Órgiva','5508','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10622','Otívar','1136','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10623','Otura','5883','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10624','El Padul','7961','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10625','Pampaneira','322','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10626','Pedro Martínez','1189','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10627','Peligros','10597','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10628','La Peza','1381','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10629','El Pinar','1067','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10630','Pinos Genil','1252','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10631','Pinos Puente','13540','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10632','Píñar','1358','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10633','Polícar','227','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10634','Polopos','1645','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10635','Pórtugos','408','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10636','Puebla de Don Fadrique','2554','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10637','Pulianas','4954','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10638','Purullena','2252','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10639','Quéntar','1046','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10640','Rubite','441','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10641','Salar','2803','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10642','Salobreña','12288','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10643','Santa Cruz del Comercio','557','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10644','Santa Fe','14934','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10645','Soportújar','257','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10646','Sorvilán','659','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10647','La Tahá','714','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10648','Torre-Cardela','1064','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10649','Torvizcón','799','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10650','Trevélez','835','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10651','Turón','330','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10652','Ugíjar','2599','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10653','El Valle','1174','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10654','Valle del Zalabí','2345','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10655','Válor','673','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10656','Vegas del Genil','7224','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10657','Vélez de Benaudalla','2892','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10658','Ventas de Huelma','715','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10659','Villamena','1025','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10660','Villanueva de las Torres','774','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10661','Villanueva Mesía','2174','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10662','Víznar','797','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10663','Zafarraya','2165','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10664','Zagra','1022','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10665','La Zubia','16941','18');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10666','Zújar','2834','18');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10700','Alájar','802','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10701','Aljaraque','17194','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10702','El Almendro','860','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10703','Almonaster la Real','1849','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10704','Almonte','21452','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10705','Alosno','4424','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10706','Aracena','7468','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10707','Aroche','3214','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10708','Arroyomolinos de León','1056','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10709','Ayamonte','19738','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10710','Beas','4320','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10711','Berrocal','376','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10712','Bollullos Par del Condado','13906','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10713','Bonares','5762','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10714','Cabezas Rubias','851','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10715','Cala','1310','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10716','Calañas','4337','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10717','Campillo, El','2258','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10718','Campofrío','818','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10719','Cañaveral de León','439','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10720','Cartaya','17424','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10721','Castaño del Robledo','222','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10722','Cerro de Andévalo, El','2503','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10723','Chucena','2097','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10724','Corteconcepción','615','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10725','Cortegana','5026','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10726','Cortelazor','311','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10727','Cumbres de Enmedio','58','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10728','Cumbres de San Bartolomé','465','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10729','Cumbres Mayores','1993','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10730','Encinasola','1584','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10731','Escacena del Campo','2145','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10732','Fuenteheridos','660','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10733','Galaroza','1617','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10734','Gibraleón','12120','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10735','Granada de Río-Tinto, La','207','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10736','Granado, El','598','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10737','Higuera de la Sierra','1425','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10738','Hinojales','338','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10739','Hinojos','3807','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10740','Huelva','148027','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10741','Isla Cristina','20982','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10742','Jabugo','2403','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10743','Lepe','25041','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10744','Linares de la Sierra','305','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10745','Lucena del Puerto','2862','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10746','Manzanilla','2361','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10747','Marines, Los','349','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10748','Minas de Riotinto','4263','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10749','Moguer','19032','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10750','Nava, La','330','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10751','Nerva','5994','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10752','Niebla','4102','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10753','Palma del Condado, La','10340','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10754','Palos de la Frontera','8964','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10755','Paterna del Campo','3764','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10756','Paymogo','1306','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10757','Puebla de Guzmán','3199','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10758','Puerto Moral','273','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10759','Punta Umbría','14515','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10760','Rociana del Condado','7341','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10761','Rosal de la Frontera','1846','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10762','San Bartolomé de la Torre','3446','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10763','San Juan del Puerto','7798','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10764','San Silvestre de Guzmán','754','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10765','Sanlúcar de Guadiana','370','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10766','Santa Ana la Real','519','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10767','Santa Bárbara de Casa','1188','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10768','Santa Olalla del Cala','2164','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10769','Trigueros','7477','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10770','Valdelarco','240','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10771','Valverde del Camino','12665','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10772','Villablanca','2732','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10773','Villalba del Alcor','3527','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10774','Villanueva de las Cruces','421','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10775','Villanueva de los Castillejos','2783','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10776','Villarrasa','2149','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10777','Zalamea la Real','3461','21');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10778','Zufre','973','21');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10800','Albanchez de Mágina','1264','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10801','Alcalá la Real','22524','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10802','Alcaudete','11015','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10803','Aldeaquemada','552','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10804','Andújar','38979','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10805','Arjona','5826','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10806','Arjonilla','3876','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10807','Arquillos','1937','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10808','Arroyo del Ojanco','2490','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10809','Baeza','16197','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10810','Bailén','18798','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10811','Baños de la Encina','2713','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10812','Beas de Segura','5586','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10813','Bedmar y Garcíez','3137','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10814','Begíjar','3148','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10815','Bélmez de la Moraleda','1868','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10816','Benatae','563','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10817','Cabra del Santo Cristo','2110','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10818','Cambil','2967','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10819','Campillo de Arenas','1977','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10820','Canena','2096','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10821','Carboneros','670','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10822','Cárcheles','1491','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10823','La Carolina','15649','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10824','Castellar','3614','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10825','Castillo de Locubín','4832','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10826','Cazalilla','840','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10827','Cazorla','8170','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10828','Chiclana de Segura','1194','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10829','Chilluévar','1604','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10830','Escañuela','958','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10831','Espelúy','759','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10832','Frailes','1817','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10833','Fuensanta de Martos','3300','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10834','Fuerte del Rey','1315','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10835','Génave','626','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10836','La Guardia de Jaén','3928','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10837','Guarromán','2927','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10838','Higuera de Calatrava','661','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10839','Hinojares','425','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10840','Hornos','679','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10841','Huelma','6233','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10842','Huesa','2693','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10843','Ibros','3160','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10844','La Iruela','1985','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10845','Iznatoraf','1126','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10846','Jabalquinto','2393','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10847','Jaén','116417','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10848','Jamilena','3523','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10849','Jimena','1493','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10850','Jódar','12119','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10851','Lahiguera','1892','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10852','Larva','475','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10853','Linares','61340','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10854','Lopera','4028','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10855','Lupión','975','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10856','Mancha Real','10754','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10857','Marmolejo','7600','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10858','Martos','24520','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10859','Mengíbar','9378','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10860','Montizón','1917','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10861','Navas de San Juan','5053','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10862','Noalejo','2069','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10863','Orcera','2138','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10864','Peal de Becerro','5551','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10865','Pegalajar','3145','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10866','Porcuna','6939','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10867','Pozo Alcón','5464','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10868','Puente de Génave','2174','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10869','La Puerta de Segura','2631','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10870','Quesada','5944','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10871','Rus','3817','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10872','Sabiote','4247','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10873','Santa Elena','1003','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10874','Santiago de Calatrava','867','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10875','Santiago-Pontones','3884','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10876','Santisteban del Puerto','4918','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10877','Santo Tomé','2429','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10878','Segura de la Sierra','1986','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10879','Siles','2465','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10880','Sorihuela del Guadalimar','1270','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10881','Torreblascopedro','2812','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10882','Torredelcampo','14565','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10883','Torredonjimeno','14138','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10884','Torreperogil','7367','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10885','Torres','1645','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10886','Torres de Albánchez','972','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10887','Úbeda','34462','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10888','Valdepeñas de Jaén','4222','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10889','Vilches','5008','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10890','Villacarrillo','11293','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10891','Villanueva de la Reina','3423','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10892','Villanueva del Arzobispo','8673','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10893','Villardompardo','1140','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10894','Villares (Los)','5661','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10895','Villarrodrigo','496','23');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10896','Villatorres','4464','23');


INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10900','Alameda','5426','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10901','Alcaucín','2469','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10902','Alfarnate','1362','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10903','Alfarnatejo','516','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10904','Algarrobo','6144','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10905','Algatocín','929','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10906','Alhaurín de la Torre','33567','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10907','Alhaurín el Grande','22785','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10908','Almáchar','1896','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10909','Almargen','2153','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10910','Almogía','4316','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10911','Álora','13436','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10912','Alozaina','2238','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10913','Alpandeire','278','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10914','Antequera','45037','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10915','Árchez','437','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10916','Archidona','8868','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10917','Ardales','2638','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10918','Arenas','1421','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10919','Arriate','4062','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10920','Atajate','146','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10921','Benadalid','261','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10922','Benahavís','3844','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10923','Benalauría','508','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10924','Benalmádena','55960','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10925','Benamargosa','1642','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10926','Benamocarra','3080','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10927','Benaoján','1629','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10928','Benarrabá','570','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10929','El Borge','1046','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10930','El Burgo','2027','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10931','Campillos','8543','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10932','Canillas de Aceituno','2320','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10933','Canillas de Albaida','902','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10934','Cañete la Real','2024','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10935','Carratraca','923','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10936','Cartajima','242','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10937','Cártama','20436','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10938','Casabermeja','3509','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10939','Casarabonela','2767','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10940','Casares','4797','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10941','Coín','21484','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10942','Colmenar','3625','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10943','Comares','1570','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10944','Cómpeta','3794','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10945','Cortes de la Frontera','3762','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10946','Cuevas Bajas','1463','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10947','Cuevas de San Marcos','4142','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10948','Cuevas del Becerro','1820','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10949','Cútar','655','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10950','Estepona','62848','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10951','Faraján','296','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10952','Frigiliana','2978','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10953','Fuengirola','68646','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10954','Fuente de Piedra','2582','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10955','Gaucín','1983','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10956','Genalguacil','526','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10957','Guaro','2230','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10958','Humilladero','3215','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10959','Igualeja','991','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10960','Istán','1386','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10961','Iznate','918','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10962','Jimera de Líbar','453','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10963','Jubrique','803','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10964','Júzcar','205','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10965','La Viñuela','1973','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10966','Macharaviaya','492','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10967','Málaga','566447','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10968','Manilva','13258','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10969','Marbella','130546','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10970','Mijas','70473','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10971','Moclinejo','1264','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10972','Mollina','4963','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10973','Monda','2342','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10974','Montejaque','1004','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10975','Nerja','21621','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10976','Ojén','2668','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10977','Parauta','242','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10978','Periana','3600','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10979','Pizarra','8652','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10980','Pujerra','334','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10981','Rincón de la Victoria','37145','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10982','Riogordo','3090','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10983','Ronda','36532','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10984','Salares','210','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10985','Sayalonga','1532','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10986','Sedella','694','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10987','Sierra de Yeguas','3552','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10988','Teba','4253','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10989','Tolox','2375','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10990','Torremolinos','63077','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10991','Torrox','16395','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10992','Totalán','724','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10993','Valle de Abdalajís','2908','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10994','Vélez-Málaga','72842','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10995','Villanueva de Algaidas','4602','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10996','Villanueva de la Concepción','3352','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10997','Villanueva de Tapia','1671','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10998','Villanueva del Rosario','3613','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('10999','Villanueva del Trabuco','5385','29');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11000','Yunquera','3286','29');


INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11100','Adsubia','668','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11101','Agost','4766','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11102','Agres','623','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11103','Aguas de Busot','951','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11104','Albatera','11102','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11105','Alcalalí','1395','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11106','Alcocer de Planes','216','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11107','Alcolecha','219','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11108','Alcoy','60700','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11109','Alfafara','430','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11110','Alfaz del Pi','19913','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11111','Algorfa','3645','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11112','Algueña','1515','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11113','Alicante','322673','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11114','Almoradí','17945','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11115','Almudaina','127','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11116','Alquería de Aznar','455','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11117','Altea','22648','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11118','Aspe','19246','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11119','Balones','163','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11120','Bañeres','7193','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11121','Benasau','210','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11122','Benejama','1828','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11123','Benejúzar','5419','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11124','Benferri','1601','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11125','Beniarbeig','1729','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11126','Beniardá','220','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11127','Beniarrés','1335','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11128','Benidoleig','1139','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11129','Benidorm','69058','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11130','Benifallim','125','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11131','Benifato','188','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11132','Benichembla','570','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11133','Benijófar','3707','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11134','Benilloba','843','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11135','Benillup','101','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11136','Benimantell','466','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11137','Benimarfull','441','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11138','Benimasot','131','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11139','Benimeli','429','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11140','Benisa','12690','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11141','Benitachell','4773','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11142','Biar','3693','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11143','Bigastro','6588','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11144','Bolulla','399','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11145','Busot','2847','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11146','Callosa de Ensarriá','8008','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11147','Callosa de Segura','17423','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11148','Calpe','27768','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11149','Campello','25055','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11150','Campo de Mirra','414','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11151','Cañada','1203','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11152','Castalla','9673','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11153','Castell de Castells','517','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11154','Catral','8105','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11155','Cocentaina','13209','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11156','Confrides','303','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11157','Cox','6414','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11158','Crevillente','28172','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11159','Cuatretondeta','138','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11160','Daya Nueva','1761','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11161','Daya Vieja','459','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11162','Denia','42704','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11163','Dolores','6954','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11164','Elche','228348','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11165','Elda','50289','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11166','Facheca','119','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11167','Famorca','53','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11168','Finestrat','4945','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11169','Formentera del Segura','3518','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11170','Gata de Gorgos','5969','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11171','Gayanes','376','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11172','Gorga','248','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11173','Granja de Rocamora','2271','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11174','Guadalest','215','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11175','Guardamar del Segura','15132','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11176','Hondón de las Nieves','2501','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11177','Hondón de los Frailes','1231','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11178','Ibi','23609','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11179','Jacarilla','1957','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11180','Jalón','3002','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11181','Jávea','29923','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11182','Jijona','7553','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11183','Llíber','1001','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11184','Lorcha','751','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11185','Millena','187','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11186','Monforte del Cid','6497','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11187','Monóvar','12923','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11188','Los Montesinos','4284','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11189','Murla','574','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11190','Muro de Alcoy','8611','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11191','Muchamiel','20364','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11192','Novelda','26525','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11193','La Nucía','15519','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11194','Ondara','6217','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11195','Onil','7622','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11196','Orba','2503','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11197','Orcheta','758','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11198','Orihuela','85426','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11199','Parcent','1061','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11200','Pedreguer','7097','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11201','Pego','10878','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11202','Penáguila','330','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11203','Petrel','39109','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11204','Pilar de la Horadada','20338','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11205','Pinoso','7442','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11206','Planes','803','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11207','Els Poblets','3078','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11208','Polop','3869','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11209','Rafal','3901','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11210','Ráfol de Almunia','635','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11211','Redován','6982','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11212','Relleu','1090','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11213','Rojales','17543','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11214','La Romana','2467','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11215','Sagra','457','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11216','Salinas','1522','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11217','San Fulgencio','10583','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11218','San Isidro','1561','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11219','San Juan de Alicante','20997','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11220','San Miguel de Salinas','7625','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11221','San Vicente del Raspeig','49341','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11222','Sanet y Negrals','727','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11223','Santa Pola','29221','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11224','Sax','9716','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11225','Sella','639','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11226','Senija','658','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11227','Tárbena','758','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11228','Teulada','13281','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11229','Tibi','1625','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11230','Tollos','65','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11231','Tormos','339','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11232','Torremanzanas','745','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11233','Torrevieja','94006','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11234','Vall de Alcalá','191','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11235','Vall de Ebo','297','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11236','Vall de Gallinera','672','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11237','Vall de Laguart','937','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11238','Vergel','4688','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11239','Villajoyosa','30550','3');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11240','Villena','34523','3');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11500','Adzaneta','1448','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11501','Ahín','145','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11502','Albocácer','1446','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11503','Alcalá de Chivert','7884','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11504','Alcora','11068','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11505','Alcudia de Veo','212','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11506','Alfondeguilla','886','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11507','Algimia de Almonacid','321','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11508','Almazora','23891','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11509','Almedíjar','256','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11510','Almenara','5705','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11511','Alquerías del Niño Perdido','4142','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11512','Altura','3784','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11513','Arañuel','205','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11514','Ares del Maestre','217','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11515','Argelita','105','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11516','Artana','1987','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11517','Ayódar','236','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11518','Azuébar','343','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11519','Barracas','179','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11520','Bejís','452','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11521','Benafer','179','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11522','Benafigos','171','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11523','Benasal','1332','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11524','Benicarló','26381','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11525','Benicasim','17870','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11526','Benlloch','1156','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11527','Bechí','5860','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11528','Borriol','4874','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11529','Burriana','34235','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11530','Cabanes','3088','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11531','Cálig','2170','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11532','Canet lo Roig','897','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11533','Castell de Cabres','18','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11534','Castellfort','235','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11535','Castellnovo','1080','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11536','Castellón de la Plana','177924','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11537','Castillo de Villamalefa','88','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11538','Catí','861','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11539','Caudiel','724','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11540','Cervera del Maestre','748','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11541','Cinctorres','504','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11542','Cirat','256','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11543','Cortes de Arenoso','355','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11544','Costur','579','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11545','Cuevas de Vinromá','2093','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11546','Culla','650','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11547','Chert','927','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11548','Chilches','2821','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11549','Chodos','122','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11550','Chóvar','354','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11551','Eslida','908','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11552','Espadilla','70','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11553','Fanzara','447','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11554','Figueroles','582','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11555','Forcall','540','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11556','Fuente la Reina','51','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11557','Fuentes de Ayódar','112','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11558','Gaibiel','213','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11559','Geldo','702','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11560','Herbés','65','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11561','Higueras','54','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11562','La Jana','830','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11563','Jérica','1642','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11564','Lucena del Cid','1587','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11565','Ludiente','169','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11566','La Llosa','935','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11567','La Mata','195','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11568','Matet','125','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11569','Moncófar','5797','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11570','Montán','386','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11571','Montanejos','618','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11572','Morella','2854','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11573','Navajas','733','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11574','Nules','13318','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11575','Olocau del Rey','135','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11576','Onda','25362','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11577','Oropesa del Mar','11245','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11578','Palanques','34','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11579','Pavías','57','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11580','Peñíscola','7560','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11581','Pina de Montalgrao','151','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11582','Portell de Morella','258','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11583','Puebla de Arenoso','211','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11584','Puebla de Benifasar','299','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11585','Puebla-Tornesa','980','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11586','Ribesalbes','1363','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11587','Rosell','1217','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11588','Sacañet','100','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11589','Salsadella','855','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11590','San Rafael del Río','551','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11591','San Juan de Moró','2774','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11592','San Jorge','982','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11593','San Mateo','2162','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11594','Santa Magdalena de Pulpis','874','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11595','Sarratella','88','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11596','Segorbe','9131','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11597','Sierra Engarcerán','1037','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11598','Soneja','1476','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11599','Sot de Ferrer','471','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11600','Sueras','643','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11601','Tales','879','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11602','Teresa','303','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11603','Tírig','562','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11604','Todolella','143','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11605','Toga','118','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11606','Torás','250','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11607','El Toro','309','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11608','Torralba del Pinar','68','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11609','Torre de Embesora','184','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11610','Torre Endoménech','243','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11611','Torreblanca','6192','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11612','Torrechiva','98','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11613','Traiguera','1704','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11614','Useras','1008','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11615','Vall dAlba','2906','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11616','Vall de Almonacid','275','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11617','Vall de Uxó','32617','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11618','Vallat','79','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11619','Vallibona','98','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11620','Vilafamés','1992','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11621','Villafranca del Cid','2520','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11622','Villahermosa del Río','451','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11623','Villamalur','90','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11624','Villanueva de Alcolea','703','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11625','Villanueva de Viver','74','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11626','Villar de Canes','176','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11627','Villarreal','50626','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11628','Villavieja','3418','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11629','Villores','53','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11630','Vinaroz','27912','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11631','Vistabella del Maestrazgo','426','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11632','Viver','1703','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11633','Zorita del Maestrazgo','152','12');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11634','Zucaina','170','12');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11700','Ademuz','1463','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11701','Ador','1346','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11702','Adzaneta de Albaida','1285','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11703','Agullent','2364','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11704','Alacuás','30177','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11705','Albaida','6269','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11706','Albal','14840','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11707','Albalat de la Ribera','3429','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11708','Albalat de Taronchers','1070','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11709','Albalat dels Sorells','3708','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11710','Alberique','10330','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11711','Alborache','1038','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11712','Alboraya','21582','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11713','Albuixech','3646','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11714','Alcácer','8716','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11715','Alcántara de Júcar','1397','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11716','Alcira','43038','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11717','Alcublas','829','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11718','Alcudia de Carlet','11105','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11719','Alcudia de Crespíns','4929','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11720','Aldaya','28138','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11721','Alfafar','20321','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11722','Alfahuir','437','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11723','Alfara de Algimia','515','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11724','Alfara del Patriarca','2858','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11725','Alfarp','1423','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11726','Alfarrasí','1297','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11727','Algar de Palancia','542','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11728','Algemesí','27272','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11729','Algimia de Alfara','1039','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11730','Alginet','12605','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11731','Almácera','6928','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11732','Almiserat','291','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11733','Almoines','2086','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11734','Almusafes','7967','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11735','Alpuente','828','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11736','Alquería de la Condesa','1506','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11737','Andilla','325','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11738','Anna','2718','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11739','Antella','1526','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11740','Aras de los Olmos','393','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11741','Ayelo de Malferit','4532','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11742','Ayelo de Rugat','197','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11743','Ayora','5489','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11744','Barcheta','1650','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11745','Bárig','1423','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11746','Bélgida','701','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11747','Bellreguart','4349','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11748','Bellús','387','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11749','Benagéber','159','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11750','Benaguacil','10374','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11751','Benavites','624','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11752','Benegida','670','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11753','Benetúser','14283','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11754','Beniarjó','1641','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11755','Beniatjar','260','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11756','Benicolet','577','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11757','Benicull de Júcar','904','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11758','Benifairó de la Valldigna','1695','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11759','Benifairó de los Valles','2011','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11760','Benifayó','12204','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11761','Beniflá','375','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11762','Benigánim','6150','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11763','Benimodo','2141','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11764','Benimuslem','605','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11765','Beniparrell','1896','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11766','Benirredrá','1586','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11767','Benisanó','2064','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11768','Benisoda','361','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11769','Benisuera','199','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11770','Bétera','19491','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11771','Bicorp','603','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11772','Bocairente','4444','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11773','Bolbaite','1507','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11774','Bonrepós y Mirambell','3047','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11775','Bufali','203','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11776','Bugarra','826','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11777','Buñol','9720','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11778','Burjasot','37402','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11779','Calles','449','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11780','Camporrobles','1405','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11781','Canals','13771','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11782','Canet de Berenguer','5060','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11783','Carcagente','21695','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11784','Cárcer','2095','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11785','Carlet','15189','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11786','Carrícola','94','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11787','Casas Altas','178','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11788','Casas Bajas','244','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11789','Casinos','2560','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11790','Castellón de Rugat','2391','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11791','Castellonet','173','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11792','Castielfabib','244','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11793','Catadau','2619','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11794','Catarroja','25650','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11795','Caudete de las Fuentes','773','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11796','Cerdá','348','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11797','Chella','2776','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11798','Chelva','1839','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11799','Chera','664','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11800','Cheste','7872','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11801','Chirivella','30212','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11802','Chiva','12890','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11803','Chulilla','786','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11804','Cofrentes','978','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11805','Corbera','3249','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11806','Cortes de Pallás','962','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11807','Cotes','373','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11808','Cuart de les Valls','1100','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11809','Cuart de Poblet','25340','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11810','Cuartell','1431','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11811','Cuatretonda','2513','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11812','Cullera','23406','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11813','Daimuz','2862','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11814','Domeño','688','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11815','Dos Aguas','439','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11816','La Eliana','16349','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11817','Emperador','467','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11818','Enguera','5762','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11819','Énova','1011','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11820','Estivella','1252','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11821','Estubeny','142','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11822','Faura','3183','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11823','Favareta','2048','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11824','Fontanares','1014','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11825','Fortaleny','991','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11826','Foyos','6358','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11827','Fuente Encarroz','3899','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11828','Fuente la Higuera','2237','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11829','Fuenterrobles','731','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11830','Gabarda','1171','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11831','Gandía','77421','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11832','Gátova','466','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11833','Genovés','2731','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11834','Gestalgar','761','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11835','Gilet','2561','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11836','Godella','12993','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11837','Godelleta','3038','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11838','La Granja de la Costera','339','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11839','Guadasequies','430','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11840','Guadasuar','5943','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11841','Guardamar','343','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11842','Higueruelas','531','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11843','Jalance','1059','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11844','Jaraco','5871','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11845','Jarafuel','837','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11846','Játiva','28597','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11847','Jeresa','2141','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11848','Liria','21638','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11849','Llanera de Ranes','1077','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11850','Llaurí','1318','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11851','Llombay','2600','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11852','Llosa de Ranes','3748','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11853','Loriguilla','1256','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11854','Losa del Obispo','523','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11855','Luchente','2571','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11856','Lugar Nuevo de Fenollet','855','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11857','Lugar Nuevo de la Corona','120','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11858','Lugar Nuevo de San Jerónimo','581','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11859','Macastre','1299','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11860','Manises','29778','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11861','Manuel','2570','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11862','Marines','1566','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11863','Masalavés','1652','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11864','Masalfasar','1880','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11865','Masamagrell','14568','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11866','Masanasa','8325','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11867','Meliana','9827','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11868','Millares','517','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11869','Miramar','1984','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11870','Mislata','43336','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11871','Mogente','4646','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11872','Moncada','21109','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11873','Monserrat','5452','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11874','Montaverner','1833','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11875','Montesa','1425','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11876','Montichelvo','626','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11877','Montroy','2500','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11878','Museros','4834','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11879','Náquera','4814','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11880','Navarrés','3068','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11881','Novelé','774','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11882','Oliva','27374','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11883','Ollería','8106','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11884','Olocau','1338','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11885','Onteniente','36695','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11886','Otos','520','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11887','Paiporta','22374','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11888','Palma de Gandía','1850','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11889','Palomar','555','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11890','Paterna','59043','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11891','Pedralba','2637','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11892','Petrés','951','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11893','Picaña','10543','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11894','Picasent','18556','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11895','Piles','2664','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11896','Pinet','190','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11897','Poliñá de Júcar','2404','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11898','Potríes','911','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11899','Puebla de Farnáls','6752','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11900','Puebla de San Miguel','107','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11901','Puebla de Vallbona','18790','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11902','Puebla del Duc','2561','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11903','Puebla Larga','4420','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11904','Puig','8197','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11905','Puzol','17947','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11906','Quesa','740','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11907','Rafelbuñol','7103','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11908','Rafelcofer','1505','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11909','Rafelguaraf','2453','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11910','Ráfol de Salem','421','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11911','Real de Gandía','2110','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11912','Real de Montroy','2150','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11913','Requena','20440','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11914','Ribarroja del Turia','19083','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11915','Riola','1824','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11916','Rocafort','6259','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11917','Rotglá y Corbera','1120','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11918','Rótova','1320','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11919','Rugat','174','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11920','Sagunto','63359','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11921','Salem','482','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11922','San Antonio de Benagéber','4985','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11923','San Juan de Énova','413','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11924','Sedaví','9575','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11925','Segart','139','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11926','Sellent','454','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11927','Sempere','38','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11928','Señera','1141','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11929','Serra','2838','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11930','Siete Aguas','1349','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11931','Silla','18597','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11932','Simat de Valldigna','3419','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11933','Sinarcas','1201','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11934','Sollana','4708','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11935','Sot de Chera','428','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11936','Sueca','28112','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11937','Sumacárcel','1296','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11938','Tabernes Blanques','9270','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11939','Tabernes de Valldigna','18004','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11940','Teresa de Cofrentes','698','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11941','Terrateig','343','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11942','Titaguas','541','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11943','Torrebaja','418','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11944','Torrella','158','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11945','Torrente','75131','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11946','Torres Torres','518','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11947','Tous','1152','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11948','Tuéjar','1300','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11949','Turís','6053','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11950','Utiel','12053','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11951','Valencia','797654','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11952','Vallada','3409','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11953','Vallanca','172','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11954','Vallés','133','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11955','Venta del Moro','1455','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11956','Villamarchante','7761','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11957','Villalonga','4141','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11958','Villanueva de Castellón','7493','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11959','Villar del Arzobispo','3828','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11960','Villargordo del Cabriel','664','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11961','Vinalesa','2783','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11962','Yátova','2123','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11963','La Yesa','264','46');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('11964','Zarra','543','46');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12000','Abanilla','6642','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12001','Abarán','12987','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12002','Águilas','34101','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12003','Albudeite','1381','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12004','Alcantarilla','40458','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12005','Los Alcázares','15171','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12006','Aledo','1055','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12007','Alguazas','8855','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12008','Alhama','19417','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12009','Archena','18280','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12010','Beniel','10581','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12011','Blanca','6226','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12012','Bullas','12374','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12013','Calasparra','10569','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12014','Campos del Río','2212','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12015','Caravaca de la Cruz','26240','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12016','Cartagena','210376','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12017','Cehegín','16188','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12018','Ceutí','9759','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12019','Cieza','35144','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12020','Fortuna','9274','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12021','Fuente Álamo de Murcia','14925','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12022','Jumilla','25348','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12023','Librilla','4455','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12024','Lorca','90924','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12025','Lorquí','6904','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12026','Mazarrón','34351','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12027','Molina de Segura','62407','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12028','Moratalla','8424','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12029','Mula','16942','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12030','Murcia','430571','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12031','Ojós','604','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12032','Pliego','4032','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12033','Puerto Lumbreras','13612','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12034','Ricote','1546','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12035','San Javier','30653','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12036','San Pedro del Pinatar','23272','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12037','Santomera','14948','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12038','Torre Pacheco','30351','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12039','Las Torres de Cotillas','20456','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12040','Totana','28976','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12041','Ulea','956','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12042','La Unión','17107','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12043','Villanueva del Segura','2186','30');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12044','Yecla','34869','30');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12100','Adeje','41002','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12101','Agulo','1187','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12102','Alajeró','2146','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12103','Arafo','5346','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12104','Arico','7698','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12105','Arona','75903','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12106','Barlovento','2387','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12107','Breña Alta','7279','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12108','Breña Baja','4952','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12109','Buenavista del Norte','5227','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12110','Candelaria','23394','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12111','Fasnia','2805','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12112','Frontera','3941','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12113','Fuencaliente de la Palma','1925','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12114','Garachico','5450','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12115','Garafía','1829','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12116','Granadilla de Abona','38886','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12117','La Guancha','5447','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12118','Guía de Isora','20004','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12119','Güímar','17253','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12120','Hermigua','2178','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12121','Icod de los Vinos','24087','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12122','Los Llanos de Aridane','20525','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12123','La Matanza de Acentejo','8245','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12124','La Orotava','40945','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12125','El Paso','7698','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12126','El Pinar de El Hierro','1847','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12127','Puerto de la Cruz','31804','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12128','Puntagorda','1955','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12129','Puntallana','2423','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12130','Los Realejos','37385','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12131','El Rosario','17064','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12132','San Andrés y Sauces','4972','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12133','San Cristóbal de La Laguna','148375','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12134','San Juan de la Rambla','5053','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12135','San Miguel de Abona','15037','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12136','San Sebastián de la Gomera','8744','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12137','Santa Cruz de La Palma','17132','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12138','Santa Cruz de Tenerife','221956','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12139','Santa Úrsula','13835','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12140','Santiago del Teide','11825','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12141','El Sauzal','8947','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12142','Los Silos','5307','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12143','Tacoronte','23369','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12144','El Tanque','3031','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12145','Tazacorte','5828','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12146','Tegueste','10613','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12147','Tijarafe','2744','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12148','Valle Gran Rey','5220','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12149','Vallehermoso','3147','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12150','Valverde','4938','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12151','La Victoria de Acentejo','8909','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12152','Vilaflor','1851','38');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12153','Villa de Mazo','4880','38');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12200','Agaete','5765','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12201','Agüimes','28224','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12202','La Aldea de San Nicolás','8403','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12203','Antigua','9715','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12204','Arrecife','59040','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12205','Artenara','1301','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12206','Arucas','35542','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12207','Betancuria','715','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12208','Firgas','7424','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12209','Gáldar','23951','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12210','Haría','5188','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12211','Ingenio','28809','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12212','Mogán','20391','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12213','Moya','8071','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12214','La Oliva','21354','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12215','Pájara','20283','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12216','Las Palmas de Gran Canaria','381123','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12217','Puerto del Rosario','35293','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12218','San Bartolomé','18300','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12219','San Bartolomé de Tirajana','51260','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12220','Santa Brígida','19042','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12221','Santa Lucía de Tirajana','61325','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12222','Santa María de Guía de Gran Canaria','14146','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12223','Teguise','18798','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12224','Tejeda','2206','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12225','Telde','99201','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12226','Teror','12818','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12227','Tías','19487','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12228','Tinajo','5746','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12229','Tuineje','13569','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12230','Valleseco','4022','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12231','Valsequillo de Gran Canaria','8987','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12232','Vega de San Mateo','7586','35');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12233','Yaiza','12947','35');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12300','Alaró','5018','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12301','Alayor','8972','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12302','Alcudia','17435','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12303','Algaida','4527','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12304','Andraitx','10939','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12305','Ariany','799','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12306','Artá','6802','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12307','Bañalbufar','591','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12308','Binisalem','6773','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12309','Búger','1062','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12310','Buñola','5792','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12311','Calviá','47934','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12312','Campanet','2562','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12313','Campos','8759','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12314','Capdepera','10885','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12315','Ciudadela','28017','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12316','Consell','3252','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12317','Costitx','967','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12318','Deyá','718','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12319','Escorca','290','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12320','Esporlas','4640','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12321','Estellenchs','382','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12322','Felanitx','17443','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12323','Ferrerías','4563','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12324','Formentera','8442','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12325','Fornalutx','722','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12326','Ibiza','44114','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12327','Inca','28306','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12328','Lloret de Vista Alegre','1182','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12329','Lloseta','5493','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12330','Llubí','2128','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12331','Lluchmayor','33222','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12332','Mahón','28284','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12333','Manacor','37963','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12334','Mancor del Valle','1074','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12335','María de la Salud','2095','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12336','Marratxí','31120','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12337','Mercadal','4838','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12338','Es Migjorn Gran','1518','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12339','Montuiri','2619','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12340','Muro','6741','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12341','Palma de Mallorca','383107','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12342','Petra','2787','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12343','Pollensa','16570','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12344','Porreras','5052','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12345','La Puebla','12141','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12346','Puigpuñent','1702','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12347','Ses Salines','4755','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12348','San Antonio Abad','19889','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12349','San José','20136','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12350','San Juan','1866','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12351','San Juan Bautista','5198','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12352','San Lorenzo de Cardessar','8095','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12353','San Luis','6414','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12354','Sencelles','2903','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12355','Santa Eugenia','1489','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12356','Santa Eulalia del Río','28361','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12357','Santa Margarita','10608','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12358','Santa Maria del Camí','5497','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12359','Santañy','11720','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12360','Selva','3313','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12361','Sineu','3248','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12362','Sóller','13194','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12363','Son Servera','11392','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12364','Valldemosa','1976','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12365','Villacarlos','7629','7');
INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
('12366','Villafranca de Bonany','2625','7');

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
(12400,'Ceuta',78320,51);

INSERT INTO localidades ( id_localidad, nombre, poblacion,n_provincia ) VALUES
(12402,'Melilla',71339,52);


commit;
 

set foreign_key_checks=1;