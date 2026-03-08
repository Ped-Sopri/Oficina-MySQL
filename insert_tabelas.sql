-- insert dados oficina
use oficina;

INSERT INTO clients (Company_name, Fname_C, Lname_C, CPF_client, CNPJ_client, Address) VALUES
(NULL,'Joao','Silva','12345678901',NULL,'Rua A 123'),
(NULL,'Maria','Souza','98765432100',NULL,'Av B 456'),
(NULL,'Carlos','Pereira','45678912345',NULL,'Rua C 789'),
(NULL,'Ana','Costa','32165498700',NULL,'Rua D 222'),
('Transportes Brasil',NULL,NULL,NULL,'12345678000199','Av Industrial 900'),
('Logistica Sul',NULL,NULL,NULL,'99887766000155','Rua Empresas 450');
select * from clients;

INSERT INTO vehicle (idClient, vehicle_type, vehicle_name, vehicle_mark, Plate, Situation) VALUES
(1,'carro','Civic','Honda','ABC1234','Em Orçamento'),
(2,'moto','CB500','Honda','DEF5678','Em Espera'),
(3,'carro','Corolla','Toyota','GHI9012','Em Conserto'),
(4,'perua','Palio','Fiat','JKL3456','Em Espera'),
(5,'caminhão','FH','Volvo','MNO7890','Em Orçamento'),
(6,'caminhonete','Hilux','Toyota','PQR4321','Em Conserto');
select * from vehicle;

INSERT INTO mechanic (Fname_M, Lname_M) VALUES
('Pedro','Oliveira'),
('Lucas','Santos'),
('Marcos','Almeida'),
('Fernanda','Silva');
select * from mechanic;

INSERT INTO product (Pname, Ptamanho, Pweight, Pmarck, Pprice) VALUES
('Filtro de óleo','10cm',0.5,'Bosch',35.90),
('Pastilha de freio','15cm',1.2,'Brembo',120.50),
('Amortecedor','40cm',3.5,'Monroe',350.00),
('Correia dentada','30cm',0.8,'Gates',95.00),
('Bateria 60Ah','25cm',12.0,'Moura',450.00),
('Velas de ignição','5cm',0.2,'NGK',60.00);
select * from product;

INSERT INTO budget (budgetDate, idMechanic, idvehicle, budget_description) VALUES
('2026-03-08',1,1,'Troca de filtro e revisão geral'),
('2026-03-08',2,5,'Troca de correia dentada e velas');
select * from budget;

INSERT INTO budget_products (idbudget, idProduct, quantity) VALUES
(1,1,1),
(1,6,4),
(2,4,1),
(2,1,2);

INSERT INTO fix (fixDate, idMechanic, idvehicle, fix_observations) VALUES
('2026-03-09',3,3,'Troca de amortecedor e alinhamento'),
('2026-03-09',2,6,'Substituição de bateria e revisão elétrica');
