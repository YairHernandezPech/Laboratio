<?php
include_once('../conexion/db.php');
include_once('../model/pc.model.php');

class Repository{
    private $conexion;

    public function __construct(){
        $this->conexion=conexion();
    }
    public function get() {
        
        $query = "SELECT Pc.*, Estado.id AS id_estado, Estado.estado FROM Pc LEFT JOIN Estado ON Pc.id = Estado.pc_id";  // Corregir la cláusula ON

        $result = mysqli_query($this->conexion, $query);

        $dataArray = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $data = new Data();
            $data->id = $row['id'];
            $data->nombre = $row['nombre'];
            $data->modelo = $row['modelo'];
            $data->nserie = $row['nserie'];
            $data->teclado = $row['teclado'];
            $data->mouse = $row['mouse'];
            $data->observacion = $row['observacion'];
            $data->id_estado = $row['id_estado'];
            $data->estado = $row['estado'];

            $dataArray[] = $data;
        }

        return $dataArray;
    }

    public function getByid($id){
        $query = "SELECT Pc.*, Estado.id AS id_estado, Estado.estado FROM Pc LEFT JOIN Estado ON Pc.id = Estado.pc_id WHERE Pc.id = " . intval($id);
        $result = mysqli_query($this->conexion, $query);

        $dataArray = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $data = new Data();
            $data->id = $row['id'];
            $data->nombre = $row['nombre'];
            $data->modelo = $row['modelo'];
            $data->nserie = $row['nserie'];
            $data->teclado = $row['teclado'];
            $data->mouse = $row['mouse'];
            $data->observacion = $row['observacion'];
            $data->id_estado = $row['id_estado'];
            $data->estado = $row['estado'];
    
            $dataArray[] = $data;
        }
    
        return $dataArray;
    }
    

    public function create($body){
        $id = $body['id'];
        $nombre = $body['nombre'];
        $modelo = $body['modelo'];
        $nserie = $body['nserie'];
        $teclado = $body['teclado'];
        $mouse = $body['mouse'];
        $observacion = $body['observacion'];

        $query = "INSERT INTO Pc (id, nombre, modelo, nserie, teclado, mouse, observacion) VALUES ('$id', '$nombre', '$modelo', '$nserie', '$teclado', '$mouse', '$observacion')";


        $result = mysqli_query($this->conexion, $query);
        if ($result) {
            $data = new Data();
            $data->id = $id;
            $data->nombre = $nombre;
            $data->modelo = $modelo;
            $data->nserie = $nserie;
            $data->teclado = $teclado;
            $data->mouse = $mouse;
            $data->observacion = $observacion;

            return $data;

        }else {
            return null;
        }
    }

    public function update($id, $body){
        $nombre = $body['nombre'];
        $modelo = $body['modelo'];
        $nserie = $body['nserie'];
        $teclado = $body['teclado'];
        $mouse = $body['mouse'];
        $observacion = $body['observacion'];

        $query = "UPDATE Pc SET nombre = '$nombre', modelo = '$modelo', nserie = '$nserie', teclado = '$teclado', mouse = '$mouse', observacion = '$observacion' WHERE id = $id";

        $result = mysqli_query($this->conexion, $query);
        
        if ($result) {
            $data = new Data();
            $data->id = $id;
            $data->nombre = $nombre;
            $data->modelo = $modelo;
            $data->nserie = $nserie;
            $data->teclado = $teclado;
            $data->mouse = $mouse;
            $data->observacion = $observacion;

            return $data;

        }else {
            return null;
        }
    }

    public function delete($id){

        $query = "DELETE FROM Pc WHERE id = $id";

        $data = mysqli_query($this->conexion, $query);
        if ($data) {
            echo "Registro eliminado correctamente";
        }else{
            return null;
        }
    }
}

?>