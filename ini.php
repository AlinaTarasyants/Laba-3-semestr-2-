<?php
  include "connect.php";
  global $pdo;
  $stm = $pdo -> query('SELECT DISTINCT league FROM team')->fetchAll(PDO::FETCH_COLUMN);
  $stm1= $pdo -> query('SELECT DISTINCT name FROM player')->fetchAll(PDO::FETCH_COLUMN);
?>