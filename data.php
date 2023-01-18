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
        $begin = isset($_GET['begin']) ? $_GET['begin'] : 0;
        $query = "SELECT * FROM destinasi ORDER BY nama ASC LIMIT {$begin}, 9";
        $sql = $this->db->query($query);
        $data = [];
        while ($row = $sql->fetch_assoc()) {
            // if (file_exists("assets/{$row['film_id']}.jpg")) {
            //     $row['thumbnail'] = "assets/{$row['film_id']}.jpg";
            // } else {
            //     $row['thumbnail'] = "assets/no_image.jpg";
            // }
            array_push($data, $row);
        }

        header("Content-Type: application/json");
        echo json_encode($data);
    }

    function detail($id)
    {
        $query = "SELECT * FROM destinasi WHERE id = {$id}";
        $sql = $this->db->query($query);
        $data = $sql->fetch_assoc();

        header("Content-Type: application/json");
        echo json_encode($data);
    }

    function create($data)
    {
        $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
        $path = 'img/'; // upload directory
        if ($_FILES['file']) {
            $img = $_FILES['file']['name'];
            $tmp = $_FILES['file']['tmp_name'];

            $ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));

            $final_image = rand(1000, 1000000) . $img;

            if (in_array($ext, $valid_extensions)) {
                $path = $path . strtolower($final_image);
                if (move_uploaded_file($tmp, $path)) {

                    foreach ($data as $key => $value) {
                        $value = is_array($value) ? trim(implode(',', $value)) : trim($value);
                        $data[$key] = (strlen($value) > 0 ? $value : NULL);
                    }

                    var_dump($data);

                    $query = 'INSERT INTO destinasi VALUES(NULL, ?, ?, ?, ?, ?, ?, ?)';
                    $sql = $this->db->prepare($query);
                    $sql->bind_param(
                        'isssiss',
                        $data['kategori'],
                        $path,
                        $data['nama'],
                        $data['lokasi'],
                        $data['harga'],
                        $data['jam_buka'],
                        $data['deskripsi'],
                    );
                    try {
                        $sql->execute();
                    } catch (\Exception $e) {
                        $sql->close();
                        http_response_code(500);
                        die($e->getMessage());
                    }
                    $sql->close();
                }
            } else {
                echo 'invalid';
            }
        }
    }

    function update($data)
    {
        $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
        $path = 'img/'; // upload directory
        if ($_FILES['file']) {
            $img = $_FILES['file']['name'];
            $tmp = $_FILES['file']['tmp_name'];

            $ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));

            $final_image = rand(1000, 1000000) . $img;

            if (in_array($ext, $valid_extensions)) {
                $path = $path . strtolower($final_image);
                if (move_uploaded_file($tmp, $path)) {

                    foreach ($data as $key => $value) {
                        $value = is_array($value) ? trim(implode(',', $value)) : trim($value);
                        $data[$key] = (strlen($value) > 0 ? $value : NULL);
                    }

                    var_dump($data);

                    $query = 'UPDATE destinasi SET kategori_id = ?, image = ?, nama = ?, lokasi = ?, harga = ?, jam_buka = ?, deskripsi = ? WHERE id = ?';
                    $sql = $this->db->prepare($query);
                    $sql->bind_param(
                        'isssissi',
                        $data['kategori'],
                        $path,
                        $data['nama'],
                        $data['lokasi'],
                        $data['harga'],
                        $data['jam_buka'],
                        $data['deskripsi'],
                        $data['id']
                    );
                    try {
                        $sql->execute();
                    } catch (\Exception $e) {
                        $sql->close();
                        http_response_code(500);
                        die($e->getMessage());
                    }
                    $sql->close();
                }
            } else {
                foreach ($data as $key => $value) {
                    $value = is_array($value) ? trim(implode(',', $value)) : trim($value);
                    $data[$key] = (strlen($value) > 0 ? $value : NULL);
                }

                $query = 'UPDATE destinasi SET kategori_id = ?, nama = ?, lokasi = ?, harga = ?, jam_buka = ?, deskripsi = ? WHERE id = ?';
                $sql = $this->db->prepare($query);
                $sql->bind_param(
                    'ississi',
                    $data['kategori'],
                    $data['nama'],
                    $data['lokasi'],
                    $data['harga'],
                    $data['jam_buka'],
                    $data['deskripsi'],
                    $data['id']
                );
                try {
                    $sql->execute();
                } catch (\Exception $e) {
                    $sql->close();
                    http_response_code(500);
                    die($e->getMessage());
                }
                $sql->close();
            }
        }
    }

    function updatePopular($data)
    {

        foreach ($data as $key => $value) {
            $value = is_array($value) ? trim(implode(',', $value)) : trim($value);
            $data[$key] = (strlen($value) > 0 ? $value : NULL);
        }

        $query =
            'INSERT INTO popular (id, destinasi_id) VALUES  (1, ?), (2, ?), (3, ?), (4, ?) ON DUPLICATE KEY UPDATE destinasi_id = VALUES(destinasi_id);';
        $sql = $this->db->prepare($query);
        $sql->bind_param(
            'iiii',
            $data['destinasi1'],
            $data['destinasi2'],
            $data['destinasi3'],
            $data['destinasi4']
        );

        try {
            $sql->execute();
        } catch (\Exception $e) {
            $sql->close();
            http_response_code(500);
            die($e->getMessage());
        }
        $sql->close();
    }

    function delete($id)
    {
        $query = 'DELETE FROM destinasi WHERE id = ?';
        $sql = $this->db->prepare($query);
        $sql->bind_param(
            'i',
            $id,
        );
        try {
            $sql->execute();
        } catch (\Exception $e) {
            $sql->close();
            http_response_code(500);
            die($e->getMessage());
        }
        $sql->close();
    }
}

$data = new Destinasi();
switch ($_GET['action']) {
    case 'create':
        $data->create($_POST);
        break;
    case 'detail':
        $data->detail($_GET['id']);
        break;
    case 'update':
        $data->update($_POST);
        break;
    case 'updatePop':
        $data->updatePopular($_POST);
        break;
    case 'delete':
        $data->delete($_GET['id']);
        header("location:" . $_SERVER['HTTP_REFERER']);
        break;
    default:
        $data->read();
        break;
}
