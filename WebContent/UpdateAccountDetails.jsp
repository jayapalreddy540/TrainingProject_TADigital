<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TADigital</title>
		<link rel="stylesheet" href="css/custom1.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap.icon-large.css"> 
	</head>
	<body>
	<%
		out.println("<p>"+session.getId()+"</p>");
		out.println("<p>"+session.isNew()+"</p>");
		out.println("<p>"+new Date(session.getCreationTime())+"</p>");
		
		String email=(String)session.getAttribute("SESSION_EMAIL");
		if(email==null){
			response.sendRedirect("index.jsp");
		}
	%>
	<!-- HEADER -->
		<div class="container-fluid">
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid row">
			    <div class="col-sm-1"></div>
			    <div class="col-sm-10">
				    <div class="navbar-header">
				      <div class="navbar-brand">Contact Us on +91 40 66217777</div>
				    </div>
				    <ul class="nav navbar-nav nav-pills navbar-right">
				      <li>
				       <a href="#">
				      		<span class="glyphicon glyphicon-log-out"></span> Sign In
				       </a>
				      </li>
				      <li>
				       	<a href="#">
				      		<span class="glyphicon glyphicon-user"></span> Sign Up
				      	</a>
				      </li>
				      <li>
				       	<a href="#">
				      		<span class="glyphicon glyphicon-user"></span> Vendor Sign In
				      	</a>
				      </li>
				      <li>
				       	<a href="#">
				      		<img src="images/facebook.png" width="20px">
				      	</a>
				      </li>
				      <li>
				       	<a href="#">
				      		<span><img src="images/google-plus.png" width="20px"></img></span>
				      	</a>
				      </li>
				      <li>
				       	<a href="#">
				      		<span><img src="images/twitter.png" width="20px"></img></span>
				      	</a>
				      </li>
				      <li>
				       	<a href="#">
				      		<span class="glyphicon glyphicon-envelope"></span>
				      	</a>
				      </li>
				    </ul>
			    </div>
			    <div class="col-sm-1"></div>
			  </div>
			</nav>
			<nav class="navbar">
			  <div class="container-fluid row">
			    <div class="col-sm-1"></div>
			    <div class="col-sm-10">
			    <img src="images/logo.png" width="140px" height="40px"></img>
				    <ul class="nav navbar-nav navbar-right mr-auto">
				      <li class="nav-item dropdown">
				      	<a href="#" class="nav-link dropdown-toggle">Electronics <span class="glyphicon glyphicon-chevron-down"></span></a>
				       </li>
				      <li>
				      	<a href="#" class="nav-link dropdown-toggle">Men <span class="glyphicon glyphicon-chevron-down"></span></a>
				      </li>
				      <li>
				      	<a href="#" class="nav-link dropdown-toggle">Women <span class="glyphicon glyphicon-chevron-down"></span></a>
				      </li>
				      <li>
				      	<a href="#" class="nav-link dropdown-toggle">Baby & Kids <span class="glyphicon glyphicon-chevron-down"></span></a>
				      </li>
				      <li>
				      	<a href="#" class="nav-link dropdown-toggle">Home & Furniture <span class="glyphicon glyphicon-chevron-down"></span></a>
				      </li>
				    </ul>
			    </div>
			    <div class="col-sm-1"></div>
			  </div>
			</nav>
			<nav class="navbar" style="background-image:url('images/texture-bw.png');">
			  <div class="container-fluid nav3 row">
			    <div class="col-sm-1"></div>
			    <div class="col-sm-10">
				    <div class="navbar-header">
				      <div class="navbar-brand bold">Sign Up/Sign In</div>
				    </div>
				    <ul class="nav navbar-nav navbar-right ">
				       <li><a href="#">Home</a></li>
				       <li><a href="#">Sign Up or Sign In</a></li>
				    </ul>
			    </div>
			    <div class="col-sm-1"></div>
			  </div>
			</nav>
			  
	<!-- END OF HEADER -->
	
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-8">
			<br/>
				<div>
					<div><h4> Change your personal details or your password here</h4></div>
			 	</div>
			 	<hr/>
				<div>
					 <div><h3><b>CHANGE PASSWORD</b></h3></div>
					 <br/>
				  	 <form name="passwordReset" action="changePassword" method="post">
					    	<div class="form-group">
					    		<label for="">Old password</label>
					    		<input type="password" class="form-control" name="oldPassword" required />
					    	</div>
					    	<div>
					    		<div class="row">
						    		<div class="form-group">
							    			<div class="col-sm-6">
							    				<label for="">New Password</label>
							    				<input type="password" class="form-control" name="newPassword" required />
							    			</div>
							    	
							    			<div class="col-sm-6">
							    				<label for="">Retype Password</label>
							    				<input type="password" class="form-control" name="retypePassword" required />
							    			</div>
							    	</div>
					    		</div>
					    		<br/>
					    	</div>
					    	<div class="form-group mx-sm-3 mb-2 text-center">
						    	<button type="submit" name="resetPassword" class="btn-sm">
					      			<span class="glyphicon glyphicon-lock"></span> SAVE NEW PASSWORD
						    	</button>
					    	</div>
					  </form>
					<hr/>
					<br/>
				 </div>
			     <div>
					<div><h3><b>PERSONAL DETAILS</b></h3></div>
					<br/>
					<form name="personalDetails" action="updateAccountDetails" method="post">
						<div>
					    		<div class="row">
						    		<div class="form-group">
							    			<div class="col-sm-6">
							    				<label for="">First Name</label>
							    				<input type="text" class="form-control" name="fname" required />
							    			</div>
							    	
							    			<div class="col-sm-6">
							    				<label for="">Last Name</label>
							    				<input type="text" class="form-control" name="lname" required />
							    			</div>
							    	</div>
					    		</div>
					    		<br/>
					    		<div class="form-group">
					    			<label for="">Gender</label>
					    			<div class="radio">
					    				<label><input type="radio" name="gender" value="male">Male</label>
					    			</div>
					    			<div class="radio">
					    				<label><input type="radio" name="gender" value="female">Female</label>
					    			</div>
					    			<div class="radio">
					    				<label><input type="radio" name="gender" value="transgender">Transgender</label>
					    			</div>
					    		</div>
					    		 <div class="form-group">
								    <label for="">Address</label>
								    <textarea class="form-control" id="address" rows="3" name="address"></textarea>
								  </div>
								  <div class="row">
						    		<div class="form-group">
							    			<div class="col-sm-3">
							    				<label for="">City</label>
							    				<input type="text" class="form-control" name="city" required />
							    			</div>
							    			<div class="col-sm-3">
							    				<label for="">Zip</label>
							    				<input type="number" class="form-control" name="zip" required />
							    			</div>
							    			<div class="col-sm-3">
							    				<label for="">State</label>
							    				<input type="text" class="form-control" name="state" required />
							    			</div>
							    			<div class="col-sm-3">
							    				<label for="">Country</label>
							    				<input type="text" class="form-control" name="country" required />
							    			</div>
							    	</div>
					    		   </div>
					    		   <br/>
					    		   <div class="row">
						    		<div class="form-group">
							    			<div class="col-sm-6">
							    				<label for="">Contact Number</label>
							    				<input type="tel" class="form-control" name="mobile" required />
							    			</div>						    	
							    			<div class="col-sm-6">
							    				<label for="">Email</label>
							    				<input type="email" class="form-control" name="email" required />
							    			</div>
							    	 </div>
					    		    </div>
					    		    <br/>
					    		    <div class="form-group mx-sm-3 mb-2 text-center">
						    			<button type="submit" name="saveChanges" class="btn-sm">
					      				<span class="glyphicon glyphicon-lock"></span> SAVE CHANGES
						    			</button>
					    			</div>
					    	</div>
					    	<br/>
					</form>
				 </div>
			 </div>	
			<div class="col-sm-2">
			<br/>
				<div><h4><b> CUSTOMER SECTION</b></h4></div>
				<br/>
				<div>
					<ul class="list-group list-group-flush">
					 <a href=""><li class="list-group-item"><span class="glyphicon glyphicon-list"><b> My Orders</b></span> </li></a>
					 <a href=""><li class="list-group-item"><span class="glyphicon glyphicon-heart"><b> My Wishlist</b></span> </li></a>
					 <a href=""><li class="list-group-item"><span class="glyphicon glyphicon-user"> <b>My Account</b></span> </li></a>
					 <a href=""><li class="list-group-item"><span class="glyphicon glyphicon-log-out"><b> Logout</b></span> </li></a>
					</ul>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
		
	 	

<!-- FOOTER -->
	  	
<div style="background-color:gray;" class="col-sm-12">
	<br/>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-3">
			<div style="font-size:24px;font-style:bold;"><b>About Us</b></div>
			<br/>
			<div style="font-size:15px;">Pelientesque habitant morbi tristique senectus
			netus et malesuada fames ac turpis egestas.</div>
			<br/>
			<hr/>
			<div>Join Our Monthly Newsletter</div>
			<div><input type="text"></input><button href=""><span class="btn btn-sm glyphicon glyphicon-user"></span></button></div>
		</div>
		<div class="col-sm-2">
			<div style="font-size:24px;font-style:bold;"><b>Blog</b></div>
			<br/>
			<div><img src="images/detailsquare1.jpg"  class="img img-rounded" width="75px" height="70px"></img> &nbsp; Blog Post Name</div>
			<br/>
			<div><img src="images/detailsquare2.jpg"  class="img img-rounded" width="75px" height="70px"></img> &nbsp; Blog Post Name</div>
			<br/>
			<div><img src="images/detailsquare3.jpg"  class="img img-rounded" width="75px" height="70px"></img> &nbsp; Blog Post Name</div>
			<br/>
		</div>
		<div class="col-sm-3">
			<div style="font-size:24px;font-style:bold;"><b>Contact</b></div>
			<br/>
			<div style="font-size:15px;">TechAspect Solutions Pvt. Ltd.</div>
			<div style="font-size:15px;">Plot No.38, N Heights, 3rd Floor</div>
			<div style="font-size:15px;">Hitech City Phase 2, Madhapur</div>
			<div style="font-size:15px;">Hyderabad, Telangana-500081</div>
			<div style="font-size:15px;">India</div>
			<br/>
			<a href="ContactPage.html"><button class="btn btn-success">Go to Contact Page</button></a>
		</div>
		<div class="col-sm-2">
			<br/><br/>
			<div class="row">
				<div class="col-sm-4">
				 <img src="images/detailsquare1.jpg"   class="img-rounded" width="75px" height="75px"></img>
				</div>
				<div class="col-sm-4">
				 <img src="images/detailsquare2.jpg"  class="img-rounded" width="75px" height="75px"></img>
				</div>
				<div class="col-sm-4">
				 <img src="images/detailsquare3.jpg"  class="img-rounded" width="75px" height="75px"></img>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-4">
				 <img src="images/detailsquare1.jpg"  class="img-rounded" width="75px" height="75px"></img>
				</div>
				<div class="col-sm-4">
				 <img src="images/detailsquare2.jpg"  class="img-rounded" width="75px" height="75px"></img>
				</div>
				<div class="col-sm-4">
				 <img src="images/detailsquare3.jpg"  class="img-rounded" width="75px" height="75px"></img>
				</div>
			</div>
		</div>
		<div class="col-sm-1"></div>
	</div> 	
</div>
<div style="background-color:black;height:75px;" class="col-sm-12">
	<br/>
	<div style="color:lightgray;font-size:18px;text-align:left;float:center;">&#169 2019. TechAspect Solutions Private Limited.</div>
</div>

</div>

<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
