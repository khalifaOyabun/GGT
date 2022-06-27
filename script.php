<?php

$servername = 'localhost';
$dbname = 'e_carnet';
$username = 'root';
$password = '';

try {
    $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
} catch (Exception $e) {
    die( "Problème de connection" . $e->getMessage());
}

$table = ['antecedant_medicaux', 'constantes', 'contenir', 'docteur', 'enfant', 'etat_naiss', 'grossesse', 'medicaments', 'mere', 'pere', 'prelever', 'prescription', 'prescrire', 'rendez_vous', 'vaccin', 'vaccination'];



for ($i=0; $i < count($table); $i++) { 
    $req1 = "ALTER TABLE $table[$i] ADD supprimer BOOLEAN";
    $req2 = "ALTER TABLE $table[$i] ADD actif BOOLEAN";
    $req3 = "ALTER TABLE $table[$i] ADD date_suppression DATETIME";
    $req4 = "ALTER TABLE $table[$i] ADD date_modification DATETIME";
    $req5 = "ALTER TABLE $table[$i] ADD date_creation DATETIME";

    $requetes = [$req1,$req2,$req3,$req4,$req5];

    for ($j=0; $j < count($requetes); $j++) { 
        $connect->query($requetes[$j]);
    }
}