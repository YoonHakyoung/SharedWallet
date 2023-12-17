<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SIGN UP SUCCESS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        @font-face {
		    font-family: 'SUITE-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
        body {
            background-color: #f0f2ea;
            font-family: 'SUITE-Regular';
        }
        header {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        main {
            text-align: center;
            margin-top: 30px;
        }
        h2 {
            text-align: center;
            color: #3498db;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .btn-primary {
        	background-color: #14A2B8;
        	display: inline-block;
            padding: 10px 20px;
            width: 120px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin: 10px;
            font-family: 'SUITE-Regular';
            font-weight: 700;
            border:0;
    	}
        .btn-primary:hover {
            background-color: #117A8B;
            color: #fff; 
            border: 2px solid #fff;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/views/include/header.jsp"%>
    
    <main>
        <h2>SIGN UP SUCCESS</h2>
        <p>회원가입이 성공적으로 완료되었습니다.</p>
        <a href="/myweb/member/loginForm" class="btn btn-primary">LOGIN</a>
    </main>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp"%>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
