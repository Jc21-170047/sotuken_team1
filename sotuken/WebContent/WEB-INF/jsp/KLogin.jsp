<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>検定申込み窓口簡略化システム</title>
<link href="style_klogin.css" rel="stylesheet" type="text/css" />
<link href="logindesignstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	String flg = (String)request.getAttribute("flg");
	String message = "システム管理者用のパスワードを入力してください";
	String style = "style=\"font-size: 20px\"";

	if(flg.equals("1")){
		message = "パスワードが違います";
		style = "style=\"color: red; font-size: 20px\"";
	}
%>
<div id="container">

		<h1>検定申込み窓口簡略化システム</h1>
		<h2 style="text-align: center">管理者用ログイン画面</h2>

	<div id="login">
		<div align="center">
			<p <%= style %>><%= message %></p>
			<form method="post" action="./Password">
			<th>パスワード：</th><th><input name="pass" type="text" style="font-size: 28px"></input></th>
			</br>
			</br>
			<button type="submit" name="klogin" style="font-size: 20px">ログイン</button>
			</form>
		</div>
	</div>
	
</div>
</body>
</html>