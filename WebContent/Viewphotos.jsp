<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<script src="validations.js" type="text/javascript"></script>
	<script type="text/javascript" src="jquery-1.9.1.min.js"></script>
	<title>Online Lab Services System</title>
	<link href="style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		$(document).ready(function(){
			
		    $("#cities").mouseover(function(){
		    	$("#citysub").show();
		    	
		    });
		    $("#cities").mouseout(function(){
		    	$("#citysub").hide();
		    });
		    $("#post").mouseover(function(){
		    	$("#postsub").show();
		    });
		    $("#post").mouseout(function(){
		    	$("#postsub").hide();
		    });
		    $("#review").mouseover(function(){
		    	$("#reviewsub").show();
		    });
		    $("#review").mouseout(function(){
		    	$("#reviewsub").hide();
		    });
		    
		});
	</script>
</head>
<body>
	<div id="contain">
	
	<div id="header">
	<h1> DESS RESORTS </h1>
	</div>
	<div class="navigation">
	
	<ul class="nav">
		<li><a href="#">&nbsp;</a></li>
	 	<li><a href="#">&nbsp;</a></li>
	 	<li><a href="#">&nbsp;</a></li>
	  	<li><a href="#"><%= session.getAttribute("uname") %></a></li>
	  	<li><a href="Logout.jsp">Logout</a></li>
	
	  </ul>
	
	</div><br/><br/><br/>
	<div id="leftcol">
		<div id="navcontainer">
			<ul>
			 	<li id="cities"><a href="#" >Gallery</a>
			 		<ul id="citysub" hidden >
			 			<li class="sublistmargin"><a href="intermediate.jsp?city=Hyderabad">Hyderabad</a></li>
			 			<li class="sublistmargin"><a href="intermediate.jsp?city=Goa">GOA</a></li>
			 			<li class="sublistmargin"><a href="intermediate.jsp?city=Varanasi">Varanasi</a></li>
			 			<li class="sublistmargin"><a href="intermediate.jsp?city=Coorg">COORG</a></li>
			 		</ul>
			 	</li>
			 	<li id="review"><a href="#">Review</a>
				 	<ul id="reviewsub" hidden >
				 			<li class="sublistmargin"><a href="reviewintermediate.jsp?city=Hyderabad">Hyderabad</a></li>
			 			<li class="sublistmargin"><a href="reviewintermediate.jsp?city=Goa">GOA</a></li>
			 			<li class="sublistmargin"><a href="reviewintermediate.jsp?city=Varanasi">Varanasi</a></li>
			 			<li class="sublistmargin"><a href="reviewintermediate.jsp?city=Coorg">COORG</a></li>
				 	</ul>
			 	</li>
			 	<li id="post"><a href="Welcome.jsp">Post</a>
					<ul id="postsub" hidden>
			 			
			 		</ul>
				</li>
			 </ul>
		</div>
	</div>
	
	<div id="content">
	
		<h2 style="text-align: left;"><%=request.getAttribute("city") %></h2>
		<% ArrayList<String>  arr=(ArrayList)request.getAttribute("images");
		for (String str : arr) {
			
			String link="uploads/"+str;
			 // out.print(link);
			%>	
			<img src="<%=link %>"  style="width:180px;height:160px;">
		
		<% }%> 
		
	
	
	</div>
	
	
	<div id="footer">
	
	<p class="style5 style6">
	Copyright � 2015 | All Rights Reserved  </p>
	
	
	</div>
	</div>
</body>
</html>
