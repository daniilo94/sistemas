-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: noticias
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_noticias`
--

DROP TABLE IF EXISTS `tb_noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `nome_imagem` varchar(150) NOT NULL,
  `tamanho_imagem` varchar(45) DEFAULT NULL,
  `tipo_imagem` varchar(45) DEFAULT NULL,
  `imagem` longblob,
  `texto` longtext,
  `ativada` tinyint(4) NOT NULL,
  `espacos` varchar(100) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `exibir_historico` tinyint(4) NOT NULL DEFAULT '1',
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_noticias`
--

LOCK TABLES `tb_noticias` WRITE;
/*!40000 ALTER TABLE `tb_noticias` DISABLE KEYS */;
INSERT INTO `tb_noticias` VALUES (36,'http://www.cjf.jus.br/cjf/noticias/2016-1/dez','Pesquisa revela avanço no nível de maturidade em governança','0042ad15af6635491e410956d5448b4f.jpg','100',NULL,NULL,NULL,0,'<br><br>','2017-01-01 00:00:00',0,NULL),(37,'img/inova_tcu.jpg','Rede InoGov fará última reunião do ano no dia 15/12','cea5aa7074d47cdc85b6fea4c6e4a189.jpg','80',NULL,NULL,'',0,'','2017-01-01 00:00:00',0,NULL),(38,'http://www.cjf.jus.br/cjf/noticias/2017/maio/aprovado-relatorio-de-inspecao-administrativa-no-trf5/view','Aprovado relatório de inspeção administrativa no TRF5','df49288174382b2a9cbe1ae7f19a7029.jpg','100',NULL,NULL,NULL,0,NULL,'2017-01-01 00:00:00',0,NULL),(39,'http://www.cjf.jus.br/cjf/noticias/2017/maio/aprovada-proposta-que-institui-politica-de-gestao-de-riscos-na-justica-federal','Aprovada proposta que institui Política de Gestão de Riscos na Justiça Federal','f5d148f98c4ef17a881fd03a31980873.jpg','100',NULL,NULL,'',1,'<br>','2017-01-01 00:00:00',1,NULL),(41,'http://www.cjf.jus.br/cjf/noticias/2017/maio/cjf-tcu-e-mpog-promovem-evento-para-discutir-solucoes-inovadoras-ao-setor-publico','CJF, TCU e MPOG promovem evento para discutir soluções inovadoras ao setor público','7ed84aa6552508b7d0b1c80ce4724e07.jpg','100',NULL,NULL,'',1,'<br><br><br>','2017-01-01 00:00:00',1,NULL),(42,'http://www.cjf.jus.br/cjf/noticias/2017/junho/enfam-disponibiliza-compartilhamento-de-cursos-a-distancia/view','Enfam disponibiliza compartilhamento de cursos a Distância','f166ec2160dcf0b9743487ec9a511bb9.jpg','98',NULL,NULL,'',0,'','2017-01-01 00:00:00',1,NULL),(44,'http://www.ajufe.org/imprensa/noticias/resultado-do-ii-premio-ajufe-boas-praticas-de-gestao/','Programa de Gestão e Inovação da Justiça Federal –  iNovaJusp, da Seção Judiciária de São Paulo, é vencedor do II PRÊMIO AJUFE: BOAS PRÁTICAS DE GESTÃO','9a80e13d5b91ade9b69db8ffa1dbd952.jpg','100',NULL,NULL,'',1,'<br>','2017-01-01 00:00:00',1,NULL),(54,'Notícia Interna','Conselho nega reposicionamento de ocupantes do cargo de Artífice de Nível Auxiliar','dfdfasd.jpg','100',NULL,NULL,'<p><em><strong><span style=\"color:#e74c3c\"><span style=\"font-size:16px\"><span style=\"font-family:Georgia,serif\"><span style=\"background-color:#dddddd\">fdgfO Conselho da Justi&ccedil;a Federal (CJF) negou, por unanimidade, o pedido de provid&ecirc;ncias do Sindicato dos Trabalhadores do Poder Judici&aacute;rio Federal no Estado de Minas Gerais (SITRAEMG) para estender aos servidores integrantes da categoria de Art&iacute;fice de N&iacute;vel Auxiliar o reposicionamento conferido &agrave;s classes &ldquo;A&rdquo; e &ldquo;B&rdquo; da categoria dos Auxiliares Operacionais de Servi&ccedil;os Diversos (AOSD) para o cargo de T&eacute;cnico Judici&aacute;rio. O processo foi analisado pelos integrantes do Colegiado na sess&atilde;o desta segunda-feira (26), na sede do &oacute;rg&atilde;o, em Bras&iacute;lia.</span></span></span></span></strong></em></p>\r\n\r\n<p>O desembargador federal Manoel de Oliveira Erhardt, relator do caso, trouxe ao pleno alguns esclarecimentos sobre a evolu&ccedil;&atilde;o legislativa. Ele lembrou que a Lei n&ordm; 7.995/1990, que disp&ocirc;s sobre a remunera&ccedil;&atilde;o de servidores civis, em seu Anexo XI, classificou os Art&iacute;fices como categoria funcional de n&iacute;vel auxiliar, sem exig&ecirc;ncia do 2&ordm; grau completo; e que, posteriormente, a Lei n&ordm; 8.460, de 1992, em seu artigo 5&ordm;, disp&ocirc;s que as categorias funcionais de Agente de Vigil&acirc;ncia, de Telefonista, de Motorista Oficial e as classes C e D da categoria de AOSD, assim como a classe B da categoria de Agente de Servi&ccedil;os de Engenharia passaram a integrar o Anexo X da Lei n&deg; 7.995, de 1990, que estabelecia para as categorias funcionais de n&iacute;vel intermedi&aacute;rio a exig&ecirc;ncia de 2&ordm; grau completo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O magistrado observou que a Lei n&ordm; 8.460, de 1992, contemplou apenas os Auxiliares Operacionais de Servi&ccedil;os Diversos das classes &lsquo;C&rsquo; e &lsquo;D&rsquo;, n&atilde;o contemplou os AOSD das classes &lsquo;A&rsquo; e &lsquo;B&rsquo; e, menos ainda, os Art&iacute;fices, &ldquo;tendo em vista n&atilde;o preencherem o requisito relacionado &agrave; escolaridade&rdquo;. Em 2012, seguiu o relator, no intuito de fazer cessar o &ldquo;<em>discr&iacute;men</em>&rdquo; anteriormente vigente para servidores integrantes de um mesmo cargo, adveio a Lei n&ordm; 12.744, cujo artigo 3&ordm; estendeu o enquadramento aos ocupantes das classes &lsquo;A&rsquo; e &lsquo;B&rsquo; da categoria de AOSD. O CJF, ent&atilde;o, disse ele, aprovou a Resolu&ccedil;&atilde;o n&ordm; CJF-RES-2015/00343, procedendo o reposicionamento especificamente desses servidores.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp;</p>\r\n\r\n<p>Diante do exposto, o desembargador avaliou que o pleito do SITRAEMG n&atilde;o encontrava respaldo legal, &ldquo;haja vista que o disposto nas Leis n&ordm; 8.460/1992 e n&ordm; 12.774/2012 contemplou apenas<em>&nbsp;</em>os Auxiliares Operacionais de Servi&ccedil;os Diversos, n&atilde;o sendo dado ao int&eacute;rprete estender a aplica&ccedil;&atilde;o da norma ao cargo n&atilde;o expressamente nela previsto&rdquo;. Erhardt destacou, ainda, que o Conselho j&aacute; se debru&ccedil;ou sobre o tema na sess&atilde;o de 27 de abril de 2015, no julgamento do Processo n&ordm; CJF-ADM-2013/00238, que tratou da controv&eacute;rsia pertinente &agrave; abrang&ecirc;ncia do artigo 3&ordm; da Lei n&ordm; 12.774/2012 e, tamb&eacute;m, na sess&atilde;o de 6 de junho de 2016, no julgamento de um pedido da FENAJUFE.</p>\r\n</blockquote>\r\n\r\n<p>Por fim, o magistrado registrou que, como real&ccedil;ado no parecer da Assessoria Jur&iacute;dica do CJF,&nbsp;<em>&ldquo;n&atilde;o h&aacute; qualquer ineditismo na tese apresentada pela entidade postulante que justifique reexame da mat&eacute;ria. De fato, o que se busca &eacute; modificar o julgado do Colegiado, sob a alega&ccedil;&atilde;o de afronta &agrave; isonomia&rdquo; (...) &ldquo;A forma leg&iacute;tima para o atendimento do pleito da entidade sindical sob a argui&ccedil;&atilde;o de quebra de isonomia&rdquo;,&nbsp;</em>acrescenta, seria<em>&nbsp;&ldquo;a via legal, a exemplo do que foi feito com a distor&ccedil;&atilde;o havida dentre os pr&oacute;prios AOSD na aplica&ccedil;&atilde;o da lei anterior (Art. 5&ordm; Lei n. 8.460/1992) que restringiu o n&iacute;vel intermedi&aacute;rio a classes espec&iacute;ficas do mesmo cargo, que veio a ser corrigida pela lei posterior (art. 3&ordm; da Lei n&ordm; 12.774/2012), regulamentada pelo ato atacado deste CJF&rdquo;.</em></p>\r\n\r\n<p>Processo n&ordm; CJF-ADM-2013/00238</p>\r\n',0,'<br><br>','2017-01-01 00:00:00',0,NULL),(55,'http://www.cnj.jus.br/index.php?option=com_content&view=article&id=85073:boas-praticas-da-justica-federal-ampliam-alcance-de-decisoes-do-stf&catid=813:cnj&Itemid=4640','Boas práticas da Justiça Federal ampliam alcance de decisões do STF','bc0f07b2b2309b86afb4830dc5cfbe2b.jpg','85',NULL,NULL,'',1,'','2017-01-01 00:00:00',1,NULL);
/*!40000 ALTER TABLE `tb_noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-15 16:06:20
