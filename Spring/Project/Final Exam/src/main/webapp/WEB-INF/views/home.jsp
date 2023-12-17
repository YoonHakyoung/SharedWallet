<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SharedWallet - 홈</title>
    <!-- Bootstrap CSS link (you may need to download and host locally) -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
	    @font-face {
		    font-family: 'SUITE-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
		}

        body {
            background-color: #f0f2ea;
            color: #495057;
        }

        header {
            background-color: #3498db;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-family: 'SUITE-Regular';
        }
        h2{
        	font-family: 'SUITE-Regular';
        	font-weight: 700;
        }
        
        p{
        	font-family: 'SUITE-Regular';
        	font-weight: 400;
        	margin-bottom: 10px;
        }

        main {
            text-align: center;
            margin: 50px 25px;
        }
        
        img {
	        width: 250px; /* 이미지 최대 너비를 부모 요소의 100%로 설정 */
	        height: auto; /* 높이는 자동으로 조절됨 */
    	}

        .button-container {
            display: flex;
	        flex-direction: column; /* 버튼을 세로로 배열 */
	        align-items: center; /* 가운데 정렬 */
	        margin-top: 10px; /* 버튼과 이미지 사이의 간격 조절 */
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            width: 120px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin: 10px;
            font-family: 'SUITE-Regular';
            font-weight: 700;
        }

        .login {
            background-color: #14A2B8;
            color: #fff;
        }

        .signup {
            background-color: #14A2B8;
            color: #fff;
        }

        footer {
            background-color: #3498db;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
           }
        .button:hover {
	        background-color: #117A8B;
	        color: #fff; 
	        border: 2px solid #fff;
        }
    </style>
</head>
<body>

<header>
    <h1 class="welcome">Welcome to SharedWallet</h1>
    <p class="welcometext">가족 및 친구들과 손쉽게 가계부를 관리하세요.</p>
</header>

<main>
    <!-- GIF 삽입 -->
    <img src="https://cdn.dribbble.com/users/2685751/screenshots/6854432/money-400x300.gif">

    <!-- 로그인 및 회원가입 버튼 -->
    <div class="button-container">
        <a href="/myweb/member/loginForm" class="button login">LOGIN</a>
        <a href="/myweb/member/signupForm" class="button signup">SIGN UP</a>
    </div>
</main>

<footer>
    <p>&copy; 2023 SharedWallet. All rights reserved.</p>
</footer>

<!-- Bootstrap JS dependencies (you may need to download and host locally) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
