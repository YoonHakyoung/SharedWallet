<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SIGN UP</title>
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
            color: #495057;
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
           	margin-bottom :100px;
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

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 700;
            background-color: #14A2B8;
        }

        button:hover {
	        background-color: #117A8B;
	        color: #fff; 
	        border: 2px solid #fff;
        }
    </style>
</head>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp"%>

<main>
    <h2>SIGN UP</h2>
		<form action="${pageContext.request.contextPath}/member/signupConfirm" method="post">
		    <label for="m_id">ID</label>
		    <input type="text" id="m_id" name="m_id" class="form-control" required>
		
		    <label for="m_pw">PW</label>
		    <input type="password" id="m_pw" name="m_pw" class="form-control" required>
		
		    <label for="m_name">NAME</label>
		    <input type="text" id="m_name" name="m_name" class="form-control" required>
		
		    <label for="m_gender">GENDER</label>
		    <select id="m_gender" name="m_gender" class="form-control" required style="margin-bottom:16px;">
		        <option value="Man">Man</option>
		        <option value="Woman">Woman</option>
		    </select>
		
		    <label for="m_email">EMAIL</label>
		    <input type="email" id="m_email" name="m_email" class="form-control" required>
		
		    <label for="m_phone">PHONE NUMBER</label>
		    <input type="tel" id="m_phone" name="m_phone" class="form-control" required>
		
		    <label for="group_id">GROUP ID</label>
		    <input type="text" id="group_id" name="group_id" class="form-control" required>
		
		    <button type="submit">SIGN UP</button>
		</form>
</main>

<!-- Bootstrap JS dependencies (you may need to download and host locally) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
