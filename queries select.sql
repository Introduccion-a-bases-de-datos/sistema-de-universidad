select
id,
nombre,
numeroSemestres,
creditos
from programa
where numeroSemestres >= 10
order by creditos asc, numeroSemestres desc;

select * from Estudiante
where 
fechaInscripcion >= '2024-01-01'
and
fechaInscripcion <= '2024-01-31'

select * from Estudiante
where 
fechaInscripcion between '2024-01-01' and '2024-01-31'

select * from Estudiante
where 
year(fechaInscripcion) = 2024
and
month(fechaInscripcion) = 1


select top 2
month(fechaInscripcion) as mes,
count(*) as cantidadEstudiantes
from Estudiante
group by month(fechaInscripcion)
order by count(*) asc