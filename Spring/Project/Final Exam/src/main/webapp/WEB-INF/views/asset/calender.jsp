<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.NumberFormat" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Calendar</title>
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        @font-face {
            font-family: 'SUITE-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
            font-weight: 700;
            font-style: normal;
        }
        body{
        	font-family: 'SUITE-Regular';
        	background-color: #f0f2ea;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px; /* 테이블 아래 여백 추가 */
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: center;
            vertical-align: top;
            width: 14.2857%; /* 날짜 칸에 동일한 가로 길이 부여 */
        }

        th {
            height: 30px;
            background-color: #f8f9fa;
        }

        td {
            height: 120px;
        }

        .date {
            font-weight: bold;
            margin-bottom: 0px;
        }

        .value {
            color: #3498db;
            bottom: 20px;
            left: 50%;
            transform: translateY(70%);
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px !important;
        }
        h2 {
            text-align: center;
            color: #3498db;
            margin-top: 30px;
            margin-bottom: 1px;
        }
        main {
            text-align: center;
            margin-top: 30px;
            margin-bottom: 100px;
        }
        th.sun{
        color: #9F3434; 
	    }
	    th.sat {
	        color: #1D6799; 
	    }
        
        td.sun {
        color: #9F3434; 
	    }

	    td.sat {
	        color: #1D6799; 
	    }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>



<%
	Map<String, Integer> dataMap = (Map<String, Integer>) request.getAttribute("expenseSummary");
    
    // Java 코드를 사용하여 현재 년월을 가져오기
    java.util.Calendar cal = java.util.Calendar.getInstance();
    int year = cal.get(java.util.Calendar.YEAR);
    int month = cal.get(java.util.Calendar.MONTH) + 1; // 월은 0부터 시작하므로 1을 더함

    // 현재 월의 첫째 날의 요일과 마지막 날짜를 계산
    cal.set(year, month - 1, 1);
    int firstDayOfWeek = cal.get(java.util.Calendar.DAY_OF_WEEK);
    int lastDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);

    // 요일 배열
    String[] weekDays = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
%>

<main>
    <h2>Calendar</h2>
	<div class="container mt-5">
    <table class="table table-bordered">
        <thead>
            <tr>
                <%-- 동적으로 요일 생성 --%>
                <% for (int i = 0; i < weekDays.length; i++) { %>
		            <th scope="col" class="text-center <%= (i == 0) ? "sun" : (i == 6) ? "sat" : "" %>"><%= weekDays[i] %></th>
		        <% } %>
            </tr>
        </thead>
        <tbody>
            <tr>
                <%-- 날짜 요일 표시 행 --%>
                <% for (int i = 1; i < firstDayOfWeek; i++) { %>
                    <td></td>
                <% } %>
                <%-- 달력 날짜 표시 --%>
                <% for (int day = 1; day <= lastDay; day++) { %>
                    <td class="<%= ((firstDayOfWeek - 1 + day) % 7 == 1) ? "sun" : ((firstDayOfWeek - 1 + day) % 7 == 0) ? "sat" : "" %>">
                        <div class="date">
                            <%= day %>
                        </div>
                        <div class="value">
                            <% 
                                String dateString = String.format("%04d-%02d-%02d", year, month, day);
                                Integer value = dataMap.get(dateString);
                                if (value != null) {
                                    int amount = (Integer) value;
                                    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
                                    String formattedAmount = currencyFormat.format(amount);
                            %>
                                <%= "-" + formattedAmount %>
                            <%
                                }
                            %>
                        </div>
                    </td>
                    <%-- 토요일이면 다음 줄로 이동 --%>
                    <% if ((firstDayOfWeek - 1 + day) % 7 == 0) { %>
                        </tr><tr>
                    <% } %>
                <% } %>
            </tr>
        </tbody>
    </table>
    </div>
</main>

<!-- 부트스트랩 JavaScript 및 종속성 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>