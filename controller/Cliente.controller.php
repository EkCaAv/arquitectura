<?php
require_once 'model/Cliente.php';

class ClienteController{
    
    private $model;
    
    public function __CONSTRUCT(){
        $this->model = new Cliente();
    }
    
    public function Index(){
        require_once 'view/header.php';
        require_once 'view/Cliente/Cliente.php';
        require_once 'view/footer.php';
    }
    
    public function Crud(){
        $alm = new Cliente();
        
        if(isset($_REQUEST['id'])){
            $alm = $this->model->Obtener($_REQUEST['id']);
        }
        
        require_once 'view/header.php';
        require_once 'view/Cliente/Cliente-editar.php';
        require_once 'view/footer.php';
    }
    
    public function Guardar(){
        $alm = new Cliente();
        
        $alm->id = $_REQUEST['id'];
		$alm->Documento = $_REQUEST['Documento'];
        $alm->Nombre = $_REQUEST['Nombre'];
        $alm->Apellido = $_REQUEST['Apellido'];
		$alm->Sexo = $_REQUEST['Sexo'];
		$alm->FechaNacimiento = $_REQUEST['FechaNacimiento'];
        $alm->Correo = $_REQUEST['Correo'];
        $alm->id > 0 
            ? $this->model->Actualizar($alm)
            : $this->model->Registrar($alm);
        
        header('Location: index.php');
    }
    
    public function Eliminar(){
        $this->model->Eliminar($_REQUEST['id']);
        header('Location: index.php');
    }

	}