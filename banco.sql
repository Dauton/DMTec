create table clientes (
	cod			int primary key identity(1,1),
	nome		varchar(50),
	nasc		int,
	email		varchar(50),
	fisica		char(14),
	juridica	char(18)
)

select * from clientes

