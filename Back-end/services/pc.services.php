<?php
include_once('../repository/pc.repository.php');

class Services {

    private $repository;

    public function __construct(){
        $this->repository = new Repository();
    }

    public function findAll(){
        try {

            return $this->repository->get();

        } catch (\Throwable $th) {

            echo "Error: " . $th->getMessage();
            return null;
        }
    }

    public function getByid($id){
        try {

            return $this->repository->getByid($id);

        } catch (\Throwable $th) {

            echo "Error: " . $th->getMessage();
            return null;
        }
    }

    public function save($body){
        try {

            return $this->repository->create($body);
            
        } catch (\Throwable $th) {

            echo "Error: ". $th->getMessage();
            return null;
        }
    }

    public function update($id, $body){
        try {
            
            return $this->repository->update($id, $body);
            
        } catch (\Throwable $th) {

            echo "Error: ". $th->getMessage();
            return null;
        }
    }

    public function delete($id){
        try {
            
            return $this->repository->delete($id);

        } catch (\Throwable $th) {
        
            echo "Error: ". $th->getMessage();
            return null;
        }
    }

}
?>