<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Profile</title>
    <!-- Bootstrap CSS link (you may need to download and host locally) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

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

        h2 {
            font-weight: 700;
            color: #3498db;
            margin-bottom: 20px;
        }

        main {
            text-align: center;
            margin-top: 30px;
        }

        .profile-container {
            width: 300px;
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile-info {
            display: grid;
            grid-template-columns: auto 1fr;
            gap: 20px;
            margin-bottom: 10px;
        }

        .profile-item {
            text-align: left;
            padding: 5px;
        }

        .profile-item p {
            margin: 0;
        }
        .profile-value p {
            margin: 5%;
            font-weight: 900;
        }
		.profile-info .profile-value {
			padding: 5%;
        }
        
        .profile-info .profile-item {
            background-color: #f2f2f2; 
        }

        .login-message {
            color: #dc3545;
        }
        .navbar-nav {
        margin-left: auto !important;
    	}
    </style>
</head>

<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
    <main>
        <h2>My Profile</h2>
        <div class="profile-container">
            <c:if test="${not empty loggedMember}">
                <div class="profile-info">
                    <div class="profile-value">
                        <p><strong>ID</strong></p>
                    </div>
                    <div class="profile-item">
                        <p>${loggedMember.m_id}</p>
                    </div>
                    <div class="profile-value">
                        <p><strong>Name</strong></p>
                    </div>
                    <div class="profile-item">
                        <p>${loggedMember.m_name}</p>
                    </div>
                    <div class="profile-value">
                        <p><strong>Gender</strong></p>
                    </div>
                    <div class="profile-item">
                        <p>${loggedMember.m_gender}</p>
                    </div>
                    <div class="profile-value">
                        <p><strong>Email</strong></p>
                    </div>
                    <div class="profile-item">
                        <p>${loggedMember.m_email}</p>
                    </div>
                    <div class="profile-value">
                        <p><strong>Phone</strong></p>
                    </div>
                    <div class="profile-item">
                        <p>${loggedMember.m_phone}</p>
                    </div>
                    <!-- Add other profile information as needed -->
                </div>
            </c:if>

            <c:if test="${empty loggedMember}">
                <p class="login-message">로그인하고 이용바랍니다.</p>
            </c:if>
        </div>
    </main>

    <%@ include file="/WEB-INF/views/include/footer.jsp"%>

    <!-- Bootstrap JS dependencies (you may need to download and host locally) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
</body>

</html>
