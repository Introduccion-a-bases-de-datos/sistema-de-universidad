insert into Programa(
nombre, area, creditos, numeroSemestres
) values 
('Derecho', 'Leyes', 150, 11),
('Medicina', 'Ciencias de salud', 190, 8),
('Ingeniería de sistemas', 'Ingeniería', 190, 10),
('Diseño Gráfico', 'Diseño', 190, 12);



update Programa
set 
creditos = 180,
numeroSemestres = 11
where nombre = 'Derecho';


--delete from Programa
--where nombre = 'Derecho';

insert into Estudiante(
nombre, cedula, fechaInscripcion, correo, celular, programaId
) values
('Daniel', '321315', '2024-05-25', 'daniel@test.com', '3564', 18),
('María', '6468', '2024-02-10', 'maria@test.com', '3564345', 19),
('Juan', '2345', '2024-01-31', 'juan@test.com', '456456', 20),
('Pedro', '56745', '2024-01-28', 'pedro@test.com', '456456', 20),
('Miguel', '98987', '2024-02-10', 'miguel@test.com', '54456', 20),
('Ana', '23434', '2024-04-10', 'ana@test.com', '23434', 21),
('Natalia', '85648', '2024-03-10', 'natalia@test.com', '98764', 21)
