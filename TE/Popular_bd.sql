USE te;

INSERT INTO Curso (Identificador, Nome) VALUES
(1, 'Ciência da Computação'),
(2, 'Engenharia Elétrica'),
(3, 'Matemática');

INSERT INTO Departamento (Identificador, Nome) VALUES
(1, 'Administração'),
(2, 'Biblioteca'),
(3, 'TI');

INSERT INTO Autor (Identificador, Nome, Nacionalidade) VALUES
(1, 'J.K. Rowling', 'Britânica'),
(2, 'George R.R. Martin', 'Americano'),
(3, 'J.R.R. Tolkien', 'Britânico');

INSERT INTO Editora (Id, Nome, Endereco) VALUES
(1, 'Editora A', 'Rua das Flores, 123'),
(2, 'Editora B', 'Avenida Brasil, 456'),
(3, 'Editora C', 'Praça da Liberdade, 789');

INSERT INTO Funcionario (Identificador, Nome, Departamento) VALUES
(1, 'Maria Silva', 1),
(2, 'João Souza', 2),
(3, 'Ana Pereira', 3);

INSERT INTO Aluno (Identificador, Nome, Curso, DataNascimento) VALUES
(1, 'Pedro Almeida', 1, '2000-01-15'),
(2, 'Carla Mendes', 2, '1999-05-20'),
(3, 'Luiz Fernando', 3, '2001-03-30');

INSERT INTO Livro (Id, Titulo, Autor, Ano, Editora, Registrador) VALUES
(1, 'Harry Potter e a Pedra Filosofal', 1, 1997, 1, 1),
(2, 'A Guerra dos Tronos', 2, 1996, 2, 2),
(3, 'O Senhor dos Anéis', 3, 1954, 3, 3);

INSERT INTO Emprestimo (Id, Aluno, Livro, DataEmprestimo, DataDevolucao) VALUES
(1, 1, 1, '2024-06-01', '2024-06-15'),
(2, 2, 2, '2024-06-05', '2024-06-20'),
(3, 3, 3, '2024-06-10', '2024-06-25');

INSERT INTO Registro (Livro, Funcionario) VALUES
(1, 1),
(2, 2),
(3, 3);
