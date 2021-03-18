var ajax = new XMLHttpRequest();
function get1()
{
    if (!ajax)
     {
        alert("Ajax не инициализирован"); return;
     }
        var s1val = document.getElementById("league_id").value;
        ajax.onreadystatechange = Update;
        var params = 'league_id=' + encodeURIComponent(s1val);
        ajax.open("GET", "first.php?"+params, true);
        ajax.send(null); 
}

function Update()
{
    if (ajax.readyState == 4) 
    {
        if (ajax.status == 200) 
        {
            // если ошибок нет
            var select = document.getElementById('output');
            select.innerHTML = ajax.responseText;
        }
        else alert(ajax.status + " - " + ajax.statusText);
        ajax.abort();
    }
}

function get2()
{
    if (!ajax)
     {
        alert("Ajax не инициализирован"); return;
     }
        var s1val = document.getElementById("first-date").value;
        var s2val = document.getElementById("second-date").value;
        ajax.onreadystatechange = UpdateSelect2;
        var params = 'first-date=' + encodeURIComponent(s1val);
        var params2 = 'second-date=' + encodeURIComponent(s2val);
        ajax.open("GET", "second.php?"+params+"&"+params2, true);
        ajax.send(null);
}

function UpdateSelect2() {
    if(ajax.readyState == 4) {
        if(ajax.status == 200) {
            var res = document.getElementById("output2");
            var result = "";
            var rows = ajax.responseXML.firstChild.children;
            result+="<tr>"
            result+="<th>Id</th>"
            result+="<th>Date</th>"
            result+="<th>Place</th>"
            result+="<th>Score</th>"
            result+="<th>FID_Team1</th>"
            result+="<th>FID_Team2</th>"
            result+="</tr>"
            for (var i = 0; i < rows.length; i++) {
                result += "<tr>";
                result += "<td>" + rows[i].children[0].textContent + "</td>";
                result += "<td>" + rows[i].children[1].textContent + "</td>";
                result += "<td>" + rows[i].children[2].textContent + "</td>";
                result += "<td>" + rows[i].children[3].textContent + "</td>";
                result += "<td>" + rows[i].children[4].textContent + "</td>";
                result += "<td>" + rows[i].children[5].textContent + "</td>";
                result += "</tr>";
                }
        res.innerHTML = result;
        }
    }
}

    function get3()
    {
    if (!ajax)
     {
        alert("Ajax не инициализирован"); return;
     }
        var s2val = document.getElementById("player").value;
        ajax.onreadystatechange = Update3;
        var params = 'player=' + encodeURIComponent(s2val);
        ajax.open("GET", "third.php?"+params, true);
        ajax.send(null);
    }

    function Update3()
    {
    if (ajax.readyState == 4) {
        if (ajax.status == 200) {
            alert(ajax.responseText);
            var rows = JSON.parse(ajax.responseText);
            var result = "";
            var res = document.getElementById("output3");
            result+="<tr>";
            result+="<th>FID_TEAM1</th>";
            result+="<th>FID_TEAM2</th>";
            result+="<th>Score</th>";
            result+="</tr>";
            for (var i = 0; i < rows.length; i++) {
                result += "<tr>";
                result += "<td>" + rows[i].FID_TEAM1 + "</td>";
                result += "<td>" + rows[i].FID_TEAM2 + "</td>";
                result += "<td>" + rows[i].SCORE + "</td>";
                result += "</tr>";
            }
            res.innerHTML = result;
            }
        else { alert(ajax.status + " - " + ajax.statusText);
        ajax.abort(); }
    }
}

