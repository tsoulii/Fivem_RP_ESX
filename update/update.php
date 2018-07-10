<?php session_start();?>
<html>
<head>
	<title>Użytkownicy</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" href="../css/prodman.css" type="text/css" media="screen"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style type="text/css">

</style>
</head>
<?php
if($_SESSION['ACCESS_ADMIN']==1){
require_once("../configs/head_config.php");//polaczenie z baza zamowien
$num=mysqli_query($polacz,"SELECT id_user FROM user ORDER BY id_user DESC LIMIT 1");
$numer2= mysqli_fetch_assoc($num);
$numer=$numer2['id_user']+1;
?>
    <body>jesteś adminem
	
<div class="ng">Aktualizacja nie dotykać:</div>
<?php 

if(!file_exists("configs/head_config.php")){ ?>
<div style="padding-left:10px;">
	<form method="post" action="installed.php">
		<table>
			<tr>
				<td>Host bazy danych: </td>
				<td><input name="host"> </td>
			</tr>
			<tr>
				<td>Użytkownik bazy danych: </td>
				<td><input name="user"> </td>
			</tr>
			<tr>
				<td>Hasło bazy danych: </td>
				<td><input name="pass" type="password"> </td>
			</tr>
			<tr>
				<td>Nazwa bazy danych: </td>
				<td><input name="base"> </td>
			</tr>
			<tr>
				<td>Nazwa sklepu: </td>
				<td><input name="name"> </td>
			</tr>
			<tr>
				<td>Nick Super Administratora: </td>
				<td><input name="login"> </td>
			</tr>
			<tr>
				<td>Hasło Super Administratora: </td>
				<td><input name="haslo" type="password"> </td>
			</tr>
			<tr>
				<td>E-Mail Super Administratora: </td>
				<td><input name="mail" > </td>
			</tr>
			<tr>
				<td><input type="submit" value="Instaluj" name="install"></td>
			</tr>
		</table>
	</form>
</div>
<?php } else{
			$text="Sklep jest już zainstalowany!!!";
			echo '<fieldset class="warn" id="wrn">
    			<span class="warn_text">
			<br><strong>
				'.$text.'
			</strong>
			</span><br><br>
			</fieldset>';
	}
?>