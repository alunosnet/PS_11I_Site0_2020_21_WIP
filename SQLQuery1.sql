create table Faltas(
	id int identity primary key,
	dia_falta date,
	id_trabalhador int references Trabalhadores(id) 
		on delete cascade,
	tipo varchar(1)
)