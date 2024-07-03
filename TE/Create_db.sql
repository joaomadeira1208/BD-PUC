CREATE DATABASE TE;
USE TE;

CREATE TABLE Curso (
    Identificador INT PRIMARY KEY,
    Nome VARCHAR(100)
);
CREATE TABLE Aluno (
    Identificador INT PRIMARY KEY,
    Nome VARCHAR(100),
    Curso INT,
    DataNascimento DATE,
    FOREIGN KEY (Curso) REFERENCES Curso(Identificador)
);
CREATE TABLE Autor (
    Identificador INT PRIMARY KEY,
    Nome VARCHAR(100),
    Nacionalidade VARCHAR(100)
);
CREATE TABLE Editora (
    Id INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(200)
);
CREATE TABLE Departamento (
    Identificador INT PRIMARY KEY,
    Nome VARCHAR(100)
);
CREATE TABLE Funcionario (
    Identificador INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento INT,
    FOREIGN KEY (Departamento) REFERENCES Departamento(Identificador)
);
CREATE TABLE Livro (
    Id INT PRIMARY KEY,
    Titulo VARCHAR(200),
    Autor INT,
    Ano INT,
    Editora INT,
    Registrador INT,
    FOREIGN KEY (Autor) REFERENCES Autor(Identificador),
    FOREIGN KEY (Editora) REFERENCES Editora(Id),
    FOREIGN KEY (Registrador) REFERENCES Funcionario(Identificador)
);
CREATE TABLE Emprestimo (
    Id INT PRIMARY KEY,
    Aluno INT,
    Livro INT,
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (Aluno) REFERENCES Aluno(Identificador),
    FOREIGN KEY (Livro) REFERENCES Livro(Id)
);
CREATE TABLE Registro (
    Livro INT,
    Funcionario INT,
    PRIMARY KEY (Livro, Funcionario),
    FOREIGN KEY (Livro) REFERENCES Livro(Id),
    FOREIGN KEY (Funcionario) REFERENCES Funcionario(Identificador)
);

