<?php
include_once './validacao.php';
include_once '../conn.php';
include_once './autoload.php';

use Classes\ControleNoticia;

$funcoes = new ControleNoticia($conn);


//$controleNoticia->alterar('Rede InoGov fará última reunião do ano no dia 15/12s', 'img/inova_tcusd.jpg', false, '', 37);
$resultado = $funcoes->buscarTodos();

$obj = $resultado->fetch_assoc();
//$date = $obj['data'];
//$date->format('d-m-Y H:i:s')

$newDate = date("d-m-Y H:i:s", strtotime($obj['data']));

var_dump($newDate);



