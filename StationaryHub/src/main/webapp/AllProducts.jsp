
<%@page import="com.inventory.model.Product"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />




<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<link rel="stylesheet" href="./stylesheets/AllProducts.css" />

<title>YourChoice</title>
</head>
<body>

	<i class="on-off fa-solid fa-toggle-off"></i>
	<div class="profile-cont">
		<div class="cross">
			<i class="fa-solid fa-xmark"></i>
		</div>
		<div class="profile-box">
			<h2>please log in</h2>
		</div>

		<div class="navigation">
			<div>
				<a href="auth/Login.html" class="item"> <i
					class="fa-solid fa-user"></i>
					<h5>profile</h5>
				</a>
			</div>
			<div>
				<a class="item" href="index.html"> <i class="fa-solid fa-house"></i>
					<h5>Home Page</h5>
				</a>
			</div>
			<div>
				<a class="item" href="auth/Login.html"> <i
					class="fa-solid fa-bag-shopping"></i></i>
					<h5>My Cart</h5>
				</a>
			</div>
			<div>
				<a class="item" href="auth/Login.html"> <i
					class="fa-solid fa-heart"></i>
					<h5>favorite</h5>
				</a>
			</div>
			<div>
				<a class="item" href="user/order.json"> <i
					class="fa-solid fa-clipboard-list"></i></i>
					<h5>Orders</h5>
				</a>
			</div>
			<div>
				<a class="item" href="user/notification.html"> <i
					class="fa-solid fa-bell"></i>
					<h5>Notifications</h5>
				</a>
			</div>
			<hr>
			<div>

				<a class="item" href="auth/Login.html"> <i
					class="fa-solid fa-arrow-right-from-bracket"></i>
					<h5>Sign in</h5>
				</a>


			</div>
		</div>

	</div>
	<div class="container">
		<nav>
			<div class="navLeft">
				<div class="icon" id="profile-cont-off">
					<i class="fa-solid fa-bars"></i>
				</div>
				<h2>
					<a href="index.html">YOUR CHOICE </a>
				</h2>
			</div>
			<div class="navMid">
				<a href="index.html">
					<div class="navitem">Home</div>
				</a> <a href="product.html">
					<div class="navitem">Shop</div>
				</a> <a href="blog.html">
					<div class="navitem">Blog</div>
				</a> <a href="contact.html">
					<div class="navitem">Contact</div>
				</a>
			</div>
			<div class="navRight">
				<div class="search">
					<i class="fa-solid fa-magnifying-glass"></i><input type="text"
						id="navsearch" placeholder="search" />
				</div>
				<div class="cart">
					<h4 id="navprice">$0</h4>
					<a class="icon" href="auth/Login.html"> <i
						class="fa-solid nav-ic fa-bag-shopping"></i>
					</a>
				</div>
			</div>
		</nav>


		<div class="Landing-Screen">
			<div class="Backside-card-body">
				<div class="Backside-card">
					<div class="Backside-card-Left cursor">
						<h5 id="pagelocation">YOUR CHOICE</h5>
					</div>
					<div class="Backside-card-Mid cursor">
						<h1>SHOPS</h1>
					</div>
					<div class="Backside-card-Right">
						<div class="nextproduct">
							<h4 class="cursor">Next Product</h4>
							<div class="arrow">
								<i class="cursor fa-solid fa-arrow-left-long"></i> <i
									class="cursor fa-solid fa-arrow-right-long"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main-body">
			<a class="scroll-to-down" href="#footer">
				<div class="scroll-body cursor">
					<i class="fa-solid fa-arrow-left-long"></i>
					<h5>Scroll To Down</h5>
				</div>
			</a>
			<div class="card-body">

				<div class="card">
					<div class="sortcont">
						<div class="">
							<%--  <select name="Gender" id="Gender">
                <option value="null">Select</option>
                <option value="Men" >price</option>
                <option value="Women" >Date</option>
              </select> --%>
							<select name="category" id="category">
								<option value="category">category</option>
								<option value="Art and Craft">Art and Craft</option>
								<option value="Files And Folder">Files And Folder</option>
								<option value="Notebook And Diaries">Notebook And
									Diaries</option>
								<option value="Writing Instruments">Writing Instrument</option>
								<option value="Paper Products">Paper Products</option>
								<option value="Books">Books</option>
								<option value="Engineering Products">Engineering
									Products</option>
							</select>
						</div>
						<div class=""
							style="display: flex; justify-content: center; align-items: center;">
							<h4 style="margin-right: 10px;">Showing 3 Results</h4>
							<select name="Sorting" id="PriceSort">
								<option value="" checked>Sort</option>
								<option value="inc">ascending</option>
								<option value="dec">descending</option>
								<option value="Newest">Newest</option>
							</select>
						</div>
					</div>
					<div class="product-card-cont">
						<%
						List<Product> products = (List<Product>) request.getAttribute("products");

						for (Product p : products) {
						%>
						<div class="product-card">
							<div class="nav">
								<a class="icon" href="auth/Login.html"> <i
									class="fa-solid fa-heart"></i>
								</a>
								<div class="icon">
									<i class="fa-solid nav-ic fa-bag-shopping"></i>
								</div>
							</div>
							<div class="product">
							
								<%--<div class="product-background"
									style="background: rgb(109, 199, 17)">
									 <div class="product-background-circle"></div>
								</div>--%>
								<div class="product-image">

									<img src="images/uploads/<%out.print(p.getImage());%>" alt=""
										height="200px" />
								</div>
							</div>
							<div class="product-info">
								<h3>
									<%
									out.print(p.getProduct_name());
									%>
								</h3>
								<h4>
									<i class="fa-solid fa-indian-rupee-sign"></i>
									<%out.print(p.getProduct_price());%>
								</h4>
								<a href="SingleProduct.jsp?id=<%=p.getProduct_id()%>"><button>
										AddtoCart <i class="fa-solid fa-cart-shopping"></i>
									</button></a>
							</div>
						</div>


						<%
						}
						%>




					</div>
				</div>
			</div>
			<div class="social-button-body">
				<div class="social-button cursor">
					<h5>follow</h5>
					<a href="#"> <i class="fa-brands fa-facebook-f"></i>
					</a> <a href="#"> <i class="fa-brands fa-instagram"></i>
					</a> <a href="#"> <i class="fa-brands fa-twitter"></i>
					</a>
				</div>
			</div>
		</div>

		<div class="newslatter">
			<h1>NEWSLATTER</h1>
			<h4>Get update from your favorite products</h4>
			<form action="http://localhost:3000/newsemail" method="post">
				<input type="text" placeholder="enter your email" />
				<button type="submit">Send</button>
			</form>
		</div>
		<footer class="Footer" id="footer">
			<div class="footer-info">
				<h2>MUHAFIZ.</h2>
				<p>There are many variations of passages of Lorem Ipsum
					available, but the majority have suffered alteration in some form,
					by injected humour, or randomised words which don’t look even
					slightly believable.</p>
				<div class="social-icon">
					<a href="#"> <i style="color: #3b5999"
						class="fa-brands fa-facebook-square"></i>
					</a> <a href="#"> <i style="color: #e4405f"
						class="fa-brands fa-instagram-square"></i>
					</a> <a href="#"> <i style="color: #55acee"
						class="fa-brands fa-twitter-square"></i>
					</a> <a href="#"> <i style="color: #e60023"
						class="fa-brands fa-pinterest-square"></i>
					</a>
				</div>
			</div>
			<div class="Usefull-Links">
				<h2>Usefull Links</h2>
				<ul>
					<li><a href="index.html"> Home </a></li>
					<li><a href="auth/Login.html"> Cart </a></li>
					<li><a href="productde8d.html?category=Men"> Man Fashion </a>
					</li>
					<li><a href="product995e.html?category=Women"> Woman
							Fashion </a></li>
					<li><a href="product508b.html?category=Accessories">
							Accessories </a></li>
					<li><a href="product508b.html?category=Accessories"> My
							Account </a></li>
					<li><a href="product508b.html?category=Accessories"> Order
							Tracking </a></li>
					<li><a href="product508b.html?category=Accessories">
							Wishlist </a></li>
					<li><a href="product508b.html?category=Accessories">
							Wishlist </a></li>
					<li><a href="product508b.html?category=Accessories"> Terms
					</a></li>
				</ul>
			</div>
			<div class="Contact">
				<h2>Contact</h2>
				<div>
					<i class="fa-solid fa-location-pin"></i> 622 Dixie Path , South
					Tobinchester 98336
				</div>
				<div>
					<i class="fa-solid fa-phone"></i>+91 7869073804
				</div>
				<div>
					<i class="fa-solid fa-at"></i>Muhafiz.ahmed.sa@gmail.com
				</div>
				<img src="../i.ibb.co/Qfvn4z6/payment.html" />
			</div>
		</footer>
	</div>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.4/axios.min.js"
	integrity="sha512-LUKzDoJKOLqnxGWWIBM4lzRBlxcva2ZTztO8bTcWPmDSpkErWx0bSP4pdsjNH8kiHAUPaT06UXcb+vOEZH+HpQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://kit.fontawesome.com/d19408b3b1.js"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
	let profile = document.querySelector(".profile-cont");
	let productCont = document.querySelector(".product-card-cont");
	let GenderSort = document.getElementById("Gender");
	let CategorySort = document.getElementById("category");
	let priceSort = document.getElementById("PriceSort");
	let profileOnOff = document.querySelector("#profile-cont-off");
	
	let fetchedarr=[]
	function ResultInjector(data) {
		  let clustor;
		  data.forEach((product) => {			
		    clustor += `<div class="product-card">
				<div class="nav">
				<a class="icon" href="auth/Login.html"> <i
					class="fa-solid fa-heart"></i>
				</a>
				<div class="icon">
					<i class="fa-solid nav-ic fa-bag-shopping"></i>
				</div>
			</div>
			<div class="product">
			
				<div class="product-image">

					<img src="images/uploads/\${product.product_name}" alt=""
						height="200px" />
				</div>
			</div>
			<div class="product-info">
				<h3>\${product.product_name}</h3>
				<h4>
					<i class="fa-solid fa-indian-rupee-sign"></i>
					\${product.product_price}
				</h4>
				<a href="SingleProduct.jsp?id=\${product.product_id}"><button>
						AddtoCart <i class="fa-solid fa-cart-shopping"></i>
					</button></a>
			</div>
		</div>

`;
		  });
		  clustor !== undefined
		    ? (clustor = clustor.replace("undefined", ""))
		    : (clustor = "<h4><b>Sorry cant find what you looking for</b></h4>");
		  productCont.innerHTML = clustor;
		}
	// // page location
	// let pagelocation = location.pathname.toUpperCase();
	// document.getElementById("pagelocation").innerText += pagelocation;
	

	profile.addEventListener("click", function() {
		profile.classList.toggle("profile-active");
	});

	profileOnOff.addEventListener("click", function() {
		profile.classList.toggle("profile-active");
	});
	
		CategorySort.addEventListener("change", function () {
			let sortedArray=[];
		  CategorySortVlue = CategorySort.value;
		  if(CategorySortVlue==="category"){
			  return ResultInjector(fetchedarr);
		  }
		  sortedArray = sorting(fetchedarr,CategorySortVlue);
		  ResultInjector(sortedArray);
		});
		priceSort.addEventListener("change", function () {
			let sortedArray=[]
		  if (priceSort.value === "inc") {
			  
		    sortedArray = fetchedarr.sort(
		      (productA, productB) => productA.product_price - productB.product_price
		    );
		    console.log(sortedArray);
		  } else if (priceSort.value === "dec") {
		    sortedArray = fetchedarr.sort(
		      (productA, productB) => productB.product_price - productA.product_price
		    );
		    console.log(sortedArray);
		  } else if (priceSort.value === "Newest") {
		    sortedArray = fetchedarr.sort((productA, productB) => {
		      return new Date(productA.created_at) - new Date(productB.created_at);
		    });
		    console.log(sortedArray);
		  }
		  ResultInjector(sortedArray);
		});

		function sorting(array,CategorySortVlue) {
		  let NewArray=array.filter(product=>product.product_category.toLowerCase()===CategorySortVlue.toLowerCase())
		  
		  return NewArray;
		}
	priceSort.addEventListner
	async function api(url){
		let search=await fetch(url);
		fetchedarr=await search.json();
		
	}
	api("/Stationary/categoryServlet")
</script>



</html>
