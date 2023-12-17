<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>동적 원 그래프 예제</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<%
    List<Map<String, Object>> jsArray = new ArrayList<Map<String, Object>>();
    jsArray.add(new HashMap<String, Object>() {{put("key", "convenience"); put("value", 123445);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "마트"); put("value", 32500);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "쇼핑"); put("value", 27800);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "패스트푸드"); put("value", 20100);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "restaurant"); put("value", 18000);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "빵집"); put("value", 12800);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "cafe"); put("value", 12345);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "식사"); put("value", 11900);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "카페"); put("value", 10000);}});
    jsArray.add(new HashMap<String, Object>() {{put("key", "편의점"); put("value", 7000);}});
%>

<div>
    <canvas id="myDynamicPieChart" width="400" height="400"></canvas>
</div>

<script>
    var jsArray = ${jsArray}; // JSP 데이터를 JavaScript로 전달

    var labels = jsArray.map(function(item) {
        return item.key;
    });

    var dataValues = jsArray.map(function(item) {
        return item.value;
    });

    var ctx = document.getElementById('myDynamicPieChart').getContext('2d');
    var myDynamicPieChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: labels,
            datasets: [{
                data: dataValues,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)',
                    'rgba(255, 0, 0, 0.5)',
                    'rgba(0, 255, 0, 0.5)',
                    'rgba(0, 0, 255, 0.5)',
                    'rgba(128, 128, 128, 0.5)',
                ],
            }],
        },
        options: {
            tooltips: {
                callbacks: {
                    label: function(tooltipItem, data) {
                        var label = data.labels[tooltipItem.index];
                        var value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
                        return label + ': ' + value;
                    }
                }
            }
        }
    });
</script>

</body>
</html>
