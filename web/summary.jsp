<%-- 
    Document   : summary
    Created on : 15-Apr-2015, 9:38:59 AM
    Author     : alonch
--%>
<%@page import="travelexperts.Customer"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="travelexperts.PackageModelDB"%>
<%@page import="travelexperts.Package"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
    PackageModelDB model = new PackageModelDB();
    Customer customer = (Customer) request.getSession().getAttribute("user");
    ArrayList<Package> packages = model.getByCustomerId(customer.getId());
    NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="base/header.jsp"></jsp:include>
            <title>Travel Experts - Summary</title>
        </head>
        <body>
            <div class="container">
            <jsp:include page="base/nav.jsp"></jsp:include>
                <table class="table table-condensed">
                    <thead>
                        <tr>
                            <th>Package</th>
                            <th>Start</th>
                            <th>End</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < packages.size(); i++) {
                            Package pack = packages.get(i);
                    %>
                    <tr>
                        <td><%=pack.getName()%></td>
                        <td><%=pack.getStartDate().subSequence(0, 10)%></td>
                        <td><%=pack.getEndDate().subSequence(0, 10)%></td>
                        <td><%=currencyFormat.format(pack.getBasePrice() + pack.getAgencyCommission())%></td>

                    </tr>
                    <% }%>
                </tbody>
            </table>
            <jsp:include page="base/footer.jsp"></jsp:include>
            </div> <!-- /container -->
        </body>
    <jsp:include page="base/js.jsp"></jsp:include>
</html>