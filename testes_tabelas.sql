-- Queries de teste
use oficina;

-- veículos de cada PF
SELECT c.Fname_C, c.Lname_C, v.vehicle_name, v.vehicle_mark
FROM clients as c
JOIN vehicle as v ON c.idClient = v.idClient
WHERE c.CPF_client IS NOT NULL;

-- veículos de cada Empresa
SELECT c.Company_name, v.vehicle_name, v.vehicle_mark
FROM clients as c
JOIN vehicle as v ON c.idClient = v.idClient
WHERE c.CNPJ_client IS NOT NULL;

-- peças usadas em cada orçamento
SELECT b.idbudget, p.Pname, bp.quantity
FROM budget_products as bp
JOIN product as p ON bp.idProduct = p.idProduct
JOIN budget as b ON bp.idbudget = b.idbudget;

-- mecânico responsável pelo conserto
SELECT m.Fname_M, m.Lname_M, f.fixDate, f.fix_observations
FROM fix f
JOIN mechanic m ON f.idMechanic = m.idMechanic;