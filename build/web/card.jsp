<%-- 
    Document   : card
    Created on : Sep 26, 2021, 11:37:38 AM
    Author     : deborah
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@page import="Dao.GeneralDao"%>
<%@page import="Domain.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
    </head>
    <body>
       
         <hr>
   
           <h1 align="center">Vaccination Card</h1>
           <p align="center">--------------------------------- ---------------</p>
             <%
            GeneralDao dao = new GeneralDao(Patient.class);
            String nationId = request.getParameter("nationId");
//           List<Patient> pt =dao.listAll();
            Patient pt = (Patient)dao.getById(nationId);
         //   for(Patient ptt: pt){
            %>
            <p  align="center">
           <label>Name:<%= " "+(pt.getFirstName() ) +" "+   pt.getLastName() %></label>
           
           <br><br>
        <table border="2" cellpadding="9" cellspacing="0" align="center">
                    <th>Vaccine</th>
                    <th>Vaccine Name</th>
                    <th>Date</th>
                    <th>Vaccine Site</th>
                    
                    <tbody>
                      <tr>
                <td><%= pt.getVaccine() %></td>
                <td><%= pt.getVaccination_Name() %></td>
               <td><%= pt.getVaccination_Date() %></td>
                <td><%= pt.getVaccine_Site() %></td>
               
            </tr>
               </tbody>
           
            <br><br>
             
            </table>
            <button>DOWNLOAD CARD</button>
             <td><a href="/App1/form.jsp" id="nav">BACK</a></td>  
           <br><br>
            </p>
    </body>
</html>
