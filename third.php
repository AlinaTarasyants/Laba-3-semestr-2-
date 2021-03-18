<?php
    include ("connect.php");
    $namePlayer=$_GET['player'];

    $stm = $pdo -> query("SELECT c.FID_TEAM1, c.FID_TEAM2, c.SCORE 
    FROM player a JOIN team b 
    ON a.FID_TEAM = b.Id
    JOIN GAME c 
    ON b.Id=c.FID_TEAM2 OR b.Id=c.FID_TEAM1 
    WHERE a.NAME= '$namePlayer' ");

    header('Content-Type: application/json');
    header("Cache-Control: no-cache, must-revalidate");
    $timetable = $stm->fetchAll(PDO::FETCH_OBJ);
    echo json_encode($timetable);
?>

