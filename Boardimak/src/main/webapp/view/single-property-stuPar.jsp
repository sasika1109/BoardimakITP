<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>

<html lang="en">

<head>

<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Font Roboto 400, 500, 700 and 900-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="static/css/main.css">
<link rel="stylesheet" href="static/css/dashboard.css">
<link rel="stylesheet" href="static/css/cms.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<style>
.container{
width:1400px;
}
</style>

<title>Single property</title>
</head>

<body>
	<div class="container">
		<div class="topPropertyImage mb-4">
			<img width="100%" height="600px"
				src="assets/images/homeSingleview.jpg" alt="">
		</div>

		<div class="propertydetails ml-2">
			<p class="font-weight-bolder text-dark" style="font-size: 40px">Property
				in malbe</p>
			<div class="ml-3 row shadow-lg p-5 mb-2 bg-white rounded">
				<div class="col">
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Address : <span class=" font-weight-light">${property.addressOne }
							${property.addressTwo } ${property.city }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1"> Contact
						No :</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Monthly Payment: <span class=" font-weight-light">${property.monthlyPayment }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Key Money : <span class=" font-weight-light">${property.keyMoney }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Description : <span class=" font-weight-light">${property.description }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Other Facilities : <span class=" font-weight-light">${property.otherFacilities }</span>
					</p>

				</div>
				<div class="border border-dark col-1 border-bottom-0 border-top-0 border-right-0 "></div>
				<div class="col">
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						No of Rooms : <span class=" font-weight-light">${property.noOfRooms }
						</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Air Condition : <span class=" font-weight-light">${property.airCondition }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Monthly Payment: <span class=" font-weight-light">${property.monthlyPayment }</span>
					</p>
					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Time Period : <span class=" font-weight-light">${property.timePeriod }</span>
					</p>

					<p class="text-dark font-weight-bold" style="font-size: 20px"><img alt="" src="assets/icons/circular-shape-silhouette.png" width="11px" class="mb-1">
						Parking : <span class=" font-weight-light">${property.parking }</span>
					</p>
				</div>

			</div>
		</div>

		<div class="dropdownBookNow">


			<div class="container float-right">

				<button type="button"
					class="btn  btn-blue btn-adduser mt-4 mb-2 float-right"
					data-toggle="collapse" data-target="#demo">Book Now</button>
				<div id="demo" class="collapse">
					<form action="/bookaProperty" id="form1" method="post">

						<textarea class="mt-3 p-2 w-100" name="massege"
							id="textAreaBlogBody" cols="16" rows="6"
							placeholder="Massege to owner">${bookings.massege }</textarea>

						<input class="p-2 d-none inputBlogTitle w-100" type="text"
							name="status" id="status" placeholder="Title"
							value="${bookings.status}">
						 <input
							class="p-2 d-none inputBlogTitle w-100" type="text"
							name="propertyID"  id="propertyID"
							value="${bookings.propertyID}"> 
						<input
							class="p-2 d-none inputBlogTitle w-100" type="text"
							name="ownerID" id="ownerID" 
							value="${bookings.ownerID}">
							
							<%-- <input
							class="p-2 d-none inputBlogTitle w-100" type="text"
							name="owner_name" id="owner_name" 
							value="${bookings.owner_name}"> --%>
							
							<input
							class="p-2 d-none inputBlogTitle w-100" type="text"
							name="user_Name" id="user_Name" 
							value="${bookings.user_Name}">

						<button type="submit" form="form1" 
							class="btn btn-blue btn-adduser mt-4 float-right"
							onclick="return myFun()">Book</button>

						<button type="button"
							class="btn  btn-blue btn-adduser mt-4 mr-2 float-right"
							data-target="#demo" data-toggle="collapse">Cancel</button>
					</form>
				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		var propertyID = document.getElementById("propertyID");
		var ownerID = document.getElementById("ownerID");
		var status1 = document.getElementById("status");
		var textAreaMassegeBody = document.getElementById("textAreaBlogBody");
		
	/* 	var  owner_name = document.getElementById("owner_name"); */
		var user_Name = document.getElementById("user_Name");

		function myFun() {
			
			if (textAreaMassegeBody.value == "") {
				alert("Insert Massege");
				return false;
			}else{
				ownerID.value = "1";
				status1.value = "Pending";
				propertyID.value = "2";
				user_Name.value= "Prashani";
				/* owner_name.value = "Aruni"; */
			}

			
		}
		
		
		function myFunPub() {

			if (title.value == "") {
				alert("Insert Title");
				return false;
			} else if (textAreaBlogBody.value == "") {
				alert("Insert Description");
				return false;
			} else {
				inputF.value = "Published";
				inputF2.value = "TC";
			}

		}
		
	</script>
	
	

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
</body>

</html>