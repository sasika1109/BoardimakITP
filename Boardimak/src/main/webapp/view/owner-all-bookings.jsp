<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Font Roboto 400, 500, 700 and 900-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap"
	rel="stylesheet">

<!-- Styles -->
<link rel="stylesheet" href="static/css/main.css">
<link rel="stylesheet" href="static/css/dashboard.css">
<link rel="stylesheet" href="static/css/users.css">

<title>Users</title>
</head>

<body>
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="left-panel">
					<div class="wrapper-profile">
						<div class="profile-picture">
							<img src="assets/icons/profile-pic.png" alt="Profile picture">
						</div>
						<div class="profile-text">
							<h5>John Peter</h5>
							<p>Owner</p>
						</div>
						<div class="profile-notification">
							<img src="assets/icons/notification-icon.png"
								alt="Notification Icon">
						</div>
					</div>

					<div class="wrapper-menu">
						<ul>


							<a href="/bookingsHomestu">
								<li class="active"><img src="assets/icons/booking-icon.png"
									alt="Bookings Icon">Bookings</li>
							</a>

							<a href="">
								<li><img src="assets/icons/promotions-icon.png"
									alt="Promotions Icon">Promotions</li>
							</a>
							<a href="payment-details.html">
								<li><img src="assets/icons/payment-icon.png"
									alt="Payment Icon">Payments</li>
							</a>

							<a href="">
								<li><img src="assets/icons/support-icon.png"
									alt="Support Icon">Support</li>
							</a>
						</ul>
					</div>

					<div class="wrapper-help">
						<a href=""><img src="assets/icons/help-icon.png"
							alt="Help icon">Help</a>
					</div>
				</div>
				<div class="right-panel">
					<div class="wrapper-body">
						<h3>All Bookings</h3>

						<p>It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout. It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout.</p>
					</div>

					<div class="dashboard-body">
						<table class="table table-borderless">
							<thead>
								<tr>
									<th scope="col">Booking ID</th>
									<th scope="col">Property ID</th>
									<th scope="col">Buyer</th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="bookings" items="${bookings}">
									<c:if test="${bookings.status != 'Reject'}">
																	
								
									<tr>
										<td>
											<div class="table-profile-text">
												<p class="table-name">${bookings.id}</p>
											</div>
										</td>
										<td>
											<p class="">${bookings.propertyID}</p>
										</td>
										<td>${bookings.user_Name}</td>

										<td>
											<ul class="list-actions">

												<li><img src="assets/icons/eye.png"
													alt="View user icon " data-toggle="modal"
													data-target="#a"><div class="modal fade" id="a"
													tabindex="-1" role="dialog"
													aria-labelledby="exampleModalCenterTitle"
													aria-hidden="true">
													<div class="modal-dialog modal-dialog-centered"
														role="document">
														<div class="modal-content">
															<div class="modal-header">

																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																<div class="name">
																	<p class="d-inline font-weight-bolder text-dark">Who
																		booked :</p>
																	<p class="d-inline-block text-dark">${bookings.user_Name}</p>
																	<br>

																	<p class="d-inline font-weight-bolder text-dark">Massege
																		:</p>
																	<p class="text-dark">${bookings.massege}</p>
																</div>

															</div>
															<div class="modal-footer">

																<button type="button" class="btn btn-danger">Reject</button>
																<button type="button" class="btn btn-primary">Accept</button>


															</div>
														</div>
													</div>
												</div></li>

												

												<li></li>
												<a href="/deleteBookingsOwner?id=${bookings.id}">
													<li><img src="assets/icons/delete-icon.png"
														alt="Delete user icon"></li>
												</a>
											</ul>
										</td>
									</tr>
									
									</c:if>

								</c:forEach>
							</tbody>


						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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