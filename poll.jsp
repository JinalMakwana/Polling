<%-- 
    Document   : poll
    Created on : 5 Jan, 2017, 3:08:12 PM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            
            function poll() {

                setTimeout(function () {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {

                            document.getElementById("temp").innerHTML = xmlhttp.responseText;
                        }
                    };
                    xmlhttp.open("GET", "http://localhost:8080/WebApplication1/RES", true);                   
                    xmlhttp.send();
                }, 1000);
            }
        </script>
    </head>
    <body>
        <input type="button" name="name" value="Click Here" 
               onclick="poll()"  >
<div id="temp" ></div>

       <!-- -->


       

    </body>
</html>
