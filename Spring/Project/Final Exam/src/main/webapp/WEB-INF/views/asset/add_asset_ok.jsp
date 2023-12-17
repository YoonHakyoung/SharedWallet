<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Asset Success</title>
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

        .container {
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            color: #3498db;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .btn-container {
            margin-top: 30px;
        }

        .btn-primary,
        .btn-secondary {
        	background-color: #14A2B8;
        	display: inline-block;
            padding: 10px 20px;
            width: 160px;
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


        .btn-container .btn-primary:hover {
            background-color: #117A8B;
            color: #fff; 
            border: 2px solid #fff;
        }

        .btn-container .btn-secondary:hover {
            background-color: #117A8B;
            color: #fff; 
            border: 2px solid #fff;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 text-center">
            <h2 class="text-success mb-4">SIGN UP SUCCESS</h2>
        	<p>지출 내역이 성공적으로 등록되었습니다.</p>
        </div>
    </div>

    <div class="row justify-content-center btn-container">
        <div class="col-md-6 text-center">
            <p class="lead">
                <a href="<%= request.getContextPath() %>/asset/addAssetForm" class="btn btn-primary btn-lg">다시 등록하기</a>
            </p>
        </div>
        <div class="col-md-6 text-center">
            <p class="lead">
                <a href="<%= request.getContextPath() %>/asset/listAssets" class="btn btn-secondary btn-lg">지출 내역 보기</a>
            </p>
        </div>
    </div>
</div>

<!-- Bootstrap JS dependencies (you may need to download and host locally) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
