<%-- 
    Document   : results
    Created on : Sep 29, 2017, 3:05:23 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
    </head>
    
    <%
        String firstName = request.getParameter("first");
        String lastName = request.getParameter("last");
        String IDWorker = request.getParameter("ID");
        double Hoursworked = Double.parseDouble(request.getParameter("hoursworked"));
        double Hourlypay = Double.parseDouble(request.getParameter("hourlypay"));
        double Hsovertime = Hoursworked - 40;
        double overtimerate = 1.5 * Hourlypay;
        double grosspay;
        double regularhours = 40;
        double regularpay;
        double overtimepay;
        if (Hoursworked > 40) {
        overtimepay = Hsovertime * overtimerate;
        regularpay = regularhours * Hourlypay;
        grosspay = regularpay + overtimepay;}
        else {
                grosspay = Hoursworked * Hourlypay;
    }
        double pretax = Double.parseDouble(request.getParameter("pre-tax"));
        double taxablepay = grosspay - pretax;
        double taxamount;
        if (grosspay < 500) { taxamount = taxablepay * 0.18 ;}
        else {taxamount = taxablepay * 0.22;}
        double posttaxpay = taxablepay - taxamount;
        double Posttax = Double.parseDouble(request.getParameter("post-tax"));
        double netpay = posttaxpay - Posttax;
%>
    
    
    <body>
        <h1>Salary Information</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>First Name:</td>
                    <td><%= firstName %></td>
                </tr>
                
                 <tr>
                    <td>Last Name:</td>
                    <td><%= lastName %></td>
                </tr>
                
                 <tr>
                    <td>ID Worker:</td>
                    <td><%= IDWorker %></td>
                </tr>
                
                 <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= Hoursworked %></td>
                </tr>
                
                 <tr>
                    <td>Hourly Rate:</td>
                    <td><%= Hourlypay %></td>
                </tr>
                
                 <tr>
                    <td># Hours Overtime:</td>
                    <td><%= Hsovertime %></td>
                </tr>
                
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtimerate %></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%= grosspay %></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretax %></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablepay %></td>
                </tr>
                
                 <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxamount %></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= Posttax %></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= posttaxpay %></td>
                </tr>
                 
                 <tr>
                    <td>Net Pay:</td>
                    <td> <td><%= netpay %></td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
