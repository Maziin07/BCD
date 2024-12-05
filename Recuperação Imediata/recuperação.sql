DROP database db_farmacia;

CREATE DATABASE db_farmacia;

USE db_farmacia;

-- criando tabela cliente

CREATE TABLE Produto (
 cod_produto INT PRIMARY KEY AUTO_INCREMENT,
 nome_produto VARCHAR(45), 
 qtd_produto INT, 
 valor_produto INT
); 

-- criando tabela farmacia

CREATE TABLE Farmacia (
CNPJ_farmacia INT,
end_farmacia VARCHAR(45),
nome_farmacia VARCHAR(45),
tel_farmacia VARCHAR(45)
);

-- criando tabela farmaceutico

CREATE TABLE Farmaceutico (
RG_Farmaceutico INT,
nome_farmaceutico VARCHAR(45),
especializacao VARCHAR(45),
salario INT
);

INSERT INTO Produto (nome_produto, qtd_produto, valor_produto) VALUES
('Paracetamol 500mg', 100, 5.99),
('Dipirona Sódica 500mg', 150, 4.50),
('Amoxicilina 500mg', 80, 12.90),
('Loratadina 10mg', 200, 8.75),
('Omeprazol 20mg', 120, 15.40),
('Nimesulida 100mg', 90, 7.20),
('Ibuprofeno 600mg', 110, 6.80),
('Enalapril 10mg', 75, 22.50),
('Atorvastatina 40mg', 60, 35.00),
('Metformina 500mg', 130, 9.90);

INSERT INTO Farmacia (end_farmacia, nome_farmacia, tel_farmacia) VALUES 
('Farmácia Central', 'Rua Principal, 123 - Centro, Cidade', '(12) 3456-7890'),
('Drogaria São João', 'Avenida Brasil, 456 - Bairro Novo, Cidade', '(12) 9876-5432'),
('Pague Menos', 'Rua das Flores, 789 - Jardim das Flores, Cidade', '(12) 1234-5678'),
('Drogaria Popular', 'Avenida dos Imigrantes, 1011 - Vila Nova, Cidade', '(12) 9999-8888'),
('Farmácia de Manipulação', 'Rua da Paz, 1212 - Centro, Cidade', '(12) 3333-4444'),
('Drogaria Econômica', 'Avenida dos Estados, 1313 - Bairro do Sol, Cidade', '(12) 5555-6666'),
('Farmácia 24 Horas', 'Rodovia BR-101, km 10 - Zona Rural, Cidade', '(12) 7777-8888'),
('Drogaria Moderna', 'Rua dos Esportes, 1414 - Jardim América, Cidade', '(12) 9999-7777'),
('Farmácia do Bairro', 'Avenida das Palmeiras, 1515 - Vila Verde, Cidade', '(12) 8888-9999'),
('Drogaria Saúde', 'Rua da Liberdade, 1616 - Centro, Cidade', '(12) 6666-5555');

INSERT INTO Farmaceutico (nome_farmaceutico, especialização, salario) VALUES
('Ana Silva', 'Farmacologia Clínica', 5000),
('Pedro Gomes', 'Farmácia Manipulada', 4500),
('João "Doutor" Souza', 'Farmacocinética', 5500),
('Carla Pereira', 'Comprimidos', 4800),
('Lucas Almeida', 'Farmacovigilância', 0),
('Rafaela Costa', 'Fitoterapia', 4200),
('Bruno Oliveira', 'Farmácia Hospitalar', 5800),
('Amanda Rodrigues', 'Análises Clínicas', 4900),
('Antônio Carlos da Silva Junior', 'Farmacologia', 5300),
('Juliana Ferreira', 'Farmacologia Clínica e Toxicologia', 6000);

ALTER TABLE Farmacia
ADD COLUMN cidade varchar (10);
