<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

function dbconn() {
    
    $db = ['conn'=>false, 'err'=>false];
    
    try {
        $db['conn'] = new PDO ('mysql:host=localhost;dbname=jeux_video', 'userName', 'dbPassword');
        $db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch (PDOException $e) {
        $db['err'] = $e;
        //print('DB connection error: '.$e -> getMessage());
    }
    finally {
        return $db;
    }
}

//$test = dbconn();
//print var_dump($test);
//$test = null;
?>