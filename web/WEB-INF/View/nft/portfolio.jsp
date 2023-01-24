<%--
  Created by IntelliJ IDEA.
  User: johnpiapian
  Date: 1/20/23
  Time: 6:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Domain.Nft" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../../Templates/Header.jsp" %>
<% List<Nft> nfts = (List<Nft>) request.getAttribute("nfts"); %>

<main class="container-fluid">
    <div class="container-sm">
        <div class="container py-4">
            <div class="row border rounded-2 border-2 p-3 my-2">
                <h3>My Balance</h3>
                <h5 class="ps-4">Cash - $<%= currentUser.getBalance()%></h5>
                <h5 class="ps-4">Assets - $<%= currentUser.getBalance() * 2%></h5>
                <h5 class="ps-4">Total - $<%= currentUser.getBalance() * 3%></h5>
            </div>
            <div class="row border rounded-2 border-2 p-3 pb-5 my-2">
                <h3 class="py-3">My NFTs</h3>
                <div class="row row-cols-1 row-cols-md-3">
                    <% for (Nft nft : nfts) {%>
                    <div class="col">
                        <div class="card h-100 nft-card">
                            <div class="card-header">
                                <h5 class="card-title text-center"><%= nft.getTitle() %></h5>
                            </div>
                            <img src="<%= nft.getPicture() %>" class="card-img-top nft-card-img" alt="...">
                            <div class="card-body">
                                <h5 class="card-title text-end">$<%= nft.getPrice() %></h5>
                            </div>
                            <!--<div class="card-footer">
                            </div>-->
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</main>
<%@ include file="../../Templates/Footer.jsp" %>
