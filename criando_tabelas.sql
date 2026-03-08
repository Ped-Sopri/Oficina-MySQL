create database oficina;

use oficina;
-- tabelas
-- tabela do cliente
create table clients(
	idClient int auto_increment primary key,
    Company_name varchar(50),
    Fname_C varchar(10),
    Lname_C varchar(20),
    CPF_client char(11),
    CNPJ_client char(14),
    Address varchar(30),
    constraint unique_cpf_client unique (CPF_client),
    constraint unique_cnpj_client unique (CNPJ_client)
);

-- tabela carros
create table vehicle(
	idvehicle int auto_increment primary key,
    idClient int,
    vehicle_type enum('carro','moto','caminhão','perua','caminhonete') not null default 'carro',
    vehicle_name varchar(10) not null, 
    vehicle_mark varchar(20) not null,
    Plate char(7) not null,
    Situation enum('Em Espera','Em Orçamento','Aguardado Pagamento','Em Conserto','Finalizado') not null default 'Em Espera',
    constraint unique_vehicle_plate unique (Plate),
    
    FOREIGN KEY (idClient) REFERENCES clients(idClient)
);

-- Tabela de peças
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(30) not null,
    Ptamanho varchar(10),
    Pweight decimal(8,2),
    Pmarck varchar(20) not null,
    Pprice decimal(8,2) not null
);

-- tabela de mecanicos
create table mechanic(
	idMechanic int auto_increment primary key,
    Fname_M varchar(10) not null,
    Lname_M varchar(20) not null
);

-- tabela orçamento
create table budget(
	idbudget int auto_increment primary key,
    budgetDate date not null,
    idMechanic int,
    idvehicle int,
    budget_description text not null,
    
	FOREIGN KEY (idvehicle) REFERENCES vehicle(idvehicle),
	FOREIGN KEY (idMechanic) REFERENCES mechanic(idMechanic)
);
-- função para que o orçamento só entre na hora correta
DELIMITER //
CREATE TRIGGER check_vehicle_situation_before_budget
BEFORE INSERT ON budget
FOR EACH ROW
BEGIN
    DECLARE vehicleStatus VARCHAR(50);

    SELECT Situation
    INTO vehicleStatus
    FROM vehicle
    WHERE idvehicle = NEW.idvehicle;

    IF vehicleStatus <> 'Em Orçamento' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Só é permitido criar orçamento quando o veículo estiver em Orçamento';
    END IF;
END //
DELIMITER ;

-- tabela de pagamento
CREATE TABLE budget_products(
    idprices INT AUTO_INCREMENT PRIMARY KEY,
    idbudget INT,
    idProduct INT,
    quantity INT,
     
    FOREIGN KEY (idbudget) REFERENCES budget(idbudget),
    FOREIGN KEY (idProduct) REFERENCES product(idProduct)
);

-- tabela conserto
create table fix(
	idfix INT AUTO_INCREMENT PRIMARY KEY,
    fixDate DATE not null,
    idMechanic INT,
    idvehicle int,
    fix_observations text not null,
    
	FOREIGN KEY (idvehicle) REFERENCES vehicle(idvehicle),
	FOREIGN KEY (idMechanic) REFERENCES mechanic(idMechanic)
);

DELIMITER //
CREATE TRIGGER check_vehicle_situation_before_fix
BEFORE INSERT ON fix
FOR EACH ROW
BEGIN
    DECLARE vehicleStatus VARCHAR(50);

    SELECT Situation
    INTO vehicleStatus
    FROM vehicle
    WHERE idvehicle = NEW.idvehicle;

    IF vehicleStatus <> 'Em Conserto' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Só é permitido começar o conserto quando o veículo estiver em Conserto';
    END IF;
END //
DELIMITER ;