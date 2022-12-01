<%-- 
    Document   : index
    Created on : 11 26, 22, 11:04:43 PM
    Author     : Lex Zedrick Lorenzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="indexstyles.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
        <title>LAND Games Store</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            response.setHeader("Expires", "0");//Proxies

            boolean logIn = false;

            if (session.getAttribute("username") == null) {
                logIn = false;
            } else {
                logIn = true;
            }
        %>
        <header class="navbar">
            <div>
                <h1>LAND GAMES STORE</h1>
            </div>
            <div class="links">
                <%
                    if (logIn == true) {
                        out.print("<a href=\"LogoutServlet\" class=\"logout\">Logout</a>");
                    }
                    else
                    {
                        out.print("<a href=\"login.jsp\" class=\"logout\">Login/SignUp</a>");
                    }
                %>
                <a href="cart.jsp" class="logout">MyCart</a>
            </div>
        </header>
        <main>
            <h4>Most popular</h4>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("popular_one_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("popular_one_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("popular_one_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("popular_one_price")); %></p>
                    <hr class="line">
                    <form action="process">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("popular_one_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("popular_two_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("popular_two_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("popular_two_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("popular_two_price")); %></p>
                    <hr class="line">
                    <form action="process">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("popular_two_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("popular_three_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("popular_three_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("popular_three_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("popular_three_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("popular_three_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("popular_four_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("popular_four_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("popular_four_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("popular_four_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("popular_four_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("popular_five_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("popular_five_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("popular_five_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("popular_five_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("popular_five_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>                
            </section>
            <h4>New Releases</h4>
            <hr>
            <section> <!--Try gawing setSession nalnag yung mga form-->
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("new_one_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("new_one_name")); %>>">
                    <p><% out.print(getServletContext().getInitParameter("new_one_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("new_one_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("new_one_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("new_two_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("new_two_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("new_two_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("new_two_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("new_two_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("new_three_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("new_three_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("new_three_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("new_three_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("new_three_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("new_four_img")); %>" 
                         alt="<% out.print(getServletContext().getInitParameter("new_four_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("new_four_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("new_four_price")); %></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("new_four_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
                <div class="content">
                    <img src="<% out.print(getServletContext().getInitParameter("new_five_img")); %>"
                         alt="<% out.print(getServletContext().getInitParameter("new_five_name")); %>">
                    <p><% out.print(getServletContext().getInitParameter("new_five_name")); %></p>
                    <p>$<% out.print(getServletContext().getInitParameter("new_five_price"));%></p>
                    <hr class="line">
                    <form action="">
                        <input type="number" min="0" step="1" class="counter" placeholder="0" name="quantity"/>
                        <input type="hidden" name="content" value="<% out.print(getServletContext().getInitParameter("new_five_name")); %>">
                        <button>Add to Cart</button>
                    </form>
                </div>
            </section>
        </main>
    </body>
</html>
