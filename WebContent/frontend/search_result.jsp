<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pustok - Book Store HTML Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
</head>

<body>
    <div class="site-wrapper" id="top">
    	<jsp:directive.include file="header.jsp"/>
    
        <section class="breadcrumb-section">
            <h2 class="sr-only">Site Breadcrumb</h2>
            <div class="container">
                <div class="breadcrumb-contents">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
                            <li class="breadcrumb-item active">Results for "${keyword}"</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main class="inner-page-sec-padding-bottom">
            <div class="container">
                <div class="shop-toolbar mb--30">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-sm-1">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                            	<a href="#" class="sorting-btn" data-target="grid-four">
									<span class="grid-four-icon">
										<i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
									</span>
								</a>
                                <a href="#" class="sorting-btn active" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-11 mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Showing 1 to 9 of 14 (2 Pages)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-toolbar d-none">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-sm-1">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-11  mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Showing 1 to 9 of 14 (2 Pages)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-product-wrap list with-pagination row space-db--30 shop-border">
                
                	<c:if test="${fn:length(result) > 0}">
                		<c:forEach items="${result}" var="book">
		                    <div class="col-lg-4 col-sm-6">
		                        <div class="product-card card-style-list">
		                        	<div class="product-grid-content">
		                                <div class="product-header">
		                                    <a class="author">${book.author}</a>
		                                    <h3><a href="view_book?id=${book.bookId}">${book.title}</a></h3>
		                                </div>
		                                <div class="product-card--body">
		                                    <div class="card-image">
		                                        <img src="data:image/jpg;base64, ${book.base64Image}" alt="">
		                                        <div class="hover-contents">
		                                            <a href="product-details.html" class="hover-image">
														<img src="image/products/product-1.jpg" alt="">
													</a>
		                                            <div class="hover-btns">
		                                                <a href="add_to_cart?book_id=${book.bookId}" class="single-btn">
															<i class="fas fa-shopping-basket"></i>
														</a>
		                                                <a href="wishlist.html" class="single-btn">
															<i class="fas fa-heart"></i>
														</a>
		                                                <a href="compare.html" class="single-btn">
															<i class="fas fa-random"></i>
														</a>
		                                                <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
															<i class="fas fa-eye"></i>
														</a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="price-block">
		                                        <span class="price"><fmt:formatNumber value="${book.price}" type="currency" /></span>
		                                        <del class="price-old">£51.20</del>
		                                        <span class="price-discount">20%</span>
		                                    </div>
		                                </div>
		                            </div>
		                        
		                            <div class="product-list-content">
		                                <div class="card-image">
		                                    <img src="data:image/jpg;base64, ${book.base64Image}">
		                                </div>
		                                <div class="product-card--body">
		                                    <div class="product-header">
		                                        <a href="" class="author">${book.author}</a>
		                                        <h3><a href="view_book?id=${book.bookId}" tabindex="0">${book.title}</a></h3>
		                                    </div>
		                                    <div class="price-block">
		                                        <span class="price"><fmt:formatNumber value="${book.price}" type="currency" /></span>
		                                        <del class="price-old">£51.20</del>
		                                        <span class="price-discount">20%</span>
		                                    </div>
		                                    <div class="rating-block">
		                                        <jsp:directive.include file="book_rating.jsp" />
		                                    </div>
		                                    <div class="btn-block">
		                                        <a href="add_to_cart?book_id=${book.bookId}" class="btn btn-outlined">Add To Cart</a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
	                    </c:forEach>
                    </c:if>
                    
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-6.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											fpple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-7.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-8.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-9.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-10.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-11.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-card card-style-list">
                            <div class="product-list-content">
                                <div class="card-image">
                                    <img src="image/products/product-2.jpg" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
											Apple
										</a>
                                        <h3><a href="product-details.html" tabindex="0">Apple iPad with Retina Display
												MD510LL/A</a></h3>
                                    </div>
                                    <article>
                                        <h2 class="sr-only">Card List Article</h2>
                                        <p>More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or..</p>
                                    </article>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                    <div class="rating-block">
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star star_on"></span>
                                        <span class="fas fa-star "></span>
                                    </div>
                                    <div class="btn-block">
                                        <a href="" class="btn btn-outlined">Add To Cart</a>
                                        <a href="" class="card-link"><i class="fas fa-heart"></i> Add To Wishlist</a>
                                        <a href="" class="card-link"><i class="fas fa-random"></i> Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pagination Block -->
                <div class="row pt--30">
                    <div class="col-md-12">
                        <div class="pagination-block">
                            <ul class="pagination-btns flex-center">
                                <li><a href="" class="single-btn prev-btn ">|<i class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li><a href="" class="single-btn prev-btn "><i class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li class="active"><a href="" class="single-btn">1</a></li>
                                <li><a href="" class="single-btn">2</a></li>
                                <li><a href="" class="single-btn">3</a></li>
                                <li><a href="" class="single-btn">4</a></li>
                                <li><a href="" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i></a>
                                </li>
                                <li><a href="" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i>|</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog" aria-labelledby="quickModal" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            <div class="product-details-modal">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <!-- Product Details Slider Big Image-->
                                        <div class="product-details-slider sb-slick-slider arrow-type-two" data-slick-setting='{
										"slidesToShow": 1,
										"arrows": false,
										"fade": true,
										"draggable": false,
										"swipe": false,
										"asNavFor": ".product-slider-nav"
										}'>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-1.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-2.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-3.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-4.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-5.jpg" alt="">
                                            </div>
                                        </div>
                                        <!-- Product Details Slider Nav -->
                                        <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two" data-slick-setting='{
				"infinite":true,
				  "autoplay": true,
				  "autoplaySpeed": 8000,
				  "slidesToShow": 4,
				  "arrows": true,
				  "prevArrow":{"buttonClass": "slick-prev","iconClass":"fa fa-chevron-left"},
				  "nextArrow":{"buttonClass": "slick-next","iconClass":"fa fa-chevron-right"},
				  "asNavFor": ".product-details-slider",
				  "focusOnSelect": true
				  }'>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-1.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-2.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-3.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-4.jpg" alt="">
                                            </div>
                                            <div class="single-slide">
                                                <img src="image/products/product-details-5.jpg" alt="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 mt--30 mt-lg--30">
                                        <div class="product-details-info pl-lg--30 ">
                                            <p class="tag-block">Tags: <a href="#">Movado</a>, <a href="#">Omega</a></p>
                                            <h3 class="product-title">Beats EP Wired On-Ear Headphone-Black</h3>
                                            <ul class="list-unstyled">
                                                <li>Ex Tax: <span class="list-value"> £60.24</span></li>
                                                <li>Brands: <a href="#" class="list-value font-weight-bold"> Canon</a></li>
                                                <li>Product Code: <span class="list-value"> model1</span></li>
                                                <li>Reward Points: <span class="list-value"> 200</span></li>
                                                <li>Availability: <span class="list-value"> In Stock</span></li>
                                            </ul>
                                            <div class="price-block">
                                                <span class="price-new">£73.79</span>
                                                <del class="price-old">£91.86</del>
                                            </div>
                                            <div class="rating-widget">
                                                <div class="rating-block">
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star star_on"></span>
                                                    <span class="fas fa-star "></span>
                                                </div>
                                                <div class="review-widget">
                                                    <a href="">(1 Reviews)</a> <span>|</span>
                                                    <a href="">Write a review</a>
                                                </div>
                                            </div>
                                            <article class="product-details-article">
                                                <h4 class="sr-only">Product Summery</h4>
                                                <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the Dust with ruffles at the bottom of the dress.
                                                </p>
                                            </article>
                                            <div class="add-to-cart-row">
                                                <div class="count-input-block">
                                                    <span class="widget-label">Qty</span>
                                                    <input type="number" class="form-control text-center" value="1">
                                                </div>
                                                <div class="add-cart-btn">
                                                    <a href="" class="btn btn-outlined--primary"><span
														class="plus-icon">+</span>Add to Cart</a>
                                                </div>
                                            </div>
                                            <div class="compare-wishlist-row">
                                                <a href="" class="add-link"><i class="fas fa-heart"></i>Add to Wish List</a>
                                                <a href="" class="add-link"><i class="fas fa-random"></i>Add to Compare</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="widget-social-share">
                                    <span class="widget-label">Share:</span>
                                    <div class="modal-social-share">
                                        <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                                        <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>

</body>

</html>