<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
	<header class="header">
    	<a href="#" class="logo">Palsang Workshop</a>
        <nav class="navbar">
        	<a href="#">Products</a>
            <a href="#">Users</a>
            <a href="#">Order</a>
           	<a href="#"><button>log out</button></a>
        </nav>
    </header>
    <section class="formbutton">
     	<div class="content">
 	  	<a href="#"><button>Remove product</button></a>
   	    <a href="<%= request.getContextPath() %>/addproduct"><button>Add product</button></a>
        </div>
   	</section>
   	<div class = 'container1'>
   		<c:forEach var="PhoneObject" items="${productObject}">
  		<div style = "Display: Block;">
    		<c:out value="${PhoneObject.productName}" />
    		<c:out value="${PhoneObject.productDescription}" />
    	</div>
		</c:forEach>
   	</div>
</body>
</html>
