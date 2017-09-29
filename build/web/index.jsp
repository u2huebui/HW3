<%-- 
    Document   : index
    Created on : Sep 29, 2017, 3:50:05 AM
    Author     : Hue Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="first" value="" size="50"></td>  
                    </tr>
                     <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="last" value="" size="50"></td>  
                    </tr>
                    <tr>
                        <td>ID Worker:</td>
                        <td><input type="text" name="ID" value="" size="50"></td>  
                    </tr>
                     <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursworked" value="" size="50"></td>  
                    </tr>
                     <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hourlypay" value="" size="50"></td>  
                    </tr>
                     <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pre-tax" value="" size="50"></td>  
                    </tr>
                     <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="post-tax" value="" size="50"></td>  
                    </tr>
                    
                </tbody>
                <br>

        </table>
            <br>
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
        </form>
    </body>
</html>
