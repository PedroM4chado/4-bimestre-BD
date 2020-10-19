-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Out-2020 às 23:30
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Moda'),
(5, 'Saúde'),
(6, 'Economia'),
(7, 'Educação'),
(8, 'Infra Estrutura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `noticia` longtext,
  `titulo` varchar(255) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `noticia`, `titulo`, `codRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'A ministra da Mulher, Família e Direitos Humanos, Damares Alves, afirmou nesta segunda-feira (19) que defende "cadeia imediatamente" para o jogador Robinho, condenado na Itália por violência sexual contra uma mulher embriagada.\r\n\r\nO jogador foi condenado em primeira instância, mas recorreu e diz ser inocente. No estágio atual do processo, Robinho não pode ser preso no Brasil. Quando as possibilidades de recursos se esgotarem, se a condenação for mantida, Brasil e Itália deverão chegar a um acordo sobre o cumprimento da pena.\r\n\r\n"Cadeia imediatamente, não tenho outra palavra para falar. Ainda cabe recurso, mas o vazamento dos áudios, gente. Querem mais o quê? Cadeia. Nenhum estuprador pode ser aplaudido. O cara quer voltar para o campo para posar como herói", declarou.\r\n\r\nDamares comentou o caso ao chegar ao Palácio do Planalto, nesta segunda, para uma cerimônia com o presidente Jair Bolsonaro sobre tratamentos para a Covid-19. A ministra disse acreditar que o Santos Futebol Clube agiu certo ao rescindir o contrato com Robinho, que havia acertado seu retorno ao time no último dia 10.', 'Damares pede ''cadeia imediatamente'' para Robinho', 4, 1, 19, 10, 2020),
(2, 'O resultado preliminar na Bolívia confirma a vitória de Luis Arce no primeiro turno, já reconhecida pela presidente interina, Jeanine Áñez, e levanta a questão: qual o papel que Evo Morales terá no governo de seu pupilo? O ex-presidente, que governou o país por 14 anos até ser forçado a renunciar, em 2019, e exilar-se na Argentina, deixou claro que voltaria à Bolívia no dia seguinte à vitória de seu ex-ministro da Economia.\r\n\r\nCandidato de Evo Morales deve vencer a eleição na Bolívia\r\nCandidato de Evo Morales deve vencer a eleição na Bolívia\r\n\r\nArce sempre defendeu o direito de Morales de retornar ao país para defender-se dos processos que correm na Justiça contra ele. No entanto, centrou a campanha na crença de que o mentor não seria uma sombra em seu futuro governo.\r\n\r\nNo ano em que esteve fora do país, Morales não deixou de ser referência política, apesar do desgaste inevitável de quem iniciava o quarto mandato consecutivo. Tentou candidatar-se senador pelo MAS, nestas eleições, mas foi impedido. Articulou do exílio a campanha de seu herdeiro político.\r\n\r\nAmbos têm perfis distintos. Morales é carismático; Arce, técnico. É respeitado por ter comandado as reformas econômicas que marcaram o longo governo do ex-líder indígena, reduzindo inflação e pobreza. O panorama que enfrentará como presidente, contudo, é diferente, agravado pela polarização política, por um governo interino caótico e pela pandemia do novo coronavírus.\r\n\r\nA vitória do MAS castiga duramente os conservadores liderados por Luis Camacho, que obtiveram apenas 14% dos votos. Sela também o cenário ideal para Luis Arce -- Lucho, como é conhecido entre os correligionários – como vencedor no primeiro turno, nesta primeira eleição, em quase duas décadas, sem a presença física de Evo Morales.\r\n\r\nUma nova disputa, no segundo turno, com demais candidatos unidos contra ele, poderia tornar inviável o triunfo eleitoral, que deverá consolidar também a maioria do MAS nas duas câmaras.\r\n\r\nUm governo de unidade, como ele promete realizar, no entanto, pode ser dificultado justamente pela sombra de Evo Morales. Luis Arce deve tentar descolar-se da liderança carismática do ex-presidente e exercer a autonomia que lhe foi conferida pelas urnas.', 'Qual será o papel de Evo Morales no governo de Arce?', 5, 3, 18, 10, 2020),
(3, 'Um jovem de 23 anos foi morto dentro de casa no Catumbi, na região central do Rio, na manhã desta segunda-feira (19). Caio Gomes Soares foi atingido por uma bala perdida após levantar da cama para pegar um suco, por volta das 7h. O rapaz morreu na hora nos braços da irmã, de 24 anos.\r\n\r\n''"Ele morreu com um suco na mão", disse Maria José Gomes de Andrade, mãe de Caio.\r\nDe acordo com os moradores da rua, que fica em frente ao Morro da Coroa, o tiroteio começou depois que policiais militares chegaram na comunidade, no começo da manhã desta segunda, e houve confronto com traficantes.\r\n\r\n''Minha família está destruída'', diz mãe de jovem vítima de bala perdida no Catumbi\r\n''Minha família está destruída'', diz mãe de jovem vítima de bala perdida no Catumbi\r\n\r\nA mãe de Caio é doméstica e já estava no trabalho quando a filha ligou para avisar sobre um tiroteio no Morro da Coroa. "Minha família está destruída", lamentou Maria José.\r\n\r\nFormado em Educação Física pela Universidade Estadual do Rio de Janeiro (Uerj), Caio dava aulas para idosos e também realizava eventos. Ele morava com a mãe e a irmã em um imóvel próximo ao Túnel Santa Bárbara, que liga os bairros de Laranjeiras e Catumbi.', 'Jovem de 23 anos é atingido por bala perdida dentro de casa, no Catumbi, e morre nos braços da irmã', 3, 5, 20, 9, 2020),
(4, 'A presidente interina da Bolívia, Jeanine Añez, disse nesta segunda-feira (19) que o candidato de esquerda, Luis Arce, venceu as eleições presidenciais em primeiro turno. Algumas horas depois, o seu principal oponente, Carlos Mesa, também admitiu a derrota.\r\n\r\nArce, candidato do partido de Evo Morales, o MAS, aparece como vencedor em duas pesquisas de boca de urna.\r\n\r\nQuem é Luis Arce, apontado por projeções como novo presidente do país\r\n"Ainda não temos a contagem oficial, mas pelos dados que temos acesso, o senhor Arce e o senhor Choquehuanca ganharam a eleição", escreveu Añez em uma rede social. "Cumprimentos aos ganhadores e peço que governem pensando na Bolívia e na democracia."\r\n\r\n"Faço um agradecimento a todos os bolivianos que votaram no Comunidade Cidadã (CC). Ao povo boliviano pelo seu compromisso democrático. A todos os dirigentes do CC, a nossos aliados. Cabe-nos sermos líderes de oposição. Honraremos a Bolívia", escreveu, por sua vez, Carlos Mesa.\r\n\r\nO resultado oficial do pleito de domingo (18), porém, deve demorar para ser divulgado. Até a última atualização desta reportagem, cerca de 23% das urnas haviam sido apuradas.\r\n\r\nLuis Arce, candidato do MAS, exibe cédula ao votar em eleição presidencial em La Paz, na Bolívia, no domingo (18) — Foto: AP Photo/Juan Karita\r\nLuis Arce, candidato do MAS, exibe cédula ao votar em eleição presidencial em La Paz, na Bolívia, no domingo (18) — Foto: AP Photo/Juan Karita\r\n\r\nUm levantamento da organização Tu Voto Cuenta mostra Arce, do partido MAS, com 53% dos votos, contra 30,8% do ex-presidente Mesa e 14,1% do líder de extrema direita Luis Fernando Camacho. Os demais candidatos aparecem com menos de 2%.\r\n\r\nJá a pesquisa do instituto Ciesmori aponta Arce com 52,4%, Mesa com 31,5% e Camacho com 14,1%. No levantamento, os outros candidatos também têm menos de 2% dos votos.\r\n\r\nMesmo sem o resultado oficial, Arce já comemorou a vitória nas eleições. "Muito agradecido pelo apoio e pela confiança do povo boliviano. Recuperamos a democracia e retomaremos a estabilidade e a paz social", publicou em sua página no Twitter.\r\n\r\nNa Argentina, o ex-presidente Evo Morales também usou a rede social para parabenizar o aliado. "Irmãos e irmãs, a vontade do povo prevaleceu. Foi uma vitória contundente", escreveu.\r\n\r\nOEA também admite vitória do MAS\r\nOutro ator importante que admitiu a vitória do MAS foi o secretário-geral da Organização dos Estados Americanos (OEA), Luis Almagro, que desejou sucesso a Arce e disse que "a partir da democracia" ele saberá "forjar um futuro brilhante para seu país".\r\n\r\nA votação deste domingo foi a segunda em um ano. Em 20 de outubro de 2019, Evo concorreu pela quarta vez à presidência e ficou em primeiro (Mesa ficou em segundo). Como teve mais de 40% dos votos, ele foi considerado vencedor.\r\n\r\nO resultado inicial da apuração indicava um segundo turno, mas houve interrupções na contagem. Depois de dias de indefinição, o processo foi retomado e Evo saiu como vencedor.\r\n\r\nComeçaram, então, protestos contra os resultados.\r\n\r\nNo dia 10 de novembro de 2019, a OEA tornou público um relatório que apontava que as eleições haviam sido fraudadas.\r\n\r\nEvo cancelou os resultados e convocou novas eleições imediatamente. Porém, a ação não foi suficiente: pressionado por militares, ele renunciou e, em seguida, fugiu do país. Inicialmente, ele foi para o México e, depois, se exilou na Argentina.\r\n\r\nPosteriormente, estudos de grupos de pesquisas dos EUA colocaram em dúvida a alegação da OEA de que as eleições de 2019 foram fraudadas.\r\n\r\nApuração demorada\r\nTribunal Eleitoral da Bolívia decide não divulgar resultados preliminares das eleições\r\nTribunal Eleitoral da Bolívia decide não divulgar resultados preliminares das eleições\r\n\r\nO resultado pode levar mais de um dia para ser conhecido, pois o Tribunal Superior Eleitoral decidiu eliminar o sistema de apuração preliminar, como mostra o vídeo acima, e manter apenas a contagem individual, muito mais lenta.\r\n\r\nNa eleição de 2019, foi justamente a adoção dos dois sistemas paralelos que causou confusão, quando números do sistema de Transmissão de Resultados Eleitorais Preliminares, batizado de Trep, começaram a diferir da contagem individual de votos.\r\n\r\nA votação deste domingo transcorreu em clima pacífico, e foi encerrada sem problemas às 17 horas (18 horas em Brasília).\r\n\r\nOs eleitores votaram para escolher quem vai substituir Jeanine Añez, a presidente interina que assumiu em novembro de 2019, após a anulação da votação daquele ano e os distúrbios que levaram Evo Morales a renunciar.\r\n\r\nA eleição pode ser decidida já no primeiro turno se um dos candidatos tiver a maioria simples ou, então, pelo menos 40% dos votos válidos e mais de dez pontos percentuais a mais que o segundo colocado. Se ninguém conseguir esse resultado, um segundo turno está marcado para o dia 29 de novembro.\r\n\r\nPara evitar os problemas do ano passado, grupos ligados a fundações e universidades observaram os locais de votação, segundo Juan Carlos Nunes, da Fundación Jubileo, uma fundação católica de incentivo à democracia no país.', 'Presidente interina da Bolívia e principal oponente admitem que Luis Arce venceu as eleições em 1º turno', 1, 3, 19, 7, 2020),
(5, 'Um lance no mínimo curioso viralizou nas redes sociais nas últimas horas. O técnico do Inter Eduardo Coudet deu uma bronca no zagueiro Zé Gabriel no segundo tempo da partida contra o Vasco, no domingo, quando o time já vencia por 2 a 0. O próprio treinador, em tom humorado, reconheceu ser "insuportável".\r\n\r\n"Dá-lhe, Zé! Dá-lhe, c***! Para jogar! Não te esconde atrás do atacante!" (Eduardo Coudet para Zé Gabriel)\r\nOs jogos sem torcida por conta da pandemia do coronavírus possibilitam que gritos na beira do campo sejam escutados nas transmissões. E foi exatamente o que ocorreu quando Coudet cobrou Zé Gabriel.\r\n\r\n— Não faço intencionalmente, é minha maneira de sentir o futebol, fazer parte do grupo, tirar o melhor de cada jogador. Infelizmente, eles (jogadores) têm que me aguentar, como aguentaram os outros grupos que dirigi. Sou intenso, insuportável, mas quero o melhor para eles — disse o técnico após o jogo.\r\n\r\nTécnico Eduardo Coudet na vitória do Inter contra o Vasco — Foto: Lucas Bubols/ge.globo\r\nTécnico Eduardo Coudet na vitória do Inter contra o Vasco — Foto: Lucas Bubols/ge.globo\r\n\r\nApesar das cobranças, o Inter manteve o placar de 2 a 0 construído no primeiro tempo, com gols de Edenílson e Galhardo, e venceu o Vasco pela 17ª rodada do Brasileirão. O resultado dá a liderança provisória ao Colorado. O Atlético-MG pode retomar o primeiro lugar nesta segunda-feira.\r\n\r\nO Colorado volta a campo pelo Nacional no domingo, quando recebe o Flamengo no Beira-Rio. Mas antes o foco é na Libertadores. O Inter enfrenta a Universidad Católica na quinta-feira, às 21h30, no San Carlos de Apoquindo, pela última rodada do Grupo E.', 'Bronca de Coudet durante jogo do Inter contra o Vasco viraliza, e técnico brinca: "Sou insuportável"', 4, 1, 16, 10, 2020),
(6, 'Apresentadora comemorou 21 anos do programa e foi às lágrimas ao assistir à mãe, então com 84 anos, ensinando uma receita\r\n\r\nO Mais Você chegou aos 21 anos em 19/10 e, claro, não faltaram festa e emoção. Ana Maria Braga reviveu momentos especiais, entre os quais, a parceria na cozinha com a mãe, Dona Lourdes, falecida em 2005.\r\n\r\n''Mais Você'' completou 21 anos no ar e ganhou bolo especial  — Foto: TV Globo\r\n''Mais Você'' completou 21 anos no ar e ganhou bolo especial — Foto: TV Globo\r\n\r\nA senhora, à época com 84 anos, deu uma dica de como cortar couve bem fininha. Ana Maria observou atenta ao VT e não segurou as lágrimas.\r\n\r\n"É bom ter mãe para abraçar", disse ela, bem emocionada.', 'Ana Maria Braga se emociona ao rever a mãe, Dona Lourdes, no ''Mais Você''', 5, 2, 12, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(99) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `cidade` varchar(99) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(99) DEFAULT NULL,
  `email` varchar(99) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `cidade`, `ddd`, `telefone`, `email`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Colovis', 'Marcadoriz', 'Mauá', 11, '84764-8496', 'Colovis@gmail.com', 8, 12, 9, 1997),
(2, 'Julia', 'Fernades', 'Ribeirão Pires', 11, '56465-5452', 'Juju@yahoo.com.br', 2, 17, 2, 2004),
(3, 'Pedro', 'Machado', 'Ribeirão Pires', 11, '94249-4283', 'rocrispe@yahoo.com.br', 1, 14, 2, 2005),
(4, 'Rogerio', 'Ferraz', 'Rio Grande ', 11, '89713-2312', 'Ferraz123@gmai.com', 8, 29, 7, 2001),
(5, 'Albert', 'Alshiwitz', 'Mauá', 11, '12312-1234', 'Albert@gmail.com', 4, 11, 10, 2003),
(6, 'Camily', 'Regina', 'Ribeirão Pires', 11, '97538-4547', 'Regininha@gmail.com', 11, 16, 4, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1A'),
(5, '2A'),
(6, '3A'),
(7, '1B'),
(8, '2B'),
(9, '3B'),
(10, '1F'),
(11, '2F'),
(12, '3F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
