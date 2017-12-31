<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<body>
	<div>
		<div>
			<h1>Spring Boot JSP Example</h1>
			<h2>Hello ${message}</h2>
			<br>
<input type="button" id="Shareitem" name="Shareitem" value="Shareitem"></dd>
			Click on this <strong><a href="next">link</a></strong> to visit another page.
		</div>
	</div>
	  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script type ="text/javascript">
	  $("#Shareitem").click(function(e){
	      e.preventDefault();
       $.ajax({ 
		   type: "GET",
           crossDomain: true,
		   contentType: 'jsonp',
		   url: "http://staging1flutterwave.co:8080/pwc/rest/card/mvva/pay",
		   success: function(data){ 
			   console.log("success",data);
		    },
		    error: function(XMLHttpRequest, textStatus, errorThrown) { 
		        console.log("Status: " + textStatus); console.log("Error: " + errorThrown); 
		    }   
		});
	  });
	
	
	</script>
</body>
</html>
