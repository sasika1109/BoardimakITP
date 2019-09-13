<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/dashboard.css">
<link rel="stylesheet" href="assets/css/ticket.css">

<title>Ticket</title>
</head>
<body>
	<div class="section">
		<div class="container-fluid">
			<div class="row">
				<div class="left-panel">
					<div class="wrapper-profile">
						<div class="profile-picture">
							<img src="assets/icons/profile-pic.png"
								alt="Profile picture">
						</div>
						<div class="profile-text">
							<h5>John Peter</h5>
							<p>Admin</p>
						</div>
						<div class="profile-notification">
							<img src="assets/icons/notification-icon.png"
								alt="Notification Icon">
						</div>
					</div>

					<div class="wrapper-menu">
						<ul>
							<a href="dashboard.html"><li><img
									src="assets/icons/dashboard-icon.png"
									alt="Dashboard Icon">Dashboard</li></a>
							<a href=""><li><img
									src="assets/icons/property-icon.png"
									alt="Properties Icon">Properties</li></a>
							<a href="/bookingsHomestu"><li><img
									src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
							<a href="users.html"><li><img
									src="assets/icons/users-icon.png" alt="Users Icon">Users</li></a>
							<a href=""><li><img
									src="assets/icons/promotions-icon.png"
									alt="Promotions Icon">Promotions</li></a>
							<a href="payment-details.html"><li><img
									src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
							<a href="/cmsHome"><li><img
									src="assets/icons/content-management-icon.png"
									alt="Contemtn Management Icon">Content Management</li></a>
							<a href="/show-ticket"><li><img
									src="assets/icons/support-icon.png" alt="Support Icon">Support</li></a>
						</ul>
					</div>

					<div class="wrapper-help">
						<a href=""><img src="assets/icons/help-icon.png"
							alt="Help icon">Help</a>
					</div>
				</div>

				<c:choose>
					<c:when test="${mode=='MODE_HOME' }">

						<div class="right-panel">
							<div class="wrapper-body">
								<h3>Dashboard</h3>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout.</p>
							</div>

							<div class="dashboard-body">
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout.</p>
								<br>
								<p class="txt-red">I am red text</p>
								<p class="txt-orange">I am orange text</p>
								<p class="txt-green">I am green text</p>
								<br>
								<button class="btn-blue">BUTTON</button>
								<input type="text" placeholder="TESTING"></input>
							</div>
						</div>

					</c:when>

					<c:when test="${mode=='ALL_TICKET' }">
						<div class="right-panel">
							<div class="wrapper-body">
								<h3>Support Tickets</h3>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout.</p>
							</div>

							<div class="dashboard-body">
								<table class="table table-borderless">
									<thead>
										<tr>
											<th scope="col">Ticket ID</th>
											<th scope="col">Subject</th>
											<th scope="col">Submitted By</th>
											<th scope="col">Email</th>
											<th scope="col">Date</th>
											<th scope="col">Status</th>
											<th scope="col">Action</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="user" items="${users }">
											<tr>
												<td><a href="/open-ticket?id=${user.id }"
													class="TransactionID">${user.id}</a></td>
												<td><p>${user.subject}</p></td>
												<td><p>${user.name}</p></td>
												<td><p>${user.email}</p></td>
												<td><p>${user.created_date}</p></td>
												<td><c:if test="${user.status == 'Open'}">
														<h8 class="txt-green">Open</h8>
													</c:if> <c:if test="${user.status == 'Pending'}">
														<h8 class="text-warning">Pending</h8>
													</c:if> <c:if test="${user.status == 'Resloved'}">
														<h8 class="txt-red">Resolved</h8>
													</c:if>
												<td>
													<ul class="list-actions">
														<a href="/edit-user?id=${user.id }"><li><img
																src="assets/icons/edit-user-icon.png" style = "width:22px; height:22px;"
																alt="Edit user icon" ></li></a>
														<li></li>
														<a href="/delete-ticket?id=${user.id }"><li><img
																src="assets/icons/delete-icon.png" style = "width:22px; height:22px;"
																alt="Delete user icon"></li></a>
													</ul>
												</td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

					</c:when>

						<c:when test="${mode=='OPEN_TICKET' }">
						<div class="right-panel">
							<div class="wrapper-body">
								<h3>
									Support Tickets >
									<h3>Ticket ID:TIC ${user.id }</h3>
								</h3>
								<a href="/edit-status2?id=${user.id }"
									class="btn-blue btn-ticket">Pending</a> <a
									href="/edit-status?id=${user.id }" class="btn-blue btn-ticket">Resolve</a>
								<ul>
									<li>Status : <c:if test="${user.status == 'Open'}">
											<h8 class="txt-green">Open</h8>
										</c:if> <c:if test="${user.status == 'Pending'}">
											<h8 class="text-warning">Pending</h8>
										</c:if> <c:if test="${user.status == 'Resloved'}">
											<h8 class="txt-red">Resolved</h8>
										</c:if>
									</li>
									<li>Created On : <h8>${user.created_date}</h8></li>
									<li>Email : <h8>${user.email}</h8></li>
								</ul>
							</div>

							<div class="dashboard-body">
								<h6>About : ${user.subject}</h6>
								</br>
								<h8>${user.name}</h8>
								<p>
									Dear Administor,${user.content}<br> thank you.
								</p>
									<c:forEach var="reply" items="${replys }">
										<c:if test="${user.id == reply.ticket_id}">
										<c:choose>
											<c:when test="${reply.user_id == 1}">
												<div class="message">
												<h8>${user.name}</h8>
												<p>${reply.reply_msg}</p>
												</div>
											</c:when>
											 <c:otherwise>
											 <div class="reply">
											<h8>Administrator</h8>
											<p>${reply.reply_msg}</p>
												</div>
												 </c:otherwise>
												 </c:choose>
										</c:if>
									</c:forEach>

								<form action="replyTicket1" method="POST">
									<input type="hidden" name="id" value="${reply.id }" /> <input
										type="hidden" name="ticket_id" value="${user.id }" /> <input
										type="hidden" name="user_id" value="2" />
									<textarea id="subject" class="inputtext" name="reply_msg"
										placeholder="Your Reply.." required></textarea>
									<button class="btn-blue btn-add-prop">Reply</button>
								</form>
							</div>
						</div>
			</div>
		</div>
	</div>

	</c:when>
	</c:choose>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>
