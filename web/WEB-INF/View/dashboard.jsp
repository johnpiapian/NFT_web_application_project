<%--
  Created by IntelliJ IDEA.
  User: johnpiapian
  Date: 8/12/22
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../Templates/Header.jsp" %>
<main class="container-fluid">
    <div class="container-sm">
        <div class="container">
            <div class="row border rounded-2 border-2 p-3 my-2">
                <a class="reset-a" href="${pageContext.request.contextPath}/portfolio">
                    <h3>My Balance</h3>
                    <h5 class="ps-4">Cash - $<%= currentUser.getBalance()%></h5>
                </a>
            </div>
            <div class="row border rounded-2 border-2 p-2 my-2">
                <h5>Watch List</h5>
            </div>
        </div>
    </div>
</main>
<%@ include file="../Templates/Footer.jsp" %>