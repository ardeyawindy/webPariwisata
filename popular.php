<?php

include('db.php');

class Destinasi
{
    private $db;

    function __construct()
    {
        $this->db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if ($this->db->connect_error) {
            http_response_code(500);
            die("Connection Failed: {$this->db->connect_error}");
        }
    }

    function __destruct()
    {
        $this->db->close();
    }

    function read()
    {
        $query = "SELECT * FROM destinasi ORDER BY nama";
        $sql = $this->db->query($query);
        $data = [];
        while ($row = $sql->fetch_assoc()) {
            array_push($data, $row);
        }

        header("Content-Type: application/json");
        echo json_encode($data);
    }

    function popular()
    {
        $query = "SELECT * FROM popular INNER JOIN destinasi ON popular.destinasi_id=destinasi.id ORDER BY popular.id;";
        $sql = $this->db->query($query);
        $data = [];
        while ($row = $sql->fetch_assoc()) {
            array_push($data, $row);
        }

        header("Content-Type: application/json");
        echo json_encode($data);
    }

    function detail()
    {
        $query = "SELECT * FROM popular ORDER BY id";
        $sql = $this->db->query($query);
        $data = [];
        while ($row = $sql->fetch_assoc()) {
            array_push($data, $row['destinasi_id']);
        }

        header("Content-Type: application/json");
        echo json_encode($data);
    }
}

$data = new Destinasi();
switch ($_GET['action']) {
    case 'popular':
        $data->popular();
        break;
    case 'detail':
        $data->detail();
        break;
    default:
        $data->read();
        break;
}
