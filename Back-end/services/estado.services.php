<?php
include_once ('../repository/estado.repository.php');

class Services {

    private $repository;

    public function __construct(){
        $this->repository = new Repository();
    }

    public function findAll($idpc){
        try {

            return $this->repository->get($idpc);

        } catch (\Throwable $th) {

            echo "Error: " . $th->getMessage();
            return null;
        }
    }

    public function save($idpc, $body){
        try {

            return $this->repository->create($idpc, $body);

        } catch (\Throwable $th) {
            
            echo "Error: " . $th->getMessage();
            return null;
        }
    }

    public function update($idpc, $id, $body){
        try {
            
            return $this->repository->update($idpc, $id, $body);

        } catch (\Throwable $th) {
        
            echo "Error: " . $th->getMessage();
            return null;
        }
    }

    public function delete($id){

        try {

            return $this->repository->delete($id);

        } catch (\Throwable $th) {
           
            echo "Error: " . $th->getMessage();
            return null;
        }

    }


}


?>