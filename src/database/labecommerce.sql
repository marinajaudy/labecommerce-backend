-- Active: 1673889528617@@127.0.0.1@3306

-- ## a) Criação da tabela de **pessoas usuárias**
-- - nome da tabela: **users**
-- - colunas da tabela:
--   - id (TEXT, PK, único e obrigatório)
--   - email (TEXT, único e obrigatório)
--   - password (TEXT e obrigatório)

CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

DROP TABLE users;

-- ## Get All Users
SELECT * FROM users;

--- retorna o resultado ordenado pela coluna email em ordem crescente
SELECT * FROM users
ORDER BY email ASC;


-- ## Create User
INSERT INTO users (id, email, password)
VALUES
("u01", "marina@email.com", "123456789"),
("u02", "alex@email.com", "1011121314"),
("u03", "andrea@email.com", "1562756528");

--## Delete User by id
DELETE FROM users
WHERE id = 'u02';

--## Edit User by id
UPDATE users
SET password = "jgfjhfjhfjhfg"
WHERE id = "u03";


-- ## a) Criação da tabela de **produtos**
-- - nome da tabela: **products**
-- - colunas da tabela:
--   - id (TEXT, PK, único e obrigatório)
--   - name (TEXT e obrigatório)
--   - price (REAL e obrigatório)
--   - category (TEXT e obrigatório)

CREATE TABLE products(
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL
);

--## Get All Products
SELECT * FROM products;

-- ## Get All Products versão 1
-- - retorna o resultado ordenado pela coluna price em ordem crescente
-- - limite o resultado em 20 iniciando pelo primeiro item
SELECT * FROM products
ORDER BY price ASC
LIMIT 20 OFFSET 0;

-- ## Get All Products versão 2
-- - mocke um intervalo de preços, por exemplo entre 100.00 e 300.00
-- - retorna os produtos com preços dentro do intervalo mockado em ordem crescente
SELECT * FROM products
WHERE price >= 100 AND price <= 300
ORDER BY price ASC;


--## Search Product by name
SELECT * FROM products
WHERE name LIKE '%Cr%';

DROP TABLE products;

--## Create Product
INSERT INTO products (id, name, price, category)
VALUES ('p05', 'Mixer', 150.90, 'Eletrônicos');
-- ("p01", "Camiseta", 39.90, "Roupas e calçados"),
-- ("p02", "Ipad", 3999.90, "Eletrônicos"),
-- ("p03", "Pulseira", 19.90, "Acessórios");

--## Get Products by id
SELECT * FROM products
WHERE id = 'p02';

--## Delete Product by id
DELETE FROM products
WHERE id = 'p05';

--## Edit Product by id
UPDATE products
SET 
    name = 'meia', 
    price = 9.90, 
    category = 'Roupas e calçados'
WHERE id = 'p04'