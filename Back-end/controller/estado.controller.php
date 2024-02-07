<?php
include_once('../services/estado.services.php');

$services = new Services();

$method = $_SERVER['REQUEST_METHOD'];
$json = file_get_contents('php://input');
$body = json_decode($json, true);

header('Content-Type: application/json');

//Permisos Cors
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: PUT, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Credentials: true');

$url = $_SERVER['REQUEST_URI'];
$parts = explode('/', $url);
$idpc  = end($parts);
$id = prev($parts);
// $id = end($parts);

switch ($method) {

    case 'OPTIONS':
        http_response_code(200);
        break;
        
    case 'GET':
        echo json_encode($services->findAll($idpc));
        break;

    case 'POST':
        echo json_encode($services->save($idpc, $body));
        break;

    case 'PUT':
        echo json_encode($services->update($idpc, $id, $body));
        break;

    case 'DELETE':
        echo json_encode($services->delete($id));
        break;
    
    default:
        http_response_code(405);
        echo json_encode(["error" => "Method Not Allowed"]);
        break;
}

?>