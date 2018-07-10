<?php session_start();?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<style type="text/css">

</style>
</head>
<?php
if($_SESSION['ACCESS_ADMIN']>=1){
require_once("../../configs/head_config.php");//polaczenie z baza zamowien
$dat=date("Y-m-d H:m:s");
?>
    <body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="active navbar-brand" href="#">Aktualizator</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="../../home.php">Home</a></li>
	  <li><a href="install.sql">SQL</a></li>
    </ul>
	<ul class="nav navbar-nav navbar-right">
	<li><a href="#" onClick="">Wyloguj</a></li>

	
    </ul>
  </div>
</nav>
<div class="container" style="margin-top:60px;">
<div class="row">
	<div class="col-md-12">
	<?php 
	$query2 = mysqli_query($polacz,"SELECT KIEDY,imie,nazwisko,password FROM system_logs s INNER JOIN user u on s.KTO = u.`id_user` WHERE `CO`='Aktualizacja' ORDER BY `KIEDY` DESC");
	$result = mysqli_fetch_array($query2);
	$lastupdate=$result[0];
	$kto=$result[1].' '.$result[2];
	
	$query3 = mysqli_query($polacz,"SELECT password FROM user WHERE `id_user`='".$_SESSION['ID']."'");
	$result2 = mysqli_fetch_array($query3);
	$pass=$result2[0];
	

	
	if(isset($_POST['install'])){
	$has=md5($_POST['haslo']);
	if($has==$pass){
	if(!$polacz){
		echo' BRAK DOSTEPU DO BAZY';}
		else {
			$text='<div class="alert alert-success" role="alert"><b>Aktualizacja zakończona sukcesem</b></div>';
			echo $text.'<meta http-equiv="refresh" content="2; url=install.php">';
	// wczytanie starych danych
	// otwarcie pliku do odczytu
	$fp = fopen("versja.txt", "r");
	//odczytanie danych
	$stareDane = fread($fp, filesize("versja.txt"));
	// zamknięcie pliku
	fclose($fp);
	// stworzenie nowych danych
	$noweDane = $stareDane;

	// zapisanie nowych danych
	// otwarcie pliku do zapisu
	$fp = fopen("aversja.txt", "w");
	// zapisanie danych
	fputs($fp, $noweDane);
	// zamknięcie pliku
	fclose($fp);
		}	
	}else{echo '<div class="alert alert-warning" role="alert">Złe hasło</div>';}
	}
	?>
	</div>
	<div class="col-md-6">
	<div class="panel panel-default">
  <div class="panel-heading"><b>Aktualizator</b></div>
  <div class="panel-body">
    <form method="post" action="install.php">
		<table>
			<tr>
				<td>Potwierdź hasło: </td>
				<td><input name="haslo" type="password"> </td>
			</tr>
			<tr>
				<td><input type="submit" value="Instaluj" name="install"></td>
			</tr>
		</table>
	</form>
  </div>
</div>
	
	<div class="panel panel-default">
		<div class="panel-heading"><b>Baza danych</b></div>
		<div class="panel-body">
		<?php
$file = file('E:\KOPIA_BAZY_DANYCH\a_log.txt');
$last = $file[count($file)-1];
echo "Ostatnia kopia została wykonana {$last}.";
?>
		</div>
	</div>
	</div>
	
	
	
	<div class="col-md-6">
	<?php
// otwarcie pliku do odczytu
$fp = fopen("versja.txt", "r");
//odczytanie danych
$stareDane = fread($fp, filesize("versja.txt"));
// zamknięcie pliku
fclose($fp);

$fp = fopen("aversja.txt", "r");
//odczytanie danych
$aversja = fread($fp, filesize("aversja.txt"));
// zamknięcie pliku
fclose($fp);
?>
	<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"><b>Wersja systemu</b></h3>
  </div>
  <div class="panel-body">
   <h4>Aktualna wersja: </h4>

<?php echo $aversja;?>
<h4>Nowa wersja:</h4>
<?php 
if($aversja!=$stareDane){echo '<h3>'.$stareDane.' <span class="label label-success">UPDATE</span>';}
if($aversja==$stareDane){echo $stareDane;}

?>
 <h4>Ostatnia aktualizacja:</h4><?php echo $lastupdate;?>
 
 <h4>Wykonał aktualizację:</h4><?php echo $kto;?>
  </div>
</div>
	
	
	

</div>
</div>
<div class="row">
<?php if($aversja!=$stareDane){echo '<div class="col-md-6">
	<div class="panel panel-warning">
		<div class="panel-heading"><h1><b>System wymaga aktualizacji!</b></div>
		<div class="panel-body">
		Nowe funkcje wymagają zmiany w bazie danych.
		</div>
	</div>
</div>';
}else {echo '<div class="col-md-6">
	<div class="panel panel-success"><div class="panel-heading"><h1><b>System sprawny!</b></div>
		<div class="panel-body">
		Ta aktualizacja nie zmienia nic w bazie danych.
		</div>
	</div>
</div>';}
?>

<div class="col-md-6">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title"><b>Co nowego</b></h3>
  </div>
  <div class="panel-body">
  CTP <span class="label label-success">Update</span><br>
  Druk <span class="label label-success">Update</span><br>
  GIT <span class="label label-success">NEW</span><br>
  Panel administracji kont użytkowników (zmiana uprawnień, e-mail)<span class="label label-success">ONLINE</span><br>
  Kolejność procesu produkcyjnego<span class="label label-warning">NEW</span><br>
  Kolejność czynności na stanowiskach<span class="label label-warning">NEW</span><br>
</div>

</div></div>
</div>
</div>





<?php 

}else{echo '<div class="alert alert-danger" role="alert">
  <a href="#" class="alert-link">BRAK DOSTĘPU</a>
</div><meta http-equiv="refresh" content="1; url=../index.php">';}
?>