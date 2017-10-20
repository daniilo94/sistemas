<?php

if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_POST))
    header("Location: index.php");

include_once '../conn.php';
include_once './autoload.php';

use control\ControleNoticia;

$requisicao = $_POST['tipo_de_requisicao'];
$controleNoticia = new ControleNoticia($conn);


switch ($requisicao){
    case "alterar":
        alterar($controleNoticia);
        break;
    case "inserirExterna":
        inserirExterna($controleNoticia);
        break;
    case "inserirInterna":
        inserirInterna($controleNoticia);
        break;
    case "remover":
        remover($controleNoticia);
        break;
    case "buscarPorId":
        buscarPorId($controleNoticia);
        break;
    case "apagarTemp":
        unlink('croped/' . $_SESSION['imagemTemp']);
        unset($_SESSION['imagemTemp']);
        break;
    case "alterarImg":
        echo $controleNoticia->alterarImagem($_POST['tamanho'], $_POST['espacos'], $_POST['id']);
        break;

}

function alterar($controleNoticia) {
    echo $controleNoticia->alterar($_POST['titulo'], $_POST['endereco'], $_POST['texto'], $_POST['ativada'], $_POST['exibir_historico'], $_POST['id']);
}

function inserirExterna($controleNoticia) {
    $res = $controleNoticia->inserirExterna($_POST['endereco'], $_POST['titulo'], $_POST['img'], $_POST['tamanho'], $_POST['espacos'], $_SESSION['UsuarioID']);
    if ($res == true) {
        rename('croped/' . $_POST['img'], 'Imagens/' . $_POST['img']);
        unset($_SESSION['imagemTemp']);
        $_SESSION['message'] = "cadastroSucesso";
    } else {
        unlink('croped/' . $_SESSION['imagemTemp']);
        unset($_SESSION['imagemTemp']);
        $_SESSION['message'] = "cadastroErro";
    }
    echo "<script>window.location='index.php'</script>";
}

function inserirInterna($controleNoticia) {
    $res = $controleNoticia->inserirInterna($_POST['titulo'], $_POST['img'], $_POST['tamanho'], $_POST['texto'], $_POST['espacos'], $_SESSION['UsuarioID']);
    if ($res == true) {
        rename('croped/' . $_POST['img'], 'Imagens/' . $_POST['img']);
        unset($_SESSION['imagemTemp']);
        $_SESSION['message'] = "cadastroSucesso";
    } else {
        unlink('croped/' . $_SESSION['imagemTemp']);
        unset($_SESSION['imagemTemp']);
        $_SESSION['message'] = "cadastroErro";
    }
    echo "<script>window.location='index.php'</script>";
}

function remover($controleNoticia) {
    $res = $controleNoticia->remover($_POST['id']);
    if ($res == true) {
        unlink('Imagens/' . $_POST['img']);
    }
    echo $res;
}

function buscarPorId($controleNoticia) {
    $resultado = $controleNoticia->buscarPorId($_POST['id']);

    $result = $resultado->fetch_assoc();
    $usuario = substr((explode('@', $result['usuario']))[1] , 0,3);
    $fonte = ($usuario == 'cjf') ? strtoupper($usuario) : strtoupper(substr((explode('@', $result['usuario']))[1] , 0,4));
    $result['fonte'] = $fonte;

    print_r(json_encode($result));
}
