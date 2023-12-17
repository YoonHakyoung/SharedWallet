<style>
    /* 네비게이션 바의 선택된 항목에 대한 스타일 */
    .navbar-nav .nav-item.active,
    .navbar-nav .nav-item:hover {
        background-color: #22628D; /* 선택된 항목 또는 마우스를 올렸을 때 배경색을 변경합니다. */
        color: #ffffff; /* 선택된 항목 또는 마우스를 올렸을 때 텍스트 색상을 변경합니다. */
    }
</style>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #3498db; color: #ffffff; padding:10px;">
    <a class="navbar-brand" style="color: #ffffff; font-size: 24px;" href="<c:url value='/asset/dashboard'/>">SharedWallet</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon" style="color:#ffffff;"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/asset/dashboard'/>">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/member/profile'/>">My Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/'/>">Logout</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/asset/addAssetForm'/>">Add</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/asset/listAssets'/>">List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: #ffffff;" href="<c:url value='/asset/calender'/>">Calender</a>
            </li>
            
        </ul>
    </div>
</nav>

