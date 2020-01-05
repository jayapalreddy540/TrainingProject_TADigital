<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TADigital</title>
		<link rel="stylesheet" href="css/Navbar.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap.icon-large.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
	</head>
	<body>
	

<%

	//out.println("Session Id : <p>"+session.getId()+"</p>");
	//out.println("Is Session New ? <p>"+session.isNew()+"</p>");
	//out.println("Session Creation Date : <p>"+new Date(session.getCreationTime())+"</p>");
	
	Cookie[] allCookies= request.getCookies();
	if(allCookies !=null){
		for(Cookie cookie : allCookies){
			String cName =cookie.getName();
			if(cName.equals("abc")){				
				String cValue=cookie.getValue();
				session.setAttribute("COOKIEVALUE", cValue);
				response.sendRedirect("index.jsp");
				break;
			}
		}
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
						   <span class="fa fa-facebook"></span>
					   </a>
						</li>
						<li>
							<a href="#">
							 <span class="fa fa-google-plus"></span>
							</a>
						</li>
						<li>
								<a href="#">
								<span class="fa fa-twitter"></span>
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
				<div class="col-sm-2"></div>
				<div class="col-sm-4">  
				    <h2><b>Sign Up</b></h2>
				    <h3>Not Our Registered Customer Yet?</h3><br/>
					<div class="para1">
					    <div>With registration with us new world of fashion,fantastic discounts and much more opens</div>
					    <div>to you! The whole process will not take you more than a minute!</div>
					    <br/>
				    </div>
				    <form name="signup" action="register" method="post">
				    	<div class="form-group">
				    	<label for="">Name</label>
				    	<input type="text" class="form-control" name="signupName" required />
				    	</div>
				    	
				    	<div class="form-group">
				    	<label for="">Email</label>
				    	<input type="email" class="form-control" name="signupEmail" required />
				    	</div>
				    	
				    	<div class="form-group">
				    		<label for="">Password</label>
				    		<input type="password" class="form-control" name="signupPassword" required />
				    	</div>
				    	<div class="form-group mx-sm-3 mb-2 text-center">
				    		<button type="submit" name="Register" class="btn-sm">
				    			<span class="glyphicon glyphicon-user"></span> Register
				    		</button>
				    	</div>
				    </form>
		    	</div>
		    	<div class="col-sm-4">
			    	<h2><b>Sign In</b></h2>
				    <h3>Already Our Customer?</h3><br/>
					<div class="para1">
					    <div>
					         If you have any questions, please feel free to contact us, our customer
					         service center is working for you 24/7.  
					     </div>
					    <br/>
				    </div>
				    <form name="signin" action="login" method="post">
				    	<div class="form-group">
				    		<label for="">Email</label>
				    		<input type="email" class="form-control" name="signinEmail" required />
				    	</div>
				    	<div class="form-group">
				    		<label for="">Password</label>
				    		<input type="password" class="form-control" name="signinPassword" required />
				    	</div>
				    	<div class="form-group mx-sm-3 mb-2 text-center">
					    	<button type="submit" name="Login" class="btn-sm">
				      			<span class="glyphicon glyphicon-log-out"></span> Login
					    	</button>
				    	</div>
				    	<div class="form-group text-center">
				    		<input type="checkbox" name="remember" value="true"/> Stay Signed In
				    	</div>
				    </form>
		    	</div>
		    	<div class="col-sm-2"></div>
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
