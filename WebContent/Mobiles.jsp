<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Mobiles	</title>
		<link rel="stylesheet" href="css/Navbar.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/Mobiles.css">
		<link rel="stylesheet" href="css/bootstrap.icon-large.css">
		<link rel="stylesheet" href="css/Homepage.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">	
	</head>
	<body>
		<%
		String email=(String)session.getAttribute("email");
		%>
	<div class="container-fluid">
			
			<!-- NAV -->
				<nav class="navbar navbar-inverse">
				
				<div class="container-fluid row">
				  <div class="col-sm-1"></div>
				  <div class="col-sm-10">
					  <div class="navbar-header">
						<div class="navbar-brand">Contact Us on +91 40 66217777</div>
					  </div>
					  <ul class="nav navbar-nav nav-pills navbar-right">
						<li>
						  <a href=""><span class="fa fa-user"> </span><span style="color:white;"> &nbsp;<%=email%></span></a>
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
						<li>
						   <a href="Logout.jsp">
							   <span class="glyphicon glyphicon-log-out"></span>
						   </a>
					  </ul>
				  </div>
				  <div class="col-sm-1"></div>
				</div>
			  	</nav>
			  
			<!-- END OF NAV -->
	
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
	 		<nav class="navbar" style="background-image:url('images/texture-bw.png');">
			  <div class="container-fluid row" id="row1">
			    <div class="col-sm-1"></div>
			    <div class="col-sm-10">
				    <div class="navbar-header bold h3">
				    	<b>MOBILES</b>
				    </div>
				    <ul class="nav navbar-nav navbar-right ">
				       <li><a  href="Homepage.jsp">HOME / </a></li>
				       <li><a  href="#">Electronics /</a></li>
				       <li><a  href="">Mobiles</a></li>
				    </ul>
			    </div>
			    <div class="col-sm-1"></div>
			  </div>
			</nav>
			
			
			<div class="container-fluid">
			<div class="row" id="row2" style="color:black;">
				<div class="col-sm-1"></div>	
				<div class="col-sm-11"><h3 ><b>Exclusive offers</b></h3></div>
			</div>
			</div>
			<br/>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-1"></div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide1.jpg" height="200" width="240" hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide2.jpg" height="200" width="240" hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide3.jpg" height="200" width="240" hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide4.jpg" height="200" width="240" hspace="20"/>
					</div>
				</div>
			</div>
			<br/>
			
			
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-1"></div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide1.jpg" height="200" width="240" hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
						<img class="img img-rounded" src="images/wide2.jpg" height="200" width="240" hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
					<img class="img img-rounded" src="images/wide3.jpg" height="200" width="240"hspace="20" />
					</div>
					<div style="float:left;margin-right:5px;">
					<img class="img img-rounded" src="images/wide4.jpg" height="200" width="240" hspace="20"/>
        		</div>
        	</div>
			</div>
			<br/>
			<br/>
			<div class="container-fluid">
				<div class="row" id="row2" style="color:black;">
					<div class="col-sm-1"></div>
					<div class="col-sm-11"><h3 ><b>Most Viewed</b></h3></div>
				</div>
			</div>
			<br/>
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-2" style="border: 1px solid gray;padding:10px;margin:5px;">
					<figure class="card card-product">
						<div class="img-wrap"> 
							<img src="images/redmi1.jpeg">
						</div>
						<figcaption class="info-wrap">
							
							<div style="text-align: center;">
								<h4><a><b> Realme 2</b></a></h4>
								<div>3GB RAM|32GB ROM</div>
								<div>13MP +2MP Dual Rear</div>
								<div>Camera | 8MP Front</div>
								<div>Camera</div>
								
								<h5>Now <i class="fa fa-inr"></i> 8900</h5>
							</div> 
						</figcaption>
					</figure> <!-- card // -->
				</div> <!-- col // -->
				<div class="col-sm-2" style="border: 1px solid gray;padding:10px;margin:5px;">
					<figure class="card card-product">
						<div class="img-wrap"> <img src="images/real1.jpeg">
						</div>
						<figcaption class="info-wrap">
							<div style="text-align: center;" >
								<h4><a><b>Asus Zenfone Max</b></a></h4>
								<div>6 GB RAM|64 GB ROM</h5>
								<div>16MP +5MP Dual Rear</div>
								<div>Camera | 16MP Front</div>
								<div>Camera</div>
								<h5>Now <i class="fa fa-inr"></i> 10,999</h5>
							</div> 
						</figcaption>
					</figure> <!-- card // -->
				</div> <!-- col // -->
				<div class="col-sm-2" style="border: 1px solid gray;padding:10px;margin:5px;">
					<figure class="card card-product">
						<div class="img-wrap"><img src="images/real2.jpeg"> 
						</div>
						<figcaption class="info-wrap">
							<div style="text-align: center;">
								
								<h4><a><b>Redmi Note5 Pro</b></a></h4>
								<div>4GB RAM|64GB ROM</div>
								<div>12MP +5MP Dual Rear</div>
								<div>Camera | 20MP Front</div>
								<div>Camera</div>
								<h5>Now <i class="fa fa-inr"></i> 14,999</h5>
							</div> 
						</figcaption>
					</figure> <!-- card // -->
				</div> <!-- col // -->
				<div class="col-sm-2" style="border: 1px solid gray;padding:10px;margin:5px;">
					<figure class="card card-product">
						<div class="img-wrap"> <img src="images/nokia1.jpeg">
							
						</div>
						<figcaption class="info-wrap">
							<div style="text-align: center;">
								<h4><a><b>Vivo X21</b></a></h4>
								<div>6 GB RAM|128 GB Rdiv</div>
								<div>2x12MP(Dual Pixel<div>
								<div>Sensor) +5MP Dual Rdivr</div>
								<div>Camera</div>
								<h5>Now <i class="fa fa-inr"></i> 31,990</h5>
							</div> 	
						</figcaption>
					</figure> <!-- card // -->
				</div> <!-- col // -->

				<div class="col-sm-2" style="border: 1px solid gray;padding:10px;margin:5px;">
					<figure class="card card-product">
						<div class="img-wrap"> <img src="images/lenevo.jpeg">
							
						</div>
						<figcaption class="info-wrap">
							<div style="text-align: center;">
								<h4><a><b>Asuz Zenfone 5Z</b></a></h4>
								<div>6GB RAM|64GB ROM</div>
								<div>12MP +8MP Dual Rear</div>
								<div>Camera | 8MP Front</div>
								<div>Camera</div>
								<h5>Now <i class="fa fa-inr"></i> 10,999</h5>
							</div> 
						</figcaption>
					</figure> <!-- card // -->
				</div> <!-- col /-->
			<div class="col-sm-1"></div>
			</div> <!-- row.// -->
			<br/>
	 
			<div class="row">
				<div class="col-sm-3">
				<div><h3 ><b>Refine By</b></h3></div>
		
						<div style="border: 1px solid gray;padding:10px;padding-top:0;margin:5px;">
								<div style="background-color: lightgray;">
									<div class="header" ><h3><b>Brand</b></h3></div>
								</div>
								<hr/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Samsung<br/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Vivo<br/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Oppo<br/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Motorola<br/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Nokia<br/>
								<input type="checkbox"  style="padding-left: 20px;"> &nbsp;Mi<br/>
						</div>
						<br/>
						
						
						<div style="border: 1px solid gray;padding:10px;padding-top:0;margin:5px;">
							<div style="background-color: lightgray;">
								<div class="header" ><h3><b>Price</b></h3></div>
							</div>
							<hr/>
							<input type="checkbox" >under <i class="fa fa-inr"></i> 1000<br/>
							<input type="checkbox" > <i class="fa fa-inr"></i> 1000 - <i class="fa fa-inr"></i> 5000<br/>
							<input type="checkbox" > <i class="fa fa-inr"></i> 5000 - <i class="fa fa-inr"></i> 10000<br/>
							<input type="checkbox"> <i class="fa fa-inr"></i> 10000 - <i class="fa fa-inr"></i> 15000<br/>
							<input type="checkbox"> <i class="fa fa-inr"></i> 15000 - <i class="fa fa-inr"></i> 20000<br/>
							<input type="checkbox">Above <i class="fa fa-inr"></i> 20000<br/>
						</div>
						<br/>
						
						<div style="border: 1px solid gray;padding:10px;padding-top:0;margin:5px;">
							<div style="background-color: lightgray;">
								<div class="header" ><h3><b>Customer Rating </b></h3></div>
							</div>
							<hr/>
							<input type="checkbox" name="watches" value="ff">under <i class="fa fa-inr"></i> 1000<br/>
							<input type="checkbox" name="watches" value="gg"><i class="fa fa-inr"></i>1000 -<i class="fa fa-inr"></i> 5000<br/>
							<input type="checkbox" name="watches" value="hh"><i class="fa fa-inr"></i>5000 -<i class="fa fa-inr"></i> 10000<br/>
							<input type="checkbox" name="watches" value="ii"><i class="fa fa-inr"></i>10000 -<i class="fa fa-inr"></i> 15000<br/>
							<input type="checkbox" name="watches" value="jj"><i class="fa fa-inr"></i>15000 -<i class="fa fa-inr"></i> 20000<br/>
							<input type="checkbox" name="watches" value="jj">Above <i class="fa fa-inr"></i>20000<br/>
						</div>
						<br/>
				</div>			

				
				<div class="col-sm-9">
					<div><h3 ><b>Mobiles</b></h3></div>
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"> 
								<img src="images/redmi1.jpeg">
							</div>
							<figcaption class="info-wrap">
								
								<div >
									<center>
									<h3>Samsung Galaxy S7</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>29,990</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
					</div> <!-- col // -->
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"> <img src="images/real1.jpeg">
							</div>
							<figcaption class="info-wrap">
								<div >
									<center>
									<h3>Moto M</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>12,999</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
					</div> <!-- col // -->
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"><img src="images/real2.jpeg"> 
							</div>
							<figcaption class="info-wrap">
								<div >
									<center>
									<h3>VIVO V5S</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>15,990</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
						<div class="col-sm-1"></div>
					</div> <!-- col // -->
			</di>

				<div class="col">
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"> 
								<img src="images/nokia1.jpeg">
							</div>
							<figcaption class="info-wrap">
								
								<div >
									<center>
									<h3>Samsung On Max</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>12,490</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
					</div> <!-- col // -->
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"> <img src="images/redmi2.jpeg">
							</div>
							<figcaption class="info-wrap">
								<div >
									<center>
									<h3>Oppo F3 Plus</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>16,990</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
					</div> <!-- col // -->
					<div class="col-sm-4">
						<figure class="card card-product">
							<div class="img-wrap"><img src="images/lenevo.jpeg"> 
							</div>
							<figcaption class="info-wrap">
								<div >
									<center>
									<h3>Apple iPhone 7 Plus</h3>
									<br/>
									<h4><i class="fa fa-inr"></i>68,900</h4>
									</center>
								</div> 
							</figcaption>
						</figure> <!-- card // -->
						<div class="col-sm-1"></div>
					</div> <!-- col // -->
				</div>
			</div>
	
		<!-- END OF CONTENT-->
	</div>
    <br/>
    

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
