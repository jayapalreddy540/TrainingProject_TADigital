<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TADigital</title>
	
		<link rel="stylesheet" href="css/custom.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap.icon-large.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
	</head>

	<body>
		<%
			/*
			*	Checking if Cookie is present and setting Session Attributes. 
			*/
			String name = (String)session.getAttribute("USERNAME");
			if (name != null) {
				Cookie[] allCookies = request.getCookies();
				if (allCookies != null) {
					for (Cookie cookie : allCookies) {
						String cName = cookie.getName();
						if (cName.equals("TADigital")) {
							String cValue = cookie.getValue();
							session.setAttribute("TADigital",cValue);
							String sessionVerified = (String)session.getAttribute("sessionVerified");
							if(sessionVerified.equals("false")) {
								//RequestDispatcher rd = request.getRequestDispatcher("Logout.jsp");
								//rd.forward(request, response);
		%>
							<jsp:include page="/login" />
		<%
							}
							break;
						}
					}
				}
			}
		%>
	
		<div class="container-fluid">
	
			<!--START OF MAIN NAVBAR  -->
			<nav class="navbar navbar-inverse" aria-label="Main Navbar">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
							data-target="#main-navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand text-white">Contact Us on +91 40 66217777</div>
					</div>
					<div class="collapse navbar-collapse" id="main-navbar">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"><%= name%><span class="caret"></span>
							    </a>
							    <ul class="dropdown-menu dropdown-menu-left userDropdown">
							      <li><a href="/tpjayapalreddy/updateAccountDetails">My Account</a></li>
							      <li><a href="/tpjayapalreddy/updateAccountDetails">Change Password</a></li>
							      <li><a href="Logout.jsp">Sign Out</a></li>
							    </ul>
							</li>
							<li><a href="#"> <span class="fa fa-facebook"></span>
								</a></li>
							<li><a href="#"> <span class="fa fa-google-plus"></span>
								</a></li>
							<li><a href="#"> <span class="fa fa-twitter"></span>
								</a></li>
							<li><a href="#"> <span class="glyphicon glyphicon-envelope"></span>
								</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END OF MAIN NAVBAR -->
			
			
			<!-- START OF MENU NAVBAR -->
			<nav class="navbar navbar-static" aria-label="Menu Navbar">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
							data-target="#menu-navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<img alt="img" class="img" alt="logo" id="logo" src="images/logo.png"></img>
					</div>
					<div class="collapse navbar-collapse" id="menu-navbar">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<strong>Electronics</strong>
									<strong class="caret"></strong>
								</a>
								<div class="dropdown-menu">
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header" onclick="Mobiles.jsp">
												Mobiles
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mi</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Samsung</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Apple</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Vivo</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Health Care Appliances
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pulse Rate Indicators</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Electronic Foot Filer</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Cordless Trimmers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Electric Toothbrush</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">BP Monitors</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Computer Accessories
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Exrternal Hard Disks</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pendrives</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Laptop Skin Covers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Laptop Bags</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mouses</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Keyboards</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Home Entertainment
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Home Audio Speakers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Home Theatres</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bluetooth Speakers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">DTH Setup Boxes</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Mobile Accessories
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mobile Cases</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Headphones & Headsets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Power Banks</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Screen Guards</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Memory Cards</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Laptops
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hp</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Lenovo</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Dell</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Asus</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mac</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Gaming & Accessories
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Gaming Consoles</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Game Pads</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Gaming Mouse</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wireless Controller</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">JoyStick</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Camera
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">DSLR</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Compact & Bridge Cameras</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Camera Tripod</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Camera Lens</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Camera Bags</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
								</div>
							</li>
							<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<strong>Men</strong>
									<strong class="caret"></strong>
								</a>
								<div class="dropdown-menu">
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Men's Footwear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sports Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Casual Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Formal Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sandals & Floaters</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Flip Flops</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Top Wear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">T-Shirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Kurtas</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Suits & Blazers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jackets</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Watches
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Fastrack</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Casio</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Titan</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Fossil</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sonata</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Seasonal Wear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sweatshirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jackets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sweaters</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">RainCoats</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">WindCheaters</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Men's Grooming
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Deodrants</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Perfumes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Beard Care & Grooming</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shaving & AfterShave</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Razors & Blades</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Bottom Wear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jeans</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Trousers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shorts & 3/4ths</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Track Pants</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Cargos</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Accessories
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Backpacks</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wallets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Belts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sunglasses</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Frames</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Sleep Wear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Night Suits</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Track Pants</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Boxers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Thermals</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pyjamas</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
								</div>
							</li>
							<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<strong>Women</strong>
									<strong class="caret"></strong>
								</a>
								<div class="dropdown-menu">
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												Western Wear
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Top,Tshirts & Shirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shorts &U Skirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jeans</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Leggings & Jeggings</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Trousers & Capris</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Beauty & Grooming</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Make Up</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Skin Care</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hair Care</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bath & Spa</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Deodrants & Perfumes</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Women's Footwear</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Flats</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Heels</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wedges</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sports Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Casual Shoes</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Personal Care Appliances</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hair Staighteners</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hair Dryers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hair Curlers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hair Stylers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Epilators</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Ethnic Wear</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sarees</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Kurtas & Kurtis</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Dress Materials</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Lehenga Choli</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Anarkali Suits</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Jewellery</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Diamond Jewellery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Silver Jewellery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Gold Jewellery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Platinum Jewellery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Artificial Jewellery</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Accessories</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Handbags</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shoulder Bags</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sling Bags</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Clutches</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wallets & Belts</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Seasonal Wear</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sweaters & Pullovers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sweatshirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jackets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Raincoats</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Windcheaters</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
								</div>
							</li>
							<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<strong>Baby & Kids</strong>
									<strong class="caret"></strong>
								</a>
								<div class="dropdown-menu">
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Toys</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Remote Control Toys</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Educational Toys</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Soft Toys</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Cars & Die-cast Vehicles</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Action Figures</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>School Supplies</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">School Bags</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">School Combo Sets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Lunch Box</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Kids Watches</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Water Bottles</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Girls Clothing</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Dresses & Skirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Ethnic Wear</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Tops & T-Shirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shorts & Capris</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jeans</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Girls Footwear</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Ethnic Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sandals</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Clogs</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Flats & Bellies</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Casual Shoes</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>baby Care</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Diapers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Baby Bath & Skin Care</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Baby Gifting Sets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Baby & Infant Toys</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jeans</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Boys Clothing</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Polo's & T-Shirts</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Ethnic Wear</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Shorts & 3/4ths</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Trousers & Cargos</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Jeans</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Boys Footwear</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sandals</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Ethnic Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Clogs</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Casual Shoes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sports Shoes</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Baby</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bodysuits</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pyjamas</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Track Pants</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Booties</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">T-Shirts</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
								</div>
							</li>
							<li class="dropdown dropdown-large">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<strong>Home & Furniture</strong>
									<strong class="caret"></strong>
								</a>
								<div class="dropdown-menu">
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Furniture</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Beds</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Sofas</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mattresses</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Chairs</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wardrobes</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Home Decor</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Paintings</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Clocks</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wall Shelves</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wall Decars</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Show Pieces</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Tools & Hardware</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Hand Tools</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Power Tools</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Gardening Essentials</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Plant Seeds</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Electricals</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Dining & Serving</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Coffee Mugs</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Dinnerware & Cockery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bar & Glassware</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Tableware & Cutlery</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bakeware</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
									<div class="row list-row">
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Furnishing</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Bedsheets</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Curtains</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Cushion & Pillow Covers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Towels</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Mats & Carpets</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Lighting</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Smart Lighting</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">LEDs & CFs</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Decorative Lighting & Lamps</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Emergency Light</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Wall Lamps</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Kitchen Storage</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Water Bottles</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Lunch Boxes</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Flasks & Casseroies</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Kitchen Containers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Kitchen Tools</a>
											</div>
											<div class="divider"></div>
										</div>
										<div class="col-sm-2 dropdown-list">
											<div class="dropdown-header">
												<strong>Kitchen & Dining</strong>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pots & Pans</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Pressure Cookers</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Gas Stoves</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Cookware</a>
											</div>
											<div class="divider"></div>
											<div>
												<a href="#">Outdoor Cooking</a>
											</div>
											<div class="divider"></div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END OF MENU NAVBAR -->
			
			<!-- START OF ROUTE NAVBAR -->
			
			<div class="bg" style="background-image:url('images/texture-bw.png')">
				<nav class="nav navbar" aria-labelledby="">
					<div class="container-fluid">
						<div class="navbar-header">
							<div class="navbar-brand">CHANGE PASSWORD</div>
					    </div>
					    <ul class="nav navbar-nav navbar-right ">
					    	<li><a href="#">Home / Change Password</a></li>
					    </ul>
					</div>
				</nav>
			</div>
			
			<!-- END OF ROUTE NAVBAR -->
			
			
			<!-- START OF PASSWORD CHANGE FORM -->
			
			<div>
				<form name="passwordReset" action="changePassword" method="post">
					<div class="form-group">
					   <label for="">Old password</label>
					   <input type="password" class="form-control" name="oldPassword" placeholder="Old Password" required />
					</div>
					<div class="form-group">
						<label for="">New Password</label>
						<input type="password" class="form-control" name="newPassword" placeholder="New Password" required />
					</div>
					<div>
						<label for="">Retype Password</label>
						<input type="password" class="form-control" name="retypePassword" placeholder="Retype Password" required />
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
						 
			<!-- END OF PASSWORD CHANGE FORM -->
			
	
			<!-- START OF FOOTER -->
			<div class="container-fluid footer">
				<br />
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-3">
						<div class="footer-header"><strong>About Us</strong></div>
						<br />
						<div class="footer-text">Pelientesque habitant morbi tristique senectus
							netus et malesuada fames ac turpis egestas.</div>
						<br />
						<br />
						<div><strong>Join Our Monthly Newsletter</strong></div>
						<span>
							<input class="form-control" type="email"/>
							<button href="">
								<span class="btn btn-sm glyphicon glyphicon-envelope">
								</span>
							</button>
						</span>
					</div>
					<div class="col-sm-2">
						<div class="footer-header"><strong>Blog</strong></div>
						<br />
						<div>
							<img alt="img" src="images/detailsquare1.jpg" class="img img-rounded footer-img"></img>
							&nbsp; Blog Post Name
						</div>
						<br />
						<div>
							<img alt="img" src="images/detailsquare2.jpg" class="img img-rounded footer-img"></img>
							&nbsp; Blog Post Name
						</div>
						<br />
						<div>
							<img alt="img" src="images/detailsquare3.jpg" class="img img-rounded footer-img"></img>
							&nbsp; Blog Post Name
						</div>
						<br />
					</div>
					<div class="col-sm-3">
						<div class="footer-header"><strong>Contact</strong></div>
						<br />
						<div class="footer-text">TechAspect Solutions Pvt. Ltd.</div>
						<div class="footer-text">Plot No.38, N Heights, 3rd Floor</div>
						<div class="footer-text">Hitech City Phase 2, Madhapur</div>
						<div class="footer-text">Hyderabad, Telangana-500081</div>
						<div class="footer-text">India</div>
						<br />
						<a href="ContactPage.html">
							<button class="btn btn-success">Go to Contact Page</button>
						</a>
					</div>
					<div class="col-sm-2">
						<br /><br />
						<div class="row">
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare1.jpg" class="img img-rounded footer-img"/>
							</div>
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare2.jpg" class="img img-rounded footer-img"/>
							</div>
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare3.jpg" class="img img-rounded footer-img"/>
							</div>
						</div>
						<br />
						<div class="row">
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare1.jpg" class="img img-rounded footer-img"/>
							</div>
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare2.jpg" class="img img-rounded footer-img"/>
							</div>
							<div class="col-sm-4">
								<img alt="img" src="images/detailsquare3.jpg" class="img img-rounded footer-img"/>
							</div>
						</div>
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>
			<div class="col-sm-12 footer-end">
				<br />
				<div class="footer-company">
					&#169 2019. TechAspect Solutions Private Limited.
				</div>
			</div>
			<!-- END OF FOOTER -->
		</div>
		<!-- END OF CONTENT -->	
		<script src="js/jquery-3.4.1.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/custom.js"></script>
	</body>

</html>