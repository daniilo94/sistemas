<?php


class Noticia {
    private $endereco;
    private $titulo;
    private $nome_imagem;
    private $tamanho_imagem;
    private $texto;
    private $ativada;
    private $espacos;
    private $data;
    private $exibir_historico;
    private $usuario;

    function __construct($endereco, $titulo, $nome_imagem, $tamanho_imagem, $texto, $ativada, $espacos, $data, $exibir_historico, $usuario) {
        $this->setEndereco($endereco);
        $this->setTitulo($titulo);
        $this->setNomeImagem($nome_imagem);
        $this->setTamanhoImagem($tamanho_imagem);
        $this->setTexto($texto);
        $this->setAtivada($ativada);
        $this->setEspacos($espacos);
        $this->setData($data);
        $this->setExibirHistorico($exibir_historico);
        $this->setUsuario($usuario);
    }

    /**
     * @return mixed
     */
    public function getEndereco() {
        return $this->endereco;
    }

    /**
     * @param mixed $endereco
     */
    public function setEndereco($endereco) {
        $this->endereco = $endereco;
    }

    /**
     * @return mixed
     */
    public function getTitulo() {
        return $this->titulo;
    }

    /**
     * @param mixed $titulo
     */
    public function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    /**
     * @return mixed
     */
    public function getNomeImagem() {
        return $this->nome_imagem;
    }

    /**
     * @param mixed $nome_imagem
     */
    public function setNomeImagem($nome_imagem) {
        $this->nome_imagem = $nome_imagem;
    }

    /**
     * @return mixed
     */
    public function getTamanhoImagem() {
        return $this->tamanho_imagem;
    }

    /**
     * @param mixed $tamanho_imagem
     */
    public function setTamanhoImagem($tamanho_imagem) {
        $this->tamanho_imagem = $tamanho_imagem;
    }

    /**
     * @return mixed
     */
    public function getTexto() {
        return $this->texto;
    }

    /**
     * @param mixed $texto
     */
    public function setTexto($texto) {
        $this->texto = $texto;
    }

    /**
     * @return mixed
     */
    public function getAtivada() {
        return $this->ativada;
    }

    /**
     * @param mixed $ativada
     */
    public function setAtivada($ativada) {
        $this->ativada = $ativada;
    }

    /**
     * @return mixed
     */
    public function getEspacos() {
        return $this->espacos;
    }

    /**
     * @param mixed $espacos
     */
    public function setEspacos($espacos) {
        $this->espacos = $espacos;
    }

    /**
     * @return mixed
     */
    public function getData() {
        return $this->data;
    }

    /**
     * @param mixed $data
     */
    public function setData($data) {
        $this->data = $data;
    }

    /**
     * @return mixed
     */
    public function getExibirHistorico() {
        return $this->exibir_historico;
    }

    /**
     * @param mixed $exibir_historico
     */
    public function setExibirHistorico($exibir_historico) {
        $this->exibir_historico = $exibir_historico;
    }

    /**
     * @return mixed
     */
    public function getUsuario() {
        return $this->usuario;
    }

    /**
     * @param mixed $usuario
     */
    public function setUsuario($usuario) {
        $this->usuario = $usuario;
    }


}