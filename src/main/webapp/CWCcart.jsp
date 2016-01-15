<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Project</title>
	<link rel="stylesheet" href="css/zebra/default.css" type="text/css">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/jquery-ui.min.css" rel="stylesheet" media="screen">	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/dt/jszip-2.5.0,pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-flash-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,kt-2.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.css"/>
</head>

<body><!--  style="cursor: auto; overflow-y: scroll;" -->
   <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
             <a class="navbar-brand" href="#">Coupon Web Application</a>
            </div>
           <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="CWAclientA.jsp">Home</a></li>
				<li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Add Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
				<li><a href="CWAaddcoupon.jsp">Add Single Coupon</a></li>
				<li><a href="CWAaddcoupon.jsp">Add Coupon File</a></li>
				</ul>
				</li>
                <li><a href="CWACreadcoupon.jsp">Read Coupon</a></li>
				<li class="active"><a href="CWCcart.jsp">Shopping Cart</a></li>
                <li><a href="CWACvalidatecoupon.jsp">Validate Coupon</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Find Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="CWCfindbytime.jsp">Find Coupon by Time</a></li>
                    <li><a href="CWCfindforitem.jsp">Find Coupon by Item Name</a></li>
                  </ul>
                </li>             
				<li><a href="CWAdelcoupon.jsp">Delete Coupon</a></li>   
			</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="CWsignup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="CWlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
				
			</div>        
		</div>
        </nav>
	<hr class="featurette-divider">
	<div  class="container-fluid">
		<div class="row">
			<!--begin-->
			<!-- 
				just for test: <a onclick="coupon('iPhone6',1,50)">iphone 6,1,%50 - </a><br />
				<a onclick="coupon('iPhone6',2,2)">iphone 6,2,2 get one free  - </a><br />
				<a onclick="coupon('iPhone6',3,10)">iphone 6,3,$10 - </a><br />
				<a onclick="coupon('iPhone5',1,20)">iphone 5,1,%20   </a><br />
				<a onclick="coupon('iPhone5',2,3)">iphone 5,2,3 get one free - </a><br />
				<a onclick="coupon('iPhone5',3,5)">iphone 5,3,$5   </a><br /><br />
				 -->
			<!--end-->
			<br /><br />
			<div class="col-xs-12 col-md-8" role="main">
				<div class="panel-group" id="01" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="items_header">
							<h4 class="panel-title">
								<div class="row">
									<div class="col-xs-6" role="complementary" style="text-align:left">
										<a role="button" data-toggle="collapse"  href="#items" aria-expanded="true" aria-controls="items">
											Smart Phones
										</a>
									</div>
									<div class="col-xs-6" role="complementary" style="text-align:right">
										<!--text-->
									</div>
								</div>
							</h4>
						</div>
						<div id="items" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="items_header">
							<div class="panel-body">
								<div class="panel-group" id="itemsList" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="item1_header">
											<h4 class="panel-title">
												<div class="row">
													<div class="col-xs-6" role="complementary" style="text-align:left">
														<a role="button" data-toggle="collapse"  href="#item1" aria-expanded="true" aria-controls="item1">
															Apple
														</a>
													</div>
													<div class="col-xs-6" role="complementary" style="text-align:right">
														<!--Text-->
													</div>
												</div>
											</h4>
										</div>
										<div id="item1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="item1_header">
											<div class="panel-body">
												<section class="products">
													<div class="product ui-draggable" id="11" title="">
														<img class="pimg" src="img/iPhone.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">iPhone6</h2>
															
															<p class="id">Memory: 64GB</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">The best smart phone ever!</p>
														</div>
														<p class="price">$21.99</p>	
													</div>
												</section>
												<section class="products">
													<div class="product ui-draggable" id="13" title="">
														<img class="pimg" src="img/iPhone-1.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">iPhone5</h2>
															<p class="id">Memory: 64GB</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">The best smart phone ever!</p>
														</div>
														<p class="price">$14.99</p>	
													</div>
												</section>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-4" style="padding-right:0; padding-left:0">
				<div id="followbox"></div>
				<div id='cart' style="margin-right:10px">
				<h2>Your Shopping Cart</h2>
				<p align="justify">As you browse through the product listing, you can add your items to the shopping cart by dragging them into the box below.</p>
				<div class="dropzone ui-droppable"><p>Drag items here to add them to your cart.</p></div>
				<table id="example" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Coupon</th>
							<th>Final</th>
						</tr>
					</thead>
					<tbody>	
					</tbody>
				</table>
				<br /><br />
				<table id="check" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th>Discount</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td id='totalDiscount'>$0</td>
							<td id='totalPrice'>$0</td>
						</tr>
					</tbody>
				</table>
				<br />
				<br />
				<span>Delivery Date: </span><input type="text" class="datepicker" />
				</div>
			</div>
		</div>
	</div>
	<!-- plugins -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/zebra_datepicker.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.jfollow.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/s/dt/jszip-2.5.0,pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-flash-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,kt-2.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.js"></script>
	<script>
		function totalZero(arg)
		{
			if(arg < 0)
				return 0;
			else
				return arg;
		}
		function returnPrecision(intArg)
		{
			precision = intArg.toString().indexOf(".")+2;
			if(precision > 2)
				return intArg.toPrecision(precision);
			else
				return intArg;
		}
		function isInteger(n)
		{
			return n === +n && n === (n|0);
		}
		function removeTR(el)
		{
			var singlePrice, price, quantity, finalPrice, discount, totalDiscount;
			var id = $(el).parent().closest('tr').attr('id');
			singlePrice = $("#"+id).children(".priceD").text();
			singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
			price = $("#"+id).children(".finalPrice").text();
			price = parseFloat(price.substring(1, price.length));
			quantity = parseInt($("#"+id).children(".quantity").children('input').val());
			totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
			totalPrice -= price;
			$('#totalPrice').text("$"+totalZero(returnPrecision(totalPrice)));
			finalPrice = quantity*singlePrice;
			discount = returnPrecision(finalPrice) - price;
			totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
			if(isNaN(totalDiscount))
				totalDiscount = 0;
			totalDiscount -= discount;
			$('#totalDiscount').text("$"+totalZero(returnPrecision(totalDiscount)));
			var table = $('#example').DataTable();
			table.row('#'+id).remove().draw( false );
		}
		function quantityChange(el) 
		{
			var quantity = parseInt($(el).val());
			if(isInteger(quantity))
			{
				var nowQuant = parseInt($(el).attr('qu'));
				if(quantity > nowQuant)
				{
					var price = $(el).parent().closest('tr').find('.priceD').text();
					price = parseFloat(price.substring(1, price.length));
					var quantDiff = quantity - nowQuant;
					changedPrice = price * quantDiff;
					var before = $(el).parent().closest('tr').find(".finalPrice").text();
					before = parseFloat(before.substring(1, before.length));
					$(el).parent().closest('tr').find(".finalPrice").text("$"+returnPrecision(changedPrice+before));
					var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
					totalPrice += changedPrice;
					$('#totalPrice').text("$"+returnPrecision(totalPrice));
					$(el).attr('qu', quantity);
				}
				else if(quantity < nowQuant)
				{
					var singlePrice, price, quantity, finalPrice, discount, totalDiscount;
					var id = $(el).parent().closest('tr').attr('id');
					singlePrice = $("#"+id).children(".priceD").text();
					singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
					price = $("#"+id).children(".finalPrice").text();
					price = parseFloat(price.substring(1, price.length));
					totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
					totalPrice -= price;
					finalPrice = quantity*singlePrice;
					totalPrice += finalPrice;
					$('#totalPrice').text("$"+returnPrecision(totalPrice));
					$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalPrice));
					discount = returnPrecision(nowQuant*singlePrice) - price;
					totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
					if(isNaN(totalDiscount))
						totalDiscount = 0;
					totalDiscount -= discount;
					$('#totalDiscount').text("$"+totalZero(returnPrecision(totalDiscount)));
					$(el).attr('qu', quantity);
				}
			}
			else
			{
				$(el).val($(el).attr('qu'));	
			}
		}
		function coupon(id, couponType, couponDiscount)
		{
			var price, changedPrice, diff, precision, totalPrice, totalDiscount, quantity, freeGift, singlePrice, finalPrice;
			var finalDiscount, totalDiff, firstDiscount, secondDiscount, diffDiscount;
			if(couponType == 1)
			{
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				finalDiscount = (finalPrice*(100-couponDiscount))/100;
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else if(couponType == 2)
			{
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				freeGift = Math.floor(quantity/couponDiscount);
				finalDiscount = finalPrice-(freeGift*singlePrice);
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else if(couponType == 3)
			{
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				finalDiscount = finalPrice-(quantity*couponDiscount);
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else
			{
				console.log('error');
			}
		}
		function var_dump(obj, indentSpaces) {
	    	switch (typeof obj) {
	        	case "object":
	            	console.log(indent(indentSpaces) + typeof obj + ":");
	            	indentSpaces += 2; // indent further as we are entering the objects properties
	            	for (var i in obj) {
	                	console.log(indent(indentSpaces) + i + ":");
	                	var_dump(obj[i], indentSpaces + 1);
	            	}
	            	break;
	        	default: // things that are not objects, primatives... etc...
	            	console.log(indent(indentSpaces) + typeof obj + ":" + obj);
	            	break;
	    	}
		}
		// just for styling with indents
		function indent(spaces) {
	    	var i = 0;
	    	var rtr = "";
	    	while(i <= (spaces * 2)) {
	        	rtr += " ";
	        	i++;
	    	}
	    	return rtr;
		}
		function checkCoupon(el)
		{
			var id = $(el).parent().children('input').val();
			var name = $(el).parent().parent().attr('id');
			//console.log(name);
			$.ajax({
				url: "http://localhost:8080/coupon-webservice/webapi/myresource/getcoupons",
				type: "get",
				data: { 'var1': id},
				dataType:"json",
				async: false,
				success: function (response) {
					var jsonData = response;
					if(jsonData != '')
					{
						var couponType = parseInt(jsonData.CouponType);
						var couponDiscount = parseInt(jsonData.Discount);
						coupon(name, couponType, couponDiscount);
					}
					else
					{
						console.log('error');
					}
					console.log(response.responseText);
				},
				error: function (jqXHR, exception) {
					var msg = '';
					if (jqXHR.status === 0) {
						msg = 'Not connect.\n Verify Network.';
					} else if (jqXHR.status == 404) {
						msg = 'Requested page not found. [404]';
					} else if (jqXHR.status == 500) {
						msg = 'Internal Server Error [500].';
					} else if (exception === 'parsererror') {
						msg = 'Requested JSON parse failed.';
					} else if (exception === 'timeout') {
						msg = 'Time out error.';
					} else if (exception === 'abort') {
						msg = 'Ajax request aborted.';
					} else {
						msg = 'Uncaught Error.\n' + jqXHR.responseText;
					}
					console.log(msg);
				},
			});
		}
		$(document).ready(function() {
			$('#cart').jfollow('#followbox', 20);	
			$('input.datepicker').Zebra_DatePicker({
				direction: true
			});
			$('#check').DataTable( {
			"paging":   false,
			"searching":   false,
			"ordering": false,
			"info":     false,
			"columns": [
					{"width": "10%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" }
				]
			} );
			$('#example').DataTable( {
				"order": [
					[1, 'desc']
				],
				"columnDefs": [
					{
						"targets": 3,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'quantity');
							var text = "<input onchange='quantityChange(this)' qu='1' maxlength='3' value='1' type='number' min='1' step='1' style='width:70%' />";
							$(td).append(text);
						}
					},
					{
						"targets": 5,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'finalPrice');
						}
					},
					{
						"targets": 2,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'priceD');
						}
					},
					{
						"targets": 0,
						"createdCell": function (td, cellData, rowData, row, col) {
							var text = "<a onclick = 'removeTR(this)' class='remove'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>";
							$(td).append(text);
						}
					}
				],
				"columns": [
					{ "orderable": false, "width": "10%" },
					{"width": "18%" },
					{"width": "18%" },
					{ "orderable": false, "width": "18%" },
					{ "orderable": false, "width": "18%" },
					{"width": "18%" }
				],
				"createdRow": function( row, data, dataIndex ) {
					$(row).attr("id", data[1]);
				},
				"paging":   false,
				"searching":   false,
				//"ordering": false,
				"info":     false,
				"drawCallback": function( settings ) {
					var api = this.api();
				}
			} );
			var table = $('#example').DataTable();
			$('.pimg').draggable({
				appendTo: 'body',
				helper: 'clone'		
			});
			$('.dropzone').droppable({
				tolerance: 'touch',
				activeClass: 'ui-state-default',
				hoverClass: 'ui-state-hover',
				accept: '.pimg',
				drop: function(event, ui){
					var item = $(ui.draggable).parent().closest('div').find('.product-title').text();
					var itemID = $(ui.draggable).parent().attr('id');
					var existsItem = $("#"+item).length; //age mojood nabashe
					if(!existsItem)
					{
						var price = $(ui.draggable).parent().closest('div').find('.price').text();
						table.row.add([
							'',
							item,
							price,
							'',
							"<button onclick='checkCoupon(this);' type='button' class='btn btn-default btn-xs'><span class='glyphicon glyphicon-tag' aria-hidden='true'></span> Coupon</button><input type='hidden' value='"+itemID+"' class='table-item' />",
							price
						] ).draw( false );
						var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
						if(isNaN(totalPrice))
							totalPrice = 0;
						totalPrice += parseFloat(price.substring(1, price.length));
						$('#totalPrice').text("$"+returnPrecision(totalPrice));
					}
					else
					{
						var count = parseInt($("#"+item).children(".quantity").find('input').val());
						count++;
						$("#"+item).children(".quantity").find('input').val(count);
						var price = $("#"+item).children(".priceD").text();
						price = parseFloat(price.substring(1, price.length));
						var finalPrice = $("#"+item).children(".finalPrice").text();
						finalPrice = parseFloat(finalPrice.substring(1, finalPrice.length));
						finalPrice += price;
						$("#"+item).children(".finalPrice").text("$"+returnPrecision(finalPrice));
						var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
						totalPrice += price;
						$('#totalPrice').text("$"+returnPrecision(totalPrice));
					}
				}
			});
		});
	</script>
</body>
</html>