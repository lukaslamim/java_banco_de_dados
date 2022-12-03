CREATE SCHEMA `osmar` DEFAULT CHARACTER SET utf8 ;

use osmar;

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `placa` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `marca` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `cor` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `chassi` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modelo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ano` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `km` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `valor` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `quatroPortas` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `arCondicionado` varchar(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `carro_list` (
  `id` int(11) DEFAULT NULL,
  `placa` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `marca` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cor` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `chassi` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ano` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `km` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `valor` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `quatroPortas` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `arCondicionado` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cpf` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nascimento` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `endereco` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sexoMasculino` varchar(1) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cnh` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `celular` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cliente_list` (
  `id` int(11) DEFAULT NULL,
  `cpf` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nascimento` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `endereco` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sexoMasculino` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cnh` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `celular` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `compra` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `sexoMasculino` varchar(45) DEFAULT NULL,
  `cnh` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `salario` varchar(45) DEFAULT NULL,
  `turnoComercial` varchar(1) DEFAULT NULL,
  `nascimento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `funcionario_list` (
  `id` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `sexoMasculino` varchar(45) DEFAULT NULL,
  `cnh` varchar(45) DEFAULT NULL,
  `salario` varchar(45) DEFAULT NULL,
  `turnoComercial` varchar(45) DEFAULT NULL,
  `nascimento` varchar(45) DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `moto` (
  `id` int(11) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `chassi` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `ano` varchar(45) DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `moto_list` (
  `id` int(11) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `chassi` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `ano` varchar(45) DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `valor` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `nome` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `descricao` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `produto_list` (
  `id` int(11) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `servico` (
  `id` int(11) NOT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `servico_list` (
  `id` int(11) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `carro`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `cliente`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `compra`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `funcionario`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `moto`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `produto`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);


ALTER TABLE `servico`
  CHANGE COLUMN `id` `id` INT(11) NOT NULL ,
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `carro_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `cliente_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `servico_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `produto_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `moto_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

ALTER TABLE `funcionario_list` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL;

COMMIT;
