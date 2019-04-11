$v="
<html>
<head>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css' >
  <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
</head>
<style>
table{font-size:10px;}
thead{color:white;}
h4{
color:orange;
}
h1{
color:darkblue;
}
h6{
color:grey;
}
thead{background-color:blue;}

</style>
<body>
    <center>
    <h1><b>COMPUTER INFO</b><h1>
    <h6>(currently showing results for '$($computername)')</h6>
    </center>
<div class='col-md-12'>
<div class='col-md-6'>
<table class='table table-responsive table-bordered'>
<h4><b>Top 5 memory utilizing system</b></h4>
<thead>
      <tr>
      <th>computername</th>
      <th>processname</th>
      <th>cpu</th>
      </tr>
</thead>
<tbody>"
$v += $a|%{
        "<tr>
           <td>$($_.computername)</td>
           <td>$($_.processname)</td>
           <td>$($_.cpu)</td>
          </tr>"
        }
$v+="</tbody>
</table>
</div>
  <div class='col-md-6'>
  <table class='table table-responsive table-bordered'>
  <h4><b>Display the service name starts with p</b></h4>
     <thead>
      <tr>
      <th>computername</th>
      <th>name</th>
      <th>status</th>
      <th>displayname</th>
      </tr>
</thead>
<tbody>"
$v += $b|%{
        "<tr>
           <td>$($_.computername)</td>
           <td>$($_.name)</td>
           <td>$($_.status)</td>
           <td>$($_.displayname)</td>
          </tr>"
        }
$v+="</tbody>
</table>
</div>
</div>

<div class='col-md-12'>
<div class='col-md-6'>
<table class='table table-responsive table-bordered'>
<h4><b>Disk freespace</b></h4>

<thead>
      <tr>
      <th>computername</th>
      <th>deviceid</th>
      <th>freespace</th>
      
      </tr>
</thead>
<tbody>"
$v += $c|%{
        "<tr>
           <td>$($_.computername)</td>
           <td>$($_.deviceid)</td>
           <td>$($_.freespace)</td>
          </tr>"
        }
$v+="</tbody>
</table>
</div>

<div class='col-md-6'>
     <table class='table table-responsive table-bordered'>
     <h4><b>Top 5 memory utilizing files in drive</b></h4>
     <thead>
      <tr>
      <th>directory</th>
      <th>name</th>
      <th>length</th>
      
      </tr>
</thead>
<tbody>"
$v += $d|%{
        "<tr>
           <td>$($_.directory)</td>
           <td>$($_.name)</td>
           <td>$($_.length)</td>
           
          </tr>"
        }
$v+="</tbody>
</table>
</div>
</div>
</body>
</html>
"
$v|out-file C:\Users\senthilnathanp\Desktop\c.html
