<?php
include_once('../conexion/db.php');
include_once('../model/estado.model.php');


class Repository {

    private $conexion;

    public function __construct() {
        $this->conexion = conexion();
    }

    public function get($idpc) {
        
        $query = "SELECT Estado.*, Pc.nombre AS pc_nombre, Pc.modelo AS pc_modelo FROM Estado JOIN Pc ON Estado.pc_id = Pc.id WHERE Pc.id = $idpc";
        $result = mysqli_query($this->conexion, $query);

        $dataArray = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $data = new Data();  // Aquí estás creando instancias de la clase Data
            $data->id = $row['id'];
            $data->estado = $row['estado'];
            $data->pc_nombre = $row['pc_nombre'];
            $data->pc_modelo = $row['pc_modelo'];
            $dataArray[] = $data;
        }

        return $dataArray;
    }

    public function create($idpc, $body) {
        $id = $body['id'];
        $estado = $body['estado'];

        $query = "INSERT INTO Estado (id, estado, pc_id) VALUES ($id, '$estado', $idpc)";

        $result = mysqli_query($this->conexion, $query);
        if ($result) {
            $data = new Data();  // Aquí también estás creando instancias de la clase Data
            $data->id = $id;
            $data->estado = $estado;

            return $data;

        } else {
            return null;
        }
    }

    public function update($idpc, $id, $body){
        $estado = $body['estado'];

        $query = "UPDATE Estado SET estado = '$estado', pc_id = $idpc WHERE id = $id";

        $result = mysqli_query($this->conexion, $query);

        if ($result) {
            $data = new Data();
            $data->id = $id;
            $data->estado = $estado;

            return $data;
        }else{
            return null;
        }
    }

    public function delete($id){

        $query = "DELETE FROM Estado WHERE id = $id";

        $data = mysqli_query($this->conexion, $query);
         if ($data) {
            echo "Registro eliminado correctamente";
         }else{
            return null;
         }


    }
}


?>