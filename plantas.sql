-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2022 às 14:29
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `plantas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Texto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`, `Texto`) VALUES
(1, 'Girassois', NULL),
(2, 'Rosas', NULL),
(3, 'Cactus', NULL),
(4, 'Samambaias', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plantas`
--

CREATE TABLE `plantas` (
  `PlantaID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Cuidados` longtext NOT NULL,
  `Imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plantas`
--

INSERT INTO `plantas` (`PlantaID`, `Nome`, `CategoriaID`, `Cuidados`, `Imagem`) VALUES
(1, 'Cacto de amendoim', 1, 'Não se adapta muito bem em lugares muito frios (abaixo de 15°C), ele floresce no verão, entre novembro e fevereiro. O melhor lugar pra colocar é perto das janelas e com bastante luminosidade, para que a mesma consiga florescer. O melhor solo para esse tipo de cacto é drenado e com uma porção de terra calcária. Regue e deixe o solo secar por completo para regar a mesma novamente. Para ele florescer você deve deixar ela por bastante tempo no sol e oferecer pouca agua.', 'cactoamendoim.webp'),
(2, 'Cacto zebra', 1, 'Pode ser cultivada em qualquer região do Brasil, se adapta melhor em climas com temperaturas mais amenas. Mais indicada para ambientes de meia-sombra e com sol fraco, o melhor substrato para se colocar nela são os com uma boa drenagem. Dê preferência a vasos com furos na base. Assim podendo regar mais vezes e fazer a adubação regularmente.', 'cactozebra.webp'),
(3, 'Orelha de coelho', 1, 'Precisa de muita luminosidade, pelo menos duas horas no período da manhã, três vezes por semana. A melhor temperatura para cultivar o mesmo é entre 19°C até 32°C. Precisa de um solo com boa drenagem e um substrato arenoso com muitos nutrientes. Pode ser areia grossa, terra vegetal e húmus de minhoca. O recomendado é usar 50% areia grossa, 40% terra vegetal e 10% de húmus. Não ofereça muitas água, sendo mais sol e menos água para esta planta.', 'orelha.jfif'),
(4, 'Cacto Orquidea', 1, 'Deve ser cultivado com bastante luminosidade mas com pouco sol. Cultive entre 16°C a 30°C. Precisa de um solo com boa drenagem. Pode ser utilizado areia grossa, compostos orgânicos e terra preta, pode usar húmus de minhoca também. Regue somente quando o substrato começar a secar e evite colocar pratos em baixo do vaso.', 'cactoorquidea.jfif'),
(5, 'Mandacaru', 1, 'O sol nao afeta essa planta, pode colocar a mesma por um longe tempo no sol. Plantar em um solo com boa drenagem, regar uma vez por semana e adubar a cada dois meses.', 'Mandacaru-6.jpg'),
(6, 'Avenca', 2, 'Receber sol somente pela manhã, manter ela em lugares com mais sombra e pouco vento. Deixar sua terra sempre úmida, regando três a quatro vezes por semana. Coloque a planta em um suporte de xaxim de madeira ou fibra de coco. Sua adubação pode ser feita 1 vez por mês.', 'avenca.webp'),
(7, 'Renda Portuguesa', 2, 'Ideal para essa planta é ficar em um lugar com mais sombra do que sol, mas ainda sim com claridade. Lugares que fazem menos de 13° C não é recomendado que ela fique. No verão é bom regar constantemente enquanto no inverno ir intercalando os dias. Um solo com boa drenagem.', 'rendaportuguesa.webp'),
(8, 'Amazonas', 2, 'Ideal para essa planta é ficar em um lugar com mais sombra do que sol, mas ainda sim com claridade. Não deixar em lugares com muito vento. Gosta de um solo com nutrientes e com boa drenagem.', 'amazonas.jpg'),
(9, 'Samambaia de metro', 2, 'Vasos de plástico são os melhores para esse tipo de planta. Deixe a mesma em umclima ideal para a planta, entre 15 e 21º C.', 'samambaiademetro.webp'),
(10, 'Asplenia', 2, 'Se adapta melhor em lugares com mais sombra, somente com claridade, mas não sol. Seu solo tem que ter matéria orgânica e uma boa drenagem, regue de duas a três vezes na semana.', 'asplenio.webp'),
(11, 'Rosa de chá', 3, 'É uma planta que precisa de bastante luminosidade e algumas horas de sol no dia. Um solo fértil e com uma boa drenagem é o ideal. No verão é recomendado regar a cada 2 ou 3 dias e no inverno de 5 em 5 dias.', 'rosadecha.jfif'),
(12, 'Rosa arbustiva', 3, 'Precisa de muito sol todos os dias, ao menos 6 horas de luz direta. O mais recomendado é planta-la em solo com boa drenagem e muita materia orgânica. Regar duas vezes por semana e adubar uma vez a cada três meses.', 'rosaarbustiva.jfif'),
(13, 'Rosa trepadeira', 3, 'Pelo menos 6 horas exposta no sol, regue todos os dias e adube três vezes no ano.', 'rosatrepadeira.jfif'),
(14, 'Rosa rasteira', 3, 'Precisa de bastante luminosidade e algumas horas por dia no sol. Um solo fértil e com uma boa drenagem é o ideal. No verão é recomendado regar 2 a 3 vezes na semana e no inverno de 5 em 5 dias.', 'rosa-rasteira.jpg'),
(15, 'Rosa Miniatura', 3, 'Precisa de muito sol todos os dias, ao menos 6 horas de luz direta. O mais recomendado é planta-la em solo com boa drenagem e muita matéria orgânica. Regar duas vezes por semana e adubar uma vez a cada três meses.', 'rosaminiatura.jpg'),
(16, 'Arranha céu', 4, 'É importante acompanhar como está seu crescimento, já que a quantidade de água deve ser boa, é recomendado colocar o dedo na terra para ver se ela está úmida, caso não, colocar mais água, mas nunca deixar encharcar. Eles gostam muito de sol então podemos deixar em lugares bem iluminados.', 'arranhaceu.jpg'),
(17, 'Mamute russo', 4, 'É importante acompanhar como está seu crescimento, já que a quantidade de água deve ser boa, é recomendado colocar o dedo na terra para ver se ela está úmida, caso não, colocar mais água, mas nunca deixar encharcar. Eles gostam muito de sol então podemos deixar em lugares bem iluminados.', 'mamuterusso.jpg'),
(18, 'Sundance kid', 4, 'É importante acompanhar como está seu crescimento, já que a quantidade de água deve ser boa, é recomendado colocar o dedo na terra para ver se ela está úmida, caso não, colocar mais água, mas nunca deixar encharcar. Eles gostam muito de sol então podemos deixar em lugares bem iluminados.', 'Girassol-Sundance-Kids.jpg'),
(19, 'Sunny smile', 4, 'É importante acompanhar como está seu crescimento, já que a quantidade de água deve ser boa, é recomendado colocar o dedo na terra para ver se ela está úmida, caso não, colocar mais água, mas nunca deixar encharcar. Eles gostam muito de sol então podemos deixar em lugares bem iluminados.', 'sunnysmile.jfif'),
(20, 'Pacino', 4, 'É importante acompanhar como está seu crescimento, já que a quantidade de água deve ser boa, é recomendado colocar o dedo na terra para ver se ela está úmida, caso não, colocar mais água, mas nunca deixar encharcar. Eles gostam muito de sol então podemos deixar em lugares bem iluminados.', 'pacino.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`PlantaID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT de tabela `plantas`
--
ALTER TABLE `plantas`
  MODIFY `PlantaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
