<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="/samhodaon/resources/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />

	    <link href="/samhodaon/resources/css/other-styles.css" rel="stylesheet" />
	    <link href="/samhodaon/resources/css/slide-effect.css" rel="stylesheet" />
	    </head>
	    <body id="page-top">
	        <!-- Navigation-->
	        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
	            <div class="container">
	                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	                    Menu
	                    <i class="fas fa-bars ml-1"></i>
	                </button>
	                <div class="collapse navbar-collapse" id="navbarResponsive">
	                    <ul class="navbar-nav text-uppercase ml-auto">
	                    
	                    <c:choose>
							<c:when test="${empty navFlag}">
								<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">Team</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/magazine/magazine.do">Magazine</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/contact.do">Contact</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/index.do?navFlag=services">Services</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/index.do?navFlag=about">About</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/index.do?navFlag=team">Team</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/magazine/magazine.do">Magazine</a></li>
		                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/contact.do">Contact</a></li>
							</c:otherwise>
						</c:choose>

	                    </ul>
	                </div>
	            </div>
	        </nav>