CREATE DATABASE receitas;
-- DROP DATABASE receitas;
USE receitas;


CREATE TABLE receitas (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
ingredientes TEXT NOT NULL,
instrucoes TEXT NOT NULL,
image TEXT NOT NULL,
link TEXT NOT NULL);

CREATE TABLE receitasVegetarianas (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
ingredientes TEXT NOT NULL,
instrucoes TEXT NOT NULL
);

SELECT id, nome FROM RECEITAS ORDER BY nome;

ALTER TABLE receitas
ADD COLUMN tipo TEXT NOT NULL;

UPDATE receitas
SET tipo = 'Vegetariana'
WHERE id = 11;





INSERT INTO receitas (nome, ingredientes, instrucoes, image, link, tipo)
SELECT nome, ingredientes, instrucoes, image, link, 'Veg'
FROM receitasVegetarianas;

INSERT INTO receitas (nome, ingredientes, instrucoes) VALUES
('Salada de Quinoa',
 'Quinoa, pepino, tomate, pimentão, cebola roxa, azeite de oliva, limão, sal, pimenta',
 '1. Cozinhe a quinoa de acordo com as instruções da embalagem.
  2. Corte os vegetais em pedaços pequenos.
  3. Misture todos os ingredientes em uma tigela.
  4. Regue com azeite de oliva e suco de limão.
  5. Tempere com sal e pimenta a gosto.');
  
  INSERT INTO receitasVeganas (nome, ingredientes, instrucoes) VALUES
('Curry de Grão-de-Bico',
 'Grão-de-bico, cebola, alho, tomate, leite de coco, curry em pó, coentro, sal, pimenta',
 '1. Refogue a cebola e o alho em uma panela com azeite.
  2. Adicione o tomate e cozinhe até amolecer.
  3. Misture o grão-de-bico, o leite de coco e o curry em pó.
  4. Cozinhe até que o grão-de-bico esteja macio.
  5. Tempere com sal e pimenta, e sirva com coentro por cima.');
  
  INSERT INTO receitasVeganas (nome, ingredientes, instrucoes) VALUES
('Sopa de Lentilhas',
 'Lentilhas, cenoura, aipo, cebola, alho, tomate, cominho, caldo de vegetais, sal, pimenta',
 '1. Refogue a cebola, alho, cenoura e aipo em uma panela com azeite.
  2. Adicione as lentilhas, o tomate e o cominho.
  3. Despeje o caldo de vegetais e cozinhe até as lentilhas ficarem macias.
  4. Tempere com sal e pimenta a gosto.
  5. Sirva quente com um pouco de coentro picado.');
  
  INSERT INTO receitasVegetarianas (nome, ingredientes, instrucoes) VALUES
('Lasanha de Espinafre',
 'Massa de lasanha, espinafre, molho de tomate, queijo vegano, alho, cebola, azeite de oliva, sal, pimenta',
 '1. Cozinhe a massa de lasanha de acordo com as instruções da embalagem.
  2. Refogue o espinafre, alho e cebola no azeite de oliva.
  3. Monte a lasanha em camadas, intercalando massa, espinafre, molho de tomate e queijo vegano.
  4. Asse no forno a 180°C por 25-30 minutos.
  5. Sirva quente.');
  
  INSERT INTO receitasVeganas (nome, ingredientes, instrucoes) VALUES
('Tacos de Lentilhas',
 'Lentilhas, tortillas de milho, abacate, cebola roxa, coentro, molho de pimenta, sal, limão',
 '1. Cozinhe as lentilhas até ficarem macias.
  2. Misture as lentilhas cozidas com cebola roxa picada, abacate em cubos, coentro e molho de pimenta.
  3. Tempere com sal e suco de limão.
  4. Monte os tacos com a mistura de lentilhas dentro das tortillas de milho.');
 
 INSERT INTO receitasVegetarianas (nome, ingredientes, instrucoes) VALUES
('Hambúrguer de Grão-de-Bico',
 'Grão-de-bico, cebola, alho, cominho, coentro, farinha de rosca, ovo, sal, pimenta',
 '1. Em um processador de alimentos, misture grão-de-bico, cebola, alho, cominho e coentro até obter uma pasta.
  2. Transfira a pasta para uma tigela e adicione farinha de rosca, ovo, sal e pimenta.
  3. Modele hambúrgueres e grelhe em uma frigideira com um pouco de azeite até dourar dos dois lados.');
  
  INSERT INTO receitasVegetarianas (nome, ingredientes, instrucoes) VALUES
('Salada Caesar Vegetariana',
 'Alface romana, croutons, queijo parmesão ralado, molho Caesar vegano, suco de limão',
 '1. Lave e rasgue a alface romana em pedaços.
  2. Adicione croutons e queijo parmesão ralado.
  3. Regue a salada com molho Caesar vegano e suco de limão.
  4. Misture bem e sirva.');
  
  INSERT INTO receitasVegetarianas (nome, ingredientes, instrucoes) VALUES
('Wrap de Falafel',
 'Falafel, tortillas, pepino, tomate, iogurte de soja, hortelã, cominho, alho, sal, pimenta',
 '1. Aqueça as tortillas e reserve.\n
  2. Monte os wraps com falafel, pepino, tomate e molho de iogurte vegano.\n
  3. Tempere com hortelã picada, cominho, alho picado, sal e pimenta a gosto.');
  
  UPDATE receitasVegetarianas
  SET instrucoes = '1. Aqueça as tortillas e reserve.
  2. Monte os wraps com falafel, pepino, tomate e molho de iogurte vegano.
  3. Tempere com hortelã picada, cominho, alho picado, sal e pimenta a gosto.'
  WHERE id = 4;
  
 SELECT * FROM receitasVegetarianas;

SELECT link FROM receitasVeganas;

SELECT CONCAT(link, '?id=' , id) AS linkID FROM receitasVeganas;

ALTER TABLE receitasVeganas
ADD COLUMN link TEXT NOT NULL;

ALTER TABLE receitasVegetarianas
ADD COLUMN link TEXT NOT NULL;

UPDATE receitasVeganas
SET link = CONCAT_WS('', REPLACE(nome, ' ', ''), '.php?id=', id)
WHERE id = 4;

-- ATE receitasVegetarianas
--  link = CONCAT(

UPDATE receitas
SET link = CONCAT ('detalhes_receita.php?id=', id)
WHERE id = 11;

SELECT * FROM receitas;

UPDATE receitasVegetarianas
SET link = CONCAT_WS('', REPLACE(nome, ' ', ''), '.php?id=', id)
WHERE id = 4;

UPDATE receitasVegetarianas
SET image = 'https://d1uz88p17r663j.cloudfront.net/original/13759c366960fb006f3a901ab34ef8ff_lasanha-espinafre-receitas-nestle.jpg'
WHERE id = 1;

UPDATE receitasVegetarianas
SET image = 'https://anamariabraga.globo.com/wp-content/uploads/2019/01/hamburguer-de-grao-de-bico.jpg'
WHERE id = 2;

UPDATE receitasVegetarianas
SET image = 'https://marolacomcarambola.com.br/wp-content/uploads/2019/08/Receita-de-Salada-Caesar-Caesar-Salad-1.jpg'
WHERE id = 3;

UPDATE receitasVegetarianas
SET image = 'https://feed.continente.pt/media/yzvp1isv/wraps-de-falafel.png?anchor=center&mode=crop&width=1200&height=630&rnd=132979485975330000'
WHERE id = 4;

UPDATE receitasVeganas
SET image = 'https://www.sabornamesa.com.br/media/k2/items/cache/c5a85806ade29373c6dcf52919855e7e_XL.jpg'
WHERE id = 1;

UPDATE receitasVeganas
SET image = 'https://www.plantte.com/wp-content/uploads/2023/06/curry-de-grao-de-bico-receita.jpg'
WHERE id = 2;

UPDATE receitasVeganas
SET image = 'https://www.receiteria.com.br/wp-content/uploads/sopa-de-lentilha-01.jpg'
WHERE id = 3;

UPDATE receitasVeganas
SET image = 'https://www.espiritooutdoor.com/wp-content/uploads/2016/03/espiritooutdoor.com_tacosveganos.jpeg'
WHERE id = 4;

SELECT * FROM receitasVeganas
UNION
SELECT * FROM receitasVegetarianas



