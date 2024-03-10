<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>milimart Ecommerce Category Bootstrap responsive Web Template | About :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="#" />
	<script>
	    addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);

	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    }
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/shop.css" type="text/css" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
</head>

<body>
    <form runat="server">
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		<header>
			<div class="row">
				<div class="col-md-3 top-info text-left mt-lg-4">
					<h6>Need Help</h6>
					<ul>
						<li>
							<i class="fas fa-phone"></i> Call</li>
						<li class="number-phone mt-3">1234567890</li>
					</ul>
				</div>
				<div class="col-md-6 logo-w3layouts text-center">
					<h1 class="logo-w3layouts">
						<a class="navbar-brand" href="index.aspx">
							<img src="images/logo1.png" height="85" width="85" /> milimart </a>
					</h1>
				</div>

				<div class="col-md-3 top-info-cart text-right mt-lg-4">
					<ul class="cart-inner-info">
						<li class="button-log">
							<a class="btn-open" href="#">
								<span class="fa fa-user" aria-hidden="true"></span>
							</a>
						</li>
						<li class="galssescart galssescart2 cart cart box_1">
                            <li class="button-log">
							<a class="btn-open" href="#">
									<img src="images/cart.png" style="height:40px;width:40px;" />
						<asp:Label runat="server" class="cart-item-count" ID="count_lbl" >0</asp:Label>
							</a>
						</li>

						</li>
					</ul>
					<!--Login-->


					<div class="overlay-login text-left">
						<button type="button" class="overlay-close1">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h5 class="text-center mb-4">Login Now><asp:Label runat="server" ID="Label1"></asp:Label>
							<div class="login p-5 bg-dark mx-auto mw-100">
							
									<div class="form-group">
										<label class="mb-2">Customer Id</label>
										<asp:TextBox runat="server" ID="email_tb" class="form-control" placeholder="Enter Email" required="" ></asp:TextBox>
										
									</div>
									<div class="form-group">
										<label class="mb-2">Password</label>
										<asp:TextBox ID="password_tb" runat="server" class="form-control" placeholder="Enetr Password" TextMode="Password" required="" ></asp:TextBox>
									</div>
									<div class="form-check mb-2">
										
									</div>
									<asp:Button runat="server" ID="login" Text="Sign In" class="btn btn-primary submit mb-4" OnClick="login_Click1"/><br />
                                    <a href="registration.aspx" class="btn btn-primary submit mb-4">Register Now...???</a> 


							</div>
							<!---->
						</div>
					</div>
					
                    
                    <!--login-->
				</div>
			</div>

			

			<label class="top-log mx-auto"></label>
			<nav class="navbar navbar-expand-lg navbar-light bg-light top-header mb-2">

				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						
					</span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav nav-mega mx-auto">
						<li class="nav-item active">
							<a class="nav-link ml-lg-0" href="index.aspx">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.aspx">About</a>
						</li>
						
<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true"
							    aria-expanded="false">
								Shop
							</a>
                            <ul class="dropdown-menu mega-menu ">
								<li>

									<div class="row">

                                        <asp:Repeater ID="outerRep" runat="server" OnItemDataBound="outerRep_ItemDataBound">

            <ItemTemplate>     
										<div class="col-md-4 media-list span4 text-left">

											<h4  style="text-transform:uppercase;color:black;font-family:Algerian">  <%# Eval("name") %> </h4>
											<ul>
												<li>
													
													<asp:Repeater ID="innerRep" runat="server">

                    <ItemTemplate>
                          <a href="shop.aspx?qq=<%# Eval("subcat_name")%>" ><%# Eval("subcat_name")%></a><br />
                    </ItemTemplate>

                </asp:Repeater>
												</li>
												
												
											</ul>
										</div>
				   </ItemTemplate>
                </asp:Repeater>
										
									</div>
									<hr>
								</li>
							</ul>
										
                            </li>
						<li class="nav-item">
							<a class="nav-link" href="contact.aspx">Contact</a>
						</li>
					</ul>

				</div>
			</nav>
		</header>
		<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li>
							<a href="index.aspx">Home</a>
							<i>|</i>
						</li>
						<li>About Us</li>
					</ul>
				</div>
			</div>

		</div>
		<!--//banner -->
	</div>
	<!--// header_top -->
	<!-- top Products -->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container-fluid">

			<div class="inner-sec-shop px-lg-4 px-3">
				<div class="about-content py-lg-5 py-3">
					<div class="row">

						<div class="col-lg-6 p-0">
							<img src="images/bg3.jpg" alt="milimart" class="img-fluid">
						</div>
						<div class="col-lg-6 about-info">
							<h3 class="tittle-w3layouts text-left mb-lg-5 mb-3">About Us</h3>
							<p class="my-xl-4 my-lg-3 my-md-4 my-3">milimart.com is a Ecommerce website . we provide high quality glasses with reasonable prices
                                , we started from a samll shop now we are here to provide online services for customer.
							</p>

							<a href="shop.aspx" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>

						</div>
					</div>
				</div>
				
				<!-- /grids -->
				<div class="bottom-sub-grid-content py-lg-5 py-3">
					<div class="row">
						<div class="col-lg-4 bottom-sub-grid text-center">
							<div class="bt-icon">

								<span class="far fa-hand-paper"></span>
							</div>

							<h4 class="sub-tittle-w3layouts my-lg-4 my-3">Satisfaction Guaranteed</h4>
							<p>The products we sell are 100% reliable and made of good quality.</p>
							<p>
								<a href="shop.aspx" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-4 -->
						<div class="col-lg-4 bottom-sub-grid text-center">
							<div class="bt-icon">
								<span class="fas fa-rocket"></span>
							</div>

							<h4 class="sub-tittle-w3layouts my-lg-4 my-3">Fast Shipping</h4>
							<p>Shipping of products takes no longer time.</p>
							<p>
								<a href="shop.aspx" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-4 -->
						<div class="col-lg-4 bottom-sub-grid text-center">
							<div class="bt-icon">
								<span class="far fa-sun"></span>
							</div>

							<h4 class="sub-tittle-w3layouts my-lg-4 my-3">UV Protection</h4>
							<p>milimart.com provides UV protection for sunglasses.</p>
							<p>
								<a href="shop.aspx" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-4 -->
					</div>
				</div>


				<!-- /clients-sec -->
				<div class="testimonials p-lg-5 p-3 mt-4">
					<div class="row last-section">
						<div class="col-lg-3 footer-top-w3layouts-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-gift"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Genuine Product</h3>
							</div>
						</div>
						<div class="col-lg-3 footer-top-w3layouts-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-shield-alt"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Secure Products</h3>
							</div>
						</div>
						<div class="col-lg-3 footer-top-w3layouts-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-dollar-sign"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Easy return</h3>
							</div>
						</div>
						<div class="col-lg-3 footer-top-w3layouts-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-truck"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Fast Delivery</h3>
							</div>
						</div>
					</div>
				</div>
				<!-- //clients-sec -->

			</div>
		</div>
	</section>


	<!--footer -->
	<footer class="py-lg-5 py-3">
		<div class="container-fluid px-lg-5 px-3">
			<div class="row footer-top-w3layouts">
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>About Us</h3>
					</div>
					<div class="footer-text">
						<p>milimart.com provides quality products with reasonable prices.The aim of the website is to satify customer and get lots of love from you.</p>
						<ul class="footer-social text-left mt-lg-4 mt-3">

							<li class="mx-2">
								<a href="#">
									<span class="fab fa-facebook-f"></span>
								</a>
							</li>
							<li class="mx-2">
								<a href="#">
									<span class="fab fa-twitter"></span>
								</a>
							</li>
							<li class="mx-2">
								<a href="#">
									<span class="fab fa-google-plus-g"></span>
								</a>
							</li>
							<li class="mx-2">
								<a href="#">
									<span class="fab fa-linkedin-in"></span>
								</a>
							</li>
							<li class="mx-2">
								<a href="#">
									<span class="fas fa-rss"></span>
								</a>
							</li>
							<li class="mx-2">
								<a href="#">
									<span class="fab fa-vk"></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Get in touch</h3>
					</div>
					<div class="contact-info">
						<h4>LocaLocation :</h4>
						<p>Khed, maharashtra, India.</p>
						<div class="phone">
							<h4>Contact :>
							<p>PhonPhone : +1234567890</p>
							<p>EmaiEmail :milimart@yahoo.com</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Quick Links>
					</div>
					<ul class="links">
						<li>
							<a href="index.aspx">Home</a>
						</li>
						<li>
							<a href="about.aspx">About</a>
						</li>
						
						<li>
							<a href="shop.aspx">Shop</a>
						</li>
						<li>
							<a href="contact.aspx">Contact Us</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Sign up for your offers</h3>
					</div>
					<div class="footer-text">
						<p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
						<form action="#" method="post">
							<input class="form-control" type="email" name="Email" placeholder="Enter your email..." >
							<button class="btn1">
								<i class="far fa-envelope" aria-hidden="true"></i>
							</button>
							<div class="clearfix"> </div>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright-w3layouts mt-4">
				<p class="copy-right text-center ">&cop&copy; 2021 milimart. All Rights Reserved | Design by <a href="#">  </a>
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->
        </form>

	<!--jQuery-->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- newsletter modal -->
	<!--search jQuery-->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
	    googles.render();

	    googles.cart.on('googles_checkout', function (evt) {
	        var items, len, i;

	        if (this.subtotal() > 0) {
	            items = this.items();

	            for (i = 0, len = items.length; i < len; i++) { }
	        }
	    });
	</script>
	<!-- //cart-js -->
	<script>
	    $(document).ready(function () {
	        $(".button-log a").click(function () {
	            $(".overlay-login").fadeToggle(200);
	            $(this).toggleClass('btn-open').toggleClass('btn-close');
	        });
	    });
	    $('.overlay-close1').on('click', function () {
	        $(".overlay-login").fadeToggle(200);
	        $(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
	        open = false;
	    });
	</script>
	<!-- carousel -->
	<!-- dropdown nav -->
	<script>
	    $(document).ready(function () {
	        $(".dropdown").hover(
				function () {
				    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
				    $(this).toggleClass('open');
				},
				function () {
				    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
				    $(this).toggleClass('open');
				}
			);
	    });
	</script>
	<!-- //dropdown nav -->
	<!-- Count-down -->
	<script src="js/simplyCountdown.js"></script>
	<link href="css/simplyCountdown.css" rel='stylesheet' type='text/css' />
	<script>
	    var d = new Date();
	    simplyCountdown('simply-countdown-custom', {
	        year: d.getFullYear(),
	        month: d.getMonth() + 2,
	        day: 25
	    });
	</script>
	<!--// Count-down -->
	<script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->


	<script src="js/bootstrap.js"></script>
	<!-- js file -->
</body>

</html>
