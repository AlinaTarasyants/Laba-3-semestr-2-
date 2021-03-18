<?php
    include ("connect.php");
    $value = $_GET['first-date'];
    $value1 = $_GET['second-date'];
    $stm = $pdo -> query("SELECT * From game WHERE game.DAT BETWEEN '$value' AND '$value1'");
    $arr=$stm->fetchAll(PDO::FETCH_NUM);
    $fileXml=fopen("test.xml","a+");

    header('Content-Type: text/xml');
    header("Cache-Control: no-cache, must-revalidate");
    echo '<?xml version="1.0" encoding="utf8" ?>';
    echo "<root>";
    foreach ($arr as $row)
    {
        $Id_Game=$row[0];
        $Date_Game=$row[1];
        $Place=$row[2];
        $Score=$row[3];
        $FID1=$row[4];
        $FID2=$row[5];
        print "<game><NurseName>$Id_Game</NurseName><Date>$Date_Game</Date>
        <Department>$Place</Department> <Shift>$Score</Shift> <FID1>$FID1</FID1> <FID2>$FID2</FID2> </game>";
        fwrite($fileXml,"<game>\n\t<NurseName>$Id_Game</NurseName>\n\t<Date>$Date_Game</Date>\n\t<Department>$Place</Department>\n\t<Shift>$Score</Shift>\n\t<FID1>$FID1</FID1>\n\t<FID2>$FID2</FID2>\n</game>\r\n");
    }
    echo "</root>";
?>


 