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
        	
<link href='http://fonts.googleapis.com/css?family=Arizonia' rel='stylesheet' type='text/css'>
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
                   <span style="font-size:25px"><i>This is presented to</i></span>
                   <br><br>
                   <span style="font-size:30px"><b>Anil Augustine Chalissery</b></span><br/><br/>
                   <span style="font-size:25px"><i>in recognition of his/her work and dedication in completing the</i></span> <br/><br/>
                   <span style="font-size:30px">PHP</span> <br/><br/>
                   <span style="font-size:20px"><i>course under the guidance of</i></span> <br/>
                  <span style="font: 400 40px/1.3 'Arizonia', Helvetica, sans-serif;
  color: #2b2b2b;
  text-shadow: 4px 4px 0px rgba(0,0,0,0.1); "> jaffer</span><br>
  <span style="font-size:15px">(professor at vidy academy)</span><br>
                   <span style="font-size:15px"><i>Awarded this <%String date= (new java.util.Date()).toLocaleString();
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
