create TABLE aluno (
	nome varchar,
	Nusp int,
	idade int,
	DataNasc timestamp,
	CidadeOrigem varchar,
	nota decimal(3, 2) CHECK (nota >= 0 AND nota <=10)
)