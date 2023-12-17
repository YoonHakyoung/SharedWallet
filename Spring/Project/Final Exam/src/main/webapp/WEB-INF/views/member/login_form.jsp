<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LOGIN</title>
    <!-- Bootstrap CSS link (you may need to download and host locally) -->
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

        form {
            max-width: 300px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
        	font-weight: 700;
            color: #3498db;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input.form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }

        button.btn-primary {
            width: 100%;
            padding: 10px;
            font-weight: 700;
            background-color: #14A2B8;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button.btn-primary:hover {
	        background-color: #117A8B;
	        color: #fff; 
	        border: 2px solid #fff;
        }
    </style>
</head>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp"%>
    <main>
        <h2>LOGIN</h2>
        <form action="/myweb/member/loginConfirm" method="post">
            <!-- 로그인 양식 필드들 -->
            <label for="m_id">ID</label>
            <input type="text" id="m_id" name="m_id" class="form-control" required>

            <label for="m_pw">PASSWORD</label>
            <input type="password" id="m_pw" name="m_pw" class="form-control" required>

            <button type="submit" class="btn btn-primary">LOGIN</button>
        </form>
    </main>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp"%>

    <!-- Bootstrap JS dependencies (you may need to download and host locally) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
