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
		<link rel="stylesheet" href="css/Homepage.css">
		
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
				response.sendRedirect("Homepage.jsp");
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
							<a href="SignInSignUpForms.jsp">
							   <span class="glyphicon glyphicon-user"></span> Sign In
						   </a>
					   </li>
					   <li>
							<a href="SignInSignUpForms.jsp">
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
	<!-- END OF HEADER -->
	
	<!-- NAVBAR -->
				  
	<div class="row container-fluid">
		<div class="col-sm-1"></div>
		<nav class="col-sm-10 nav navbar navbar-static">
			<div class="navbar-header">
				<img class="img" src="images/logo.png" width="100px" height="50px"></img>
			</div>	
			<div class="collapse navbar-collapse js-navbar-collapse navbar-right">
					 
					  	<ul class="nav navbar-nav row navbar-static collapse navbar-collapse js-navbar-collapse">
					  	 
						 	<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle"  data-toggle="dropdown" ><b>Electronics</b> <b class="caret"></b>
								</a>
								<div class="dropdown-menu dropdown-menu-large" style="text-align:left;padding:30px 30px;">
									<div class="row">
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Mobiles</b></div>
											<div class="divider"></div>
											<div><a href="#">Mi</a></div>
											<div class="divider"></div>
											<div><a href="#">Samsung</a></div>
											<div class="divider"></div>
											<div><a href="#">Apple</a></div>
											<div class="divider"></div>
											<div><a href="#">Vivo</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Health Care Appliances</b></div>
											<div class="divider"></div>
											<div><a href="#">Pulse Rate Indicators</a></div>
											<div class="divider"></div>
											<div><a href="#">Electronic Foot Filer</a></div>
											<div class="divider"></div>
											<div><a href="#">Cordless Trimmers</a></div>
											<div class="divider"></div>
											<div><a href="#">Electric Toothbrush</a></div>
											<div class="divider"></div>
											<div><a href="#">BP Monitors</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Computer Accessories</b></div>
											<div class="divider"></div>
											<div><a href="#">Exrternal Hard Disks</a></div>
											<div class="divider"></div>
											<div><a href="#">Pendrives</a></div>
											<div class="divider"></div>
											<div><a href="#">Laptop Skin Covers</a></div>
											<div class="divider"></div>
											<div><a href="#">Laptop Bags</a></div>
											<div class="divider"></div>
											<div><a href="#">Mouses</a></div>
											<div class="divider"></div>
											<div><a href="#">Keyboards</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Home Entertainment</b></div>
											<div class="divider"></div>
											<div><a href="#">Home Audio Speakers</a></div>
											<div class="divider"></div>
											<div><a href="#">Home Theatres</a></div>
											<div class="divider"></div>
											<div><a href="#">Bluetooth Speakers</a></div>
											<div class="divider"></div>
											<div><a href="#">DTH Setup Boxes</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
									</div>
									<div class="row">
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Mobile Accessories</b></div>
												<div class="divider"></div>
												<div><a href="#">Mobile Cases</a></div>
												<div class="divider"></div>
												<div><a href="#">Headphones & Headsets</a></div>
												<div class="divider"></div>
												<div><a href="#">Power Banks</a></div>
												<div class="divider"></div>
												<div><a href="#">Screen Guards</a></div>
												<div class="divider"></div>
												<div><a href="#">Memory Cards</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Laptops</b></div>
												<div class="divider"></div>
												<div><a href="#">Hp</a></div>
												<div class="divider"></div>
												<div><a href="#">Lenovo</a></div>
												<div class="divider"></div>
												<div><a href="#">Dell</a></div>
												<div class="divider"></div>
												<div><a href="#">Asus</a></div>
												<div class="divider"></div>
												<div><a href="#">Mac</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Gaming & Accessories</b></div>
												<div class="divider"></div>
												<div><a href="#">Gaming Consoles</a></div>
												<div class="divider"></div>
												<div><a href="#">Game Pads</a></div>
												<div class="divider"></div>
												<div><a href="#">Gaming Mouse</a></div>
												<div class="divider"></div>
												<div><a href="#">Wireless Controller</a></div>
												<div class="divider"></div>
												<div><a href="#">JoyStick</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Camera</b></div>
												<div class="divider"></div>
												<div><a href="#">DSLR</a></div>
												<div class="divider"></div>
												<div><a href="#">Compact & Bridge Cameras</a></div>
												<div class="divider"></div>
												<div><a href="#">Camera Tripod</a></div>
												<div class="divider"></div>
												<div><a href="#">Camera Lens</a></div>
												<div class="divider"></div>
												<div><a href="#">Camera Bags</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
								</div>
								</div>
						 	</li>
						 	<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle"  data-toggle="dropdown" ><b>Men</b><b class="caret"></b>
								</a>
								<div class="dropdown-menu dropdown-menu-large" style="text-align:left;padding:30px 30px;">
									<div class="row">
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Men's Footwear</b></div>
											<div class="divider"></div>
											<div><a href="#">Sports Shoes</a></div>
											<div class="divider"></div>
											<div><a href="#">Casual Shoes</a></div>
											<div class="divider"></div>
											<div><a href="#">Formal Shoes</a></div>
											<div class="divider"></div>
											<div><a href="#">Sandals & Floaters</a></div>
											<div class="divider"></div>
											<div><a href="#">Flip Flops</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Top Wear</b></div>
											<div class="divider"></div>
											<div><a href="#">T-Shirts</a></div>
											<div class="divider"></div>
											<div><a href="#">Shirts</a></div>
											<div class="divider"></div>
											<div><a href="#">Kurtas</a></div>
											<div class="divider"></div>
											<div><a href="#">Suits & Blazers</a></div>
											<div class="divider"></div>
											<div><a href="#">Jackets</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Watches</b></div>
											<div class="divider"></div>
											<div><a href="#">Fastrack</a></div>
											<div class="divider"></div>
											<div><a href="#">Casio</a></div>
											<div class="divider"></div>
											<div><a href="#">Titan</a></div>
											<div class="divider"></div>
											<div><a href="#">Fossil</a></div>
											<div class="divider"></div>
											<div><a href="#">Sonata</a></div>
											<div class="divider"></div>
											
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Seasonal Wear</b></div>
											<div class="divider"></div>
											<div><a href="#">Sweatshirts</a></div>
											<div class="divider"></div>
											<div><a href="#">Jackets</a></div>
											<div class="divider"></div>
											<div><a href="#">Sweaters</a></div>
											<div class="divider"></div>
											<div><a href="#">RainCoats</a></div>
											<div class="divider"></div>
											<div><a href="#">WindCheaters</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
									</div>
									<div class="row">
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Men's Grooming</b></div>
												<div class="divider"></div>
												<div><a href="#">Deodrants</a></div>
												<div class="divider"></div>
												<div><a href="#">Perfumes</a></div>
												<div class="divider"></div>
												<div><a href="#">Beard Care & Grooming</a></div>
												<div class="divider"></div>
												<div><a href="#">Shaving & AfterShave</a></div>
												<div class="divider"></div>
												<div><a href="#">Razors & Blades</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Bottom Wear</b></div>
												<div class="divider"></div>
												<div><a href="#">Jeans</a></div>
												<div class="divider"></div>
												<div><a href="#">Trousers</a></div>
												<div class="divider"></div>
												<div><a href="#">Shorts & 3/4ths</a></div>
												<div class="divider"></div>
												<div><a href="#">Track Pants</a></div>
												<div class="divider"></div>
												<div><a href="#">Cargos</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Accessories</b></div>
												<div class="divider"></div>
												<div><a href="#">Backpacks</a></div>
												<div class="divider"></div>
												<div><a href="#">Wallets</a></div>
												<div class="divider"></div>
												<div><a href="#">Belts</a></div>
												<div class="divider"></div>
												<div><a href="#">Sunglasses</a></div>
												<div class="divider"></div>
												<div><a href="#">Frames</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Sleep Wear</b></div>
												<div class="divider"></div>
												<div><a href="#">Night Suits</a></div>
												<div class="divider"></div>
												<div><a href="#">Track Pants</a></div>
												<div class="divider"></div>
												<div><a href="#">Boxers</a></div>
												<div class="divider"></div>
												<div><a href="#">Thermals</a></div>
												<div class="divider"></div>
												<div><a href="#">Pyjamas</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
								</div>
								</div>
							</li>
					    	<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle"  data-toggle="dropdown" ><b>Women</b><b class="caret"></b>
								</a>
								<div class="dropdown-menu dropdown-menu-large" style="text-align:left;padding:30px 30px;">
									<div class="row">
									<div class="col-sm-2">
										<div class="dropdown-header" style="color:black;"><b>Western Wear</b></div>
										<div class="divider"></div>
										<div><a href="#">Top,Tshirts & Shirts</a></div>
										<div class="divider"></div>
										<div><a href="#">Shorts &U Skirts</a></div>
										<div class="divider"></div>
										<div><a href="#">Jeans</a></div>
										<div class="divider"></div>
										<div><a href="#">Leggings & Jeggings</a></div>
										<div class="divider"></div>
										<div><a href="#">Trousers & Capris</a></div>
										<div class="divider"></div>
									</div>
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<div class="dropdown-header" style="color:black;"><b>Beauty & Grooming</b></div>
										<div class="divider"></div>
										<div><a href="#">Make Up</a></div>
										<div class="divider"></div>
										<div><a href="#">Skin Care</a></div>
										<div class="divider"></div>
										<div><a href="#">Hair Care</a></div>
										<div class="divider"></div>
										<div><a href="#">Bath & Spa</a></div>
										<div class="divider"></div>
										<div><a href="#">Deodrants & Perfumes</a></div>
										<div class="divider"></div>
									</div>
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<div class="dropdown-header" style="color:black;"><b>Women's Footwear</b></div>
										<div class="divider"></div>
										<div><a href="#">Flats</a></div>
										<div class="divider"></div>
										<div><a href="#">Heels</a></div>
										<div class="divider"></div>
										<div><a href="#">Wedges</a></div>
										<div class="divider"></div>
										<div><a href="#">Sports Shoes</a></div>
										<div class="divider"></div>
										<div><a href="#">Casual Shoes</a></div>
										<div class="divider"></div>
									</div>
									<div class="col-sm-1"></div>
									<div class="col-sm-2">
										<div class="dropdown-header" style="color:black;"><b>Personal Care Appliances</b></div>
										<div class="divider"></div>
										<div><a href="#">Hair Staighteners</a></div>
										<div class="divider"></div>
										<div><a href="#">Hair Dryers</a></div>
										<div class="divider"></div>
										<div><a href="#">Hair Curlers</a></div>
										<div class="divider"></div>
										<div><a href="#">Hair Stylers</a></div>
										<div class="divider"></div>
										<div><a href="#">Epilators</a></div>
										<div class="divider"></div>
									</div>
									<div class="col-sm-1"></div>
									</div>
									<div class="row">
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Ethnic Wear</b></div>
												<div class="divider"></div>
												<div><a href="#">Sarees</a></div>
												<div class="divider"></div>
												<div><a href="#">Kurtas & Kurtis</a></div>
												<div class="divider"></div>
												<div><a href="#">Dress Materials</a></div>
												<div class="divider"></div>
												<div><a href="#">Lehenga Choli</a></div>
												<div class="divider"></div>
												<div><a href="#">Anarkali Suits</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Jewellery</b></div>
												<div class="divider"></div>
												<div><a href="#">Diamond Jewellery</a></div>
												<div class="divider"></div>
												<div><a href="#">Silver Jewellery</a></div>
												<div class="divider"></div>
												<div><a href="#">Gold Jewellery</a></div>
												<div class="divider"></div>
												<div><a href="#">Platinum Jewellery</a></div>
												<div class="divider"></div>
												<div><a href="#">Artificial Jewellery</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Accessories</b></div>
												<div class="divider"></div>
												<div><a href="#">Handbags</a></div>
												<div class="divider"></div>
												<div><a href="#">Shoulder Bags</a></div>
												<div class="divider"></div>
												<div><a href="#">Sling Bags</a></div>
												<div class="divider"></div>
												<div><a href="#">Clutches</a></div>
												<div class="divider"></div>
												<div><a href="#">Wallets & Belts</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Seasonal Wear</b></div>
												<div class="divider"></div>
												<div><a href="#">Sweaters & Pullovers</a></div>
												<div class="divider"></div>
												<div><a href="#">Sweatshirts</a></div>
												<div class="divider"></div>
												<div><a href="#">Jackets</a></div>
												<div class="divider"></div>
												<div><a href="#">Raincoats</a></div>
												<div class="divider"></div>
												<div><a href="#">Windcheaters</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
									<!-- <div class="col-sm-2"></div>-->
									</div>
								</div>
							</li>
						 	<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle"  data-toggle="dropdown" ><b>Baby & Kids</b><b class="caret"></b>
								</a>
								<div class="dropdown-menu dropdown-menu-large" style="text-align:left;padding:30px 30px;">
									<div class="row">
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Toys</b></div>
											<div class="divider"></div>
											<div><a href="#">Remote Control Toys</a></div>
											<div class="divider"></div>
											<div><a href="#">Educational Toys</a></div>
											<div class="divider"></div>
											<div><a href="#">Soft Toys</a></div>
											<div class="divider"></div>
											<div><a href="#">Cars & Die-cast Vehicles</a></div>
											<div class="divider"></div>
											<div><a href="#">Action Figures</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>School Supplies</b></div>
											<div class="divider"></div>
											<div><a href="#">School Bags</a></div>
											<div class="divider"></div>
											<div><a href="#">School Combo Sets</a></div>
											<div class="divider"></div>
											<div><a href="#">Lunch Box</a></div>
											<div class="divider"></div>
											<div><a href="#">Kids Watches</a></div>
											<div class="divider"></div>
											<div><a href="#">Water Bottles</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Girls Clothing</b></div>
											<div class="divider"></div>
											<div><a href="#">Dresses & Skirts</a></div>
											<div class="divider"></div>
											<div><a href="#">Ethnic Wear</a></div>
											<div class="divider"></div>
											<div><a href="#">Tops & T-Shirts</a></div>
											<div class="divider"></div>
											<div><a href="#">Shorts & Capris</a></div>
											<div class="divider"></div>
											<div><a href="#">Jeans</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Girls Footwear</b></div>
											<div class="divider"></div>
											<div><a href="#">Ethnic Shoes</a></div>
											<div class="divider"></div>
											<div><a href="#">Sandals</a></div>
											<div class="divider"></div>
											<div><a href="#">Clogs</a></div>
											<div class="divider"></div>
											<div><a href="#">Flats & Bellies</a></div>
											<div class="divider"></div>
											<div><a href="#">Casual Shoes</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
									</div>
									<div class="row">
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>baby Care</b></div>
												<div class="divider"></div>
												<div><a href="#">Diapers</a></div>
												<div class="divider"></div>
												<div><a href="#">Baby Bath & Skin Care</a></div>
												<div class="divider"></div>
												<div><a href="#">Baby Gifting Sets</a></div>
												<div class="divider"></div>
												<div><a href="#">Baby & Infant Toys</a></div>
												<div class="divider"></div>
												<div><a href="#">Jeans</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Boys Clothing</b></div>
												<div class="divider"></div>
												<div><a href="#">Polo's & T-Shirts</a></div>
												<div class="divider"></div>
												<div><a href="#">Ethnic Wear</a></div>
												<div class="divider"></div>
												<div><a href="#">Shorts & 3/4ths</a></div>
												<div class="divider"></div>
												<div><a href="#">Trousers & Cargos</a></div>
												<div class="divider"></div>
												<div><a href="#">Jeans</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Boys Footwear</b></div>
												<div class="divider"></div>
												<div><a href="#">Sandals</a></div>
												<div class="divider"></div>
												<div><a href="#">Ethnic Shoes</a></div>
												<div class="divider"></div>
												<div><a href="#">Clogs</a></div>
												<div class="divider"></div>
												<div><a href="#">Casual Shoes</a></div>
												<div class="divider"></div>
												<div><a href="#">Sports Shoes</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Baby</b></div>
												<div class="divider"></div>
												<div><a href="#">Bodysuits</a></div>
												<div class="divider"></div>
												<div><a href="#">Pyjamas</a></div>
												<div class="divider"></div>
												<div><a href="#">Track Pants</a></div>
												<div class="divider"></div>
												<div><a href="#">Booties</a></div>
												<div class="divider"></div>
												<div><a href="#">T-Shirts</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<!-- <div class="col-sm-2"></div>-->
								</div>
								</div>
							</li>
						 	<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle"  data-toggle="dropdown" ><b>Home & Furniture</b><b class="caret"></b>
								</a>
								<div class="dropdown-menu dropdown-menu-large" style="text-align:left;padding:30px 30px;">
									<div class="row">
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Furniture</b></div>
											<div class="divider"></div>
											<div><a href="#">Beds</a></div>
											<div class="divider"></div>
											<div><a href="#">Sofas</a></div>
											<div class="divider"></div>
											<div><a href="#">Mattresses</a></div>
											<div class="divider"></div>
											<div><a href="#">Chairs</a></div>
											<div class="divider"></div>
											<div><a href="#">Wardrobes</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Home Decor</b></div>
											<div class="divider"></div>
											<div><a href="#">Paintings</a></div>
											<div class="divider"></div>
											<div><a href="#">Clocks</a></div>
											<div class="divider"></div>
											<div><a href="#">Wall Shelves</a></div>
											<div class="divider"></div>
											<div><a href="#">Wall Decars</a></div>
											<div class="divider"></div>
											<div><a href="#">Show Pieces</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Tools & Hardware</b></div>
											<div class="divider"></div>
											<div><a href="#">Hand Tools</a></div>
											<div class="divider"></div>
											<div><a href="#">Power Tools</a></div>
											<div class="divider"></div>
											<div><a href="#">Gardening Essentials</a></div>
											<div class="divider"></div>
											<div><a href="#">Plant Seeds</a></div>
											<div class="divider"></div>
											<div><a href="#">Electricals</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
											<div class="dropdown-header" style="color:black;"><b>Dining & Serving</b></div>
											<div class="divider"></div>
											<div><a href="#">Coffee Mugs</a></div>
											<div class="divider"></div>
											<div><a href="#">Dinnerware & Cockery</a></div>
											<div class="divider"></div>
											<div><a href="#">Bar & Glassware</a></div>
											<div class="divider"></div>
											<div><a href="#">Tableware & Cutlery</a></div>
											<div class="divider"></div>
											<div><a href="#">Bakeware</a></div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
									</div>
									<div class="row">
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Furnishing</b></div>
												<div class="divider"></div>
												<div><a href="#">Bedsheets</a></div>
												<div class="divider"></div>
												<div><a href="#">Curtains</a></div>
												<div class="divider"></div>
												<div><a href="#">Cushion & Pillow Covers</a></div>
												<div class="divider"></div>
												<div><a href="#">Towels</a></div>
												<div class="divider"></div>
												<div><a href="#">Mats  & Carpets</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Lighting</b></div>
												<div class="divider"></div>
												<div><a href="#">Smart Lighting</a></div>
												<div class="divider"></div>
												<div><a href="#">LEDs & CFs</a></div>
												<div class="divider"></div>
												<div><a href="#">Decorative Lighting & Lamps</a></div>
												<div class="divider"></div>
												<div><a href="#">Emergency Light</a></div>
												<div class="divider"></div>
												<div><a href="#">Wall Lamps</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Kitchen Storage</b></div>
												<div class="divider"></div>
												<div><a href="#">Water Bottles</a></div>
												<div class="divider"></div>
												<div><a href="#">Lunch Boxes</a></div>
												<div class="divider"></div>
												<div><a href="#">Flasks & Casseroies</a></div>
												<div class="divider"></div>
												<div><a href="#">Kitchen Containers</a></div>
												<div class="divider"></div>
												<div><a href="#">Kitchen Tools</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
										<div class="col-sm-2">
												<div class="dropdown-header" style="color:black;"><b>Kitchen & Dining</b></div>
												<div class="divider"></div>
												<div><a href="#">Pots & Pans</a></div>
												<div class="divider"></div>
												<div><a href="#">Pressure Cookers</a></div>
												<div class="divider"></div>
												<div><a href="#">Gas Stoves</a></div>
												<div class="divider"></div>
												<div><a href="#">Cookware</a></div>
												<div class="divider"></div>
												<div><a href="#">Outdoor Cooking</a></div>
												<div class="divider"></div>
										</div>
										<div class="col-sm-1"></div>
								</div>
								</div>
							</li>
						</ul>
			</div>
					
		</nav>
		<div class="col-sm-1"></div>
	</div>	
	
	<!-- END OF NAVBAR -->

<!-- CONTENT -->
<div>
	<div class="container-fluid">
		<div class="row" id="row2">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
			
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
				<div class="item active">
					<img src="images/one.jpg"  style="width:100%;" ></img>
				</div>
			
				<div class="item">
					<img src="images/k2.jpg"  style="width:100%;"></img>
				</div>
				
				<div class="item">
					<img src="images/k2.jpg"  style="width:100%;"></img>
				</div>
				</div>
			
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
				</a>
			</div>
		</div>	
	</div>
	<br/>
	
	
	<nav class="navbar navbar-inverse">
		<div class="row" id="row3">
			<div class="container-fluid">
				<div class="col-sm-1"></div>
				<div class="col-sm-10" >
					<div class="navbar-header">
						<a class="navbar-brand"><b style="color:white;">DEALS OF THE DAY</b></a>
					</div>
					<ul class="nav navbar-nav navbar-right" style=" padding-top : 8px">
						<li> <button type="button" class="btn btn-primary" >VIEW ALL</button> </li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<br/>


	<div class="row">
		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"> 
					<img src="images/shoe1.jpeg">
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b> Mens footwear</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">Up to 60 + Extra 10% off</span><br/>
							<br/>
							<div>
							<a href="#" class="btn btn-primary btn-block"> VIEW </a>
							</div>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div> 
		<!-- col // -->
		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"> <img src="images/shoe2.jpeg">
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b>Addidas,reebok&puma</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">Up to 50 + Extra 5% off</span><br/>
							<br/>
							<div>
							<a href="#" class="btn btn-primary btn-block"> VIEW </a>
							</div>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div>
		<!-- col // -->
		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"><img src="images/backpack.jpeg"> 
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b>Laptop bags</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">From  <i class="fa fa-inr"></i>249</span><br/>
							<br/>
							<a href="#" class="btn btn-primary btn-block "> VIEW </a>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div> 
		<!-- col // -->
		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"> <img src="images/memo.jpeg">
					
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b>Memory Cards</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">Extra 5% off</span><br/>
							<br/>
							<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div> 
		<!-- col // -->

		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"> <img src="images/watch1.jpeg">
					
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b>Timex,Maxima..</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">Under   <i class="fa fa-inr"></i>999+ 7% off</span><br/>
							<br/>
							<a href="#" class="btn btn-primary btn-block "> VIEW </a>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div>
		<!-- col /-->

		<div class="col-sm-2">
			<figure class="card card-product">
				<div class="img-wrap"> <img src="images/backpack2.jpeg">
					
				</div>
				<figcaption class="info-wrap">
					<h4 class="title text-dots"><p><b> Sky bags,Amer...</b></p></h4>
					<div class="action-wrap">
						<div class="price-wrap h5">
							<span class="price-new">Under  <i class="fa fa-inr"></i>999 + 5% off</span><br/>
							<br/>
							<div>
							<a href="#" class="btn btn-primary btn-block"> VIEW </a>
							</div>
						</div> <!-- price-wrap.// -->
					</div> <!-- action-wrap -->
				</figcaption>
			</figure> <!-- card // -->
		</div> 
		<!-- col /-->
	</div> <!-- row.// -->

	<nav class="navbar navbar-inverse">
	<div class="row" id="row3">
		<div class="container-fluid">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<div class="navbar-header">
				<a class="navbar-brand"><b style="color:white;">FEATURED BRANDS</b></a>
				</div>
				<ul class="nav navbar-nav navbar-right" style=" padding-top : 8px">
					<li> <button type="button" class="btn btn-primary">VIEW ALL</button> </li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<br/>
	<div class="container-fluid">
		<div class="row">
		
			<div style="float:left;margin-right:5px;">
				<img src="images/wide1.jpg" height="200" width="300" hspace="10" />
			
			</div>
			<div style="float:left;margin-right:5px;">
				<img src="images/wide2.jpg" height="200" width="300" hspace="10" />
			
			</div>
			<div style="float:left;margin-right:5px;">
				<img src="images/wide3.jpg" height="200" width="300" hspace="10" />
			</div>
			<div style="float:left;margin-right:5px;">
				<img src="images/wide4.jpg" height="200" width="300" hspace="0"/>
				
			</div>
		
		</div>
	</div>
	<br/>


	<nav class="navbar navbar-inverse">
	<div class="row" id="row3">
		<div class="container-fluid">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<div class="navbar-header">
				<a class="navbar-brand"><b style="color:white;">MOBILE NEW LAUNCHES</b></a>
				</div>
				<ul class="nav navbar-nav navbar-right" style=" padding-top : 8px">
					<li> <button type="button" class="btn btn-primary">VIEW ALL</button> </li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<br/>


	<div class="row">
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> 
				<img src="images/redmi1.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b> Redmi Note6 Pro</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">12MP+5MP|20MP+2MP</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/real1.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Realme 2</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">13MP+2MP|8MP Camera</span><br/>
						<br/>
						<div >
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"><img src="images/real2.jpeg"> 
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Realme c1</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">13MP+3MP|5MP Camera</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/nokia1.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Nokia 6.1 Plus</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">16MP+5MP Camera</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/lenevo.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Lenevo A5</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">16MP|8MP Camera</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/redmi2.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Redmi Note5 Pro</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">12MP+5MP Camera</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->
	</div> <!-- row.// -->
	<br/>



	<nav  class="navbar navbar-inverse">
	<div class="row" id="row3">
	<div class="container-fluid">
	<div class="col-sm-1"></div>
	<div class="col-sm-10">
		<div class="navbar-header">
		<a class="navbar-brand"> <b style="color:white;">Home Decor Range</b></a>
		</div>
		<ul class="nav navbar-nav navbar-right" style=" padding-top : 8px">
			<li> <button type="button"  class="btn btn-primary">VIEW ALL</button> </li>
		</ul>
	</div>
	</div>
	</div>
	</nav>
	<br/>


	<div class="row">
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> 
				<img src="images/bottle.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b> Decorative Bottle</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">From <i class="fa fa-inr"></i>199</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/wall.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Wall clocks</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Min 50% off</span><br/>
						<br/>
						<div >
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"><img src="images/laugh.jpeg"> 
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Feng Shui S...</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Under <i class="fa fa-inr"></i>999</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/self.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Wall Selves</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Up to 80%off</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/laser.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Laser lights</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Up to 60% off</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/hokah.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Hookhas & Bongs</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Under <i class="fa fa-inr"></i>599 + 5% off</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->
	</div> <!-- row.// -->
	<br/>


	<nav class="navbar navbar-inverse">
	<div class="row" id="row3">
	<div class="container-fluid">
	<div class="col-sm-1"></div>
	<div class="col-sm-10">
		<div class="navbar-header">
		<a class="navbar-brand"><b style="color:white;">Fashion Accessories</b></a>
		</div>
		<ul class="nav navbar-nav navbar-right" style=" padding-top : 8px">
			<li> <button type="button" class="btn btn-primary" >VIEW ALL</button> </li>
		</ul>
	</div>
	</div>
	</div>
	</nav>
	<br/>


	<div class="row">
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> 
				<img src="images/spects.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Ray-Ban F...</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">20 to 60% off</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/belt.jpeg">
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Cross, Woodland..</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Top Rated</span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"><img src="images/casio.jpeg"> 
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Casio,Maxima</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Upto 60% off</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->
	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/casio2.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Casio,Fastrack..</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">10 to 50% off</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col // -->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/wat.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Titan,Fastrack..</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">20 to 80% off</span><br/>
						<br/>
						<a href="#" class="btn btn-primary btn-block "> VIEW </a>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->

	<div class="col-sm-2">
		<figure class="card card-product">
			<div class="img-wrap"> <img src="images/wat2.jpeg">
				
			</div>
			<figcaption class="info-wrap">
				<h4 class="title text-dots"><p><b>Fastrack</b></p></h4>
				<div class="action-wrap">
					<div class="price-wrap h5">
						<span class="price-new">Under <i class="fa fa-inr"></i>999 </span><br/>
						<br/>
						<div>
						<a href="#" class="btn btn-primary btn-block"> VIEW </a>
						</div>
					</div> <!-- price-wrap.// -->
				</div> <!-- action-wrap -->
			</figcaption>
		</figure> <!-- card // -->
	</div> <!-- col /-->
	</div> <!-- row.// -->
</div>
<br/>
<div class="divider"></div>

<!-- END OF CONTENT-->


    

	


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
