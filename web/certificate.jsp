<%-- 
    Document   : certificate
    Created on : May 22, 2019, 3:00:41 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <style>   .bg {
  /* The image used */
  background-image: url("assets/img/certificate.jpg") !important;
  /* Full height */
  width:800px; 
  height:600px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
@media print{
  .bg{display:inline;}
}
 </style>
    <body >
       
        <div class="bg" style="" id="printTable">
          
                <div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
    
                <br>
                <br>
                <br>
                <span align="center" ><img src="assets/img/logoC.png" alt="OCP Logo" height="40px"><br></span>
                   <span style="font-size:40px; font-weight:bold;">Certificate of Completion</span>
                   <br><br>
                   <span style="font-size:25px"><i>This is to certify that</i></span>
                   <br><br>
                   <span style="font-size:30px"><b>Anil Augustine Chalissery</b></span><br/><br/>
                   <span style="font-size:25px"><i>has completed the course</i></span> <br/><br/>
                   <span style="font-size:30px">PHP</span> <br/><br/>
                   <span style="font-size:20px">with score of <b>A</b></span> <br/><br/><br/><br/>

                   <span style="font-size:15px"><i>Dated <%String date= (new java.util.Date()).toLocaleString();
                                                            out.print(date.substring(0, 12));%></i></span><br>

                  <span style="font-size:30px"></span>

                </div>
            </div> 
                   <button onclick="printData()" >PRINT</button>
        <script>
                      function printData()
{
    window.print();
   //var divToPrint=document.getElementById("printTable");
 //  newWin= window.open("");
  // newWin.document.write(divToPrint.outerHTML);
   //newWin.print();
   //newWin.close();
}
                  </script>
        </body>
</html>
