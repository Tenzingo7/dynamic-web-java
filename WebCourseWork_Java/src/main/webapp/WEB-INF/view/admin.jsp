<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navigation Bar</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/main.css">
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
   	    <a href="<%= request.getContextPath() %>/AddProduct"><button>Add product</button></a>
        </div>
   	</section>
</body>
</html>
