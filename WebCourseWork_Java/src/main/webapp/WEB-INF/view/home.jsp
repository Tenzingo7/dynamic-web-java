<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/ac966e1bc8.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/main.css" />
<title>Insert title here</title>
</head> 
<body>
	<header class = 'navigation-bar'>
    <div class="header-left">
      <nav style = 'display: flex; justify-content: space-between;'>
        <i></i>
        <ul style = 'display:flex; align-items: center; '>
          <li>
            <a href="<%= request.getContextPath()%>/view/product.jsp" onclick="redirectTo('Products')">Product</a>
          </li>
          <li>
            <a href="<%= request.getContextPath()%>/view/aboutus.jsp" onclick="redirectTo('contact')">About us</a>
          </li>
        </ul>
        <div class = 'Company-name'>
            <h1>Palsang WorkShop</h1>
        </div>
      </nav>
    </div>
    <div class="header-right">
    	<input class = 'search-bar' type='text' placeholder = 'search'>
    	<div class = 'search-icon'>
    		<a href = '#'><i class="fa-solid fa-magnifying-glass"></i></a>
    	</div>
    	<div class = 'filter'>
    		<i class="fa-solid fa-filter"></i>
    	</div>
    	<div class = 'cart'>
    		<i class="fa-solid fa-cart-shopping"></i>
    	</div>
    	<div class = 'profile'>
    		<i class="fa-solid fa-circle-user"></i>
    	</div>
    </div>
  </header>
  <div class = 'main-container'>
  	<img style = 'width: 100%;' src = 'main10.png'>
  </div>
  <div class = 'container1'>
  	<c:set var="counter" value="1" />
							<c:forEach var="product" items="${productObject}">
								<tr>
									<td><c:out value="${counter}" /></td>
									<td><c:out value="${product.ProductDescription}"></c:out></td>
								</tr>
								<c:set var="counter" value="${counter + 1}" />
							</c:forEach>
  </div>
</body>
</html>