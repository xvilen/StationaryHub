<!DOCTYPE html>
<%@page import="com.inventory.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.inventory.model.Cart"%>
<% User user=(User)request.getSession().getAttribute("auth"); %>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/d19408b3b1.js" crossorigin="anonymous" defer></script>
    

    <link rel="stylesheet" href=".//stylesheets//cart.css" />
    

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
    <a href="auth/Login.html" class="item">
    <i class="fa-solid fa-user"></i><h5>profile</h5>
    </a>
    </div>
    <div>
    <a class="item" href="index.html">
      <i class="fa-solid fa-house"></i><h5>Home Page</h5>
    </a>
    </div>
    <div>
    <a class="item" href="auth/Login.html">
      <i class="fa-solid fa-bag-shopping"></i></i><h5>My Cart</h5>
    </a>
    </div>
    <div>
    <a class="item" href="auth/Login.html">
      <i class="fa-solid fa-heart"></i><h5>favorite</h5>
    </a>
    </div>
    <div>
    <a class="item" href="user/order.json">
      <i class="fa-solid fa-clipboard-list"></i></i><h5>Orders</h5>
    </a>
    </div>
    <div>
    <a class="item" href="user/notification.html">
      <i class="fa-solid fa-bell"></i><h5>Notifications</h5>
    </a>
    </div>
    <hr>
    <div>
    
        <a class="item" href="auth/Login.html">
          <i class="fa-solid fa-arrow-right-from-bracket"></i><h5>Sign in</h5>
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
              </a>
              <a href="product.html">
                <div class="navitem">Shop</div>
              </a>
              <a href="blog.html">
                <div class="navitem">Blog</div>
              </a>
              <a href="contact.html">
                <div class="navitem">Contact</div>
              </a>
            </div>
            <div class="navRight">
              <div class="search">
                <i class="fa-solid fa-magnifying-glass"></i
                ><input type="text" id="navsearch" placeholder="search" />
              </div>
              <div class="cart">
                <h4 id="navprice">$0</h4>
                <a class="icon" href="auth/Login.html">
                  
                  <i class="fa-solid nav-ic fa-bag-shopping"></i>
                </a>
              </div>
            </div>
          </nav>
      <div class="Landing-Screen">
        <div class="Backside-card-body">
          <div class="Backside-card">
            <div class="Backside-card-Left cursor">
            </div>
            <div class="Backside-card-Mid cursor">
              <h1>YOUR CART</h1>
            </div>
            <div class="Backside-card-Right">

            </div>
          </div>
        </div>
        <div class="main-body">
          <main class="table">
            <section class="table_body">
              <table>
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Quantity</th>        
                    <th>Remove</th>
                  </tr>
                </thead>
                <tbody>
                   <%
                List <Cart> cartList=(List<Cart>)request.getAttribute("cart");
                   int price=0;
                for(Cart c:cartList){
                	
                	%>
                   <tr>
                    <td><%=c.getCartItemId() %></td>
                    <td><img src="https://media.istockphoto.com/id/1059543698/photo/pen.jpg?s=612x612&w=0&k=20&c=xydmq5zg2BIGZGcjJfWF6uo-yeJ4mkdRNr4aA4zJ740=" alt=""></td>
                    <td><%=c.getProductName() %></td>
                    <%price+=c.getTotalPrice(); %>
                    <td><strong><%=c.getTotalPrice()%></strong></td>
                    <td class="quantity"><a href="/Stationary/cart/decrement?cartItemID=<%=c.getCartItemId() %>&productId=<%=c.getProductId() %>"><i class="fa-solid fa-minus"></i></a>  <%=c.getQuantity() %> <a href="/Stationary/cart/increment?cartItemID=<%=c.getCartItemId() %>&productId=<%=c.getProductId() %>"><i class="fa-solid fa-plus"></i></a> </td>
                    <td><a href="/Stationary/cart/remove?cartID=<%=c.getCartItemId() %>&userId=<%=user.getUser_id() %>"><i class="fa-solid fa-trash"></i></a></td>
                  </tr>
                
                  <% 
                }
                %>
                </tbody>
              </table>
            </section>
            <section class="checkout-body">
              <aside class="checkout">
                <div class="checkoutcard totalOrder">
                  <h2>Order Total</h3>
                  <h2><%=price %></h2>
                </div>
                <div class="checkoutcard delivery">
                  <h3>Deivery</h3>
                  <h3>0</h3>
                </div>
                <hr>
                <div class="checkoutcard Total">
                  <h1>Total</h3>
                  <h1><%=price %></h1>
                </div>
                <div class="chekoutbtn">
                 <button> checkout</button>
                </div>
              </form>
            </section>
           </main>
      </div>
   
    </div>
    <footer class="Footer" id="footer">
      <div class="footer-info">
        <h2>MUHAFIZ.</h2>
        <p>
          There are many variations of passages of Lorem Ipsum available, but
          the majority have suffered alteration in some form, by injected
          humour, or randomised words which don’t look even slightly
          believable.
        </p>
        <div class="social-icon">
          <a href="">
            <i
              style="color: #3b5999"
              class="fa-brands fa-facebook-square"
            ></i>
          </a>
          <a href="">
            <i
              style="color: #e4405f"
              class="fa-brands fa-instagram-square"
            ></i>
          </a>
          <a href="">
            <i style="color: #55acee" class="fa-brands fa-twitter-square"></i>
          </a>
          <a href="">
            <i
              style="color: #e60023"
              class="fa-brands fa-pinterest-square"
            ></i>
          </a>
        </div>
      </div>
      <div class="Usefull-Links">
        <h2>Usefull Links</h2>
        <ul>
          <li>
            <a href="/"> Home </a>
          </li>
          <li>
            <a href="/cart/usercart"> Cart </a>
          </li>
          <li>
            <a href="/product?category=Men"> Man Fashion </a>
          </li>
          <li>
            <a href="/product?category=Women"> Woman Fashion </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> Accessories </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> My Account </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> Order Tracking </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> Wishlist </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> Wishlist </a>
          </li>
          <li>
            <a href="/product?category=Accessories"> Terms </a>
          </li>
        </ul>
      </div>
      <div class="Contact">
        <h2>Contact</h2>
        <div>
          <i class="fa-solid fa-location-pin"></i>
          622 Dixie Path , South Tobinchester 98336
        </div>
        <div><i class="fa-solid fa-phone"></i>+91 7869073804</div>
        <div><i class="fa-solid fa-at"></i>Muhafiz.ahmed.sa@gmail.com</div>
        <img src="https://i.ibb.co/Qfvn4z6/payment.png" />
      </div>
    </footer>
    <script>
 
 
      

      let profile=document.querySelector(".profile-cont")
      let onof =document.querySelector("#profile-cont-off")
profile.addEventListener("click",function () {
  profile.classList.toggle("profile-active")
  
})
onof.addEventListener("click",function () {
  profile.classList.toggle("profile-active")

})
    </script>
  </body>
</html>
