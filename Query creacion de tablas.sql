
create table Programa(
id int identity(1,1) primary key,
numeroSemestres int null,
creditos float null,
nombre varchar(100) not null,
area varchar(100) not null
);


create table Estudiante(
id int identity(1,1) primary key,
nombre varchar(100),
cedula varchar(100),
fechaInscripcion datetime,
correo varchar(100),
celular varchar(10),
programaId int,
constraint 
fk_estudiante_programa 
foreign key (programaId) 
references Programa(id)
);


create table Estadisticos(
id int identity(1,1) primary key,
promedio float,
semestre int,
materiasPerdidas int,
estudianteId int not null unique,
constraint fk_estadistico_estudiante 
foreign key (estudianteId) 
references Estudiante(id)
);

create table Profesor(
id int identity(1,1) primary key,
nombre varchar(100),
correo varchar(100) not null unique,
cedula varchar(20) not null unique
)

create table ProgramaProfesor(
idPrograma int,
idProfesor int,

primary key(idPrograma, idProfesor),

constraint fk_pp_programa 
foreign key (idPrograma)
references Programa(id),

constraint fk_pp_profesor 
foreign key (idProfesor)
references Profesor(id),
)

