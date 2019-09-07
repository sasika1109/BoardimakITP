<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Font Roboto 400, 500, 700 and 900-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <link rel="stylesheet" href="assets/css/owner-promotion.css">

    <title>Owner</title>
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
                                <h5>John Snow</h5>
                                <p>Property Owner</p>
                            </div>
                            <div class="profile-notification">
                                <img src="assets/icons/notification-icon.png" alt="Notification Icon">
                            </div>
                        </div>

                           <div class="wrapper-menu">
                                <ul>
                                    <a href="dashboard.html"><li ><img src="assets/icons/dashboard-icon.png" alt="Dashboard Icon">Dashboard</li></a>
                                    <a href=""><li><img src="assets/icons/property-icon.png" alt="Properties Icon">Properties</li></a>
                                    <a href=""><li><img src="assets/icons/booking-icon.png" alt="Bookings Icon">Bookings</li></a>
                                    <a href="users.html"><li><img src="assets/icons/users-icon.png" alt="Users Icon">Users</li></a>
                                    <a href="all-promotions.html"><li class="active"><img src="assets/icons/promotions-icon.png" alt="Promotions Icon">Promotions</li></a>
                                    <a href="payment-details.html"><li><img src="assets/icons/payment-icon.png" alt="Payment Icon">Payments</li></a>
                                    <a href=""><li><img src="assets/icons/content-management-icon.png" alt="Contemtn Management Icon">Content Management</li></a>
                                    <a href=""><li><img src="assets/icons/support-icon.png" alt="Support Icon">Support</li></a>
                                </ul>
                        </div>

                        <div class="wrapper-help">
                            <a href=""><img src="assets/icons/help-icon.png" alt="Help icon">Help</a>
                        </div>
                    </div>
                    <div class="right-panel">
                        <div class="wrapper-body">
                            <h3 class="title">All Promotions</h3>
                            <button class="btn-blue btn-add-pro" data-toggle="modal" data-target=".add-promotion-modal">+Add Promotion</button>
                              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout</p>
                        </div>

                        <div class="dashboard-body">
                          
                            
                            <img class="promotion-img" src="assets/images/promotion.png" alt="Promotion images">
                            <br>
                            <h4 class="mdl-text">No promotions available yet.</h4>
                            <p class="mdl-text">Click the button below to add your first promotion</p>
                            <button class="btn-blue btn-middle" data-toggle="modal" data-target=".add-promotion-modal">+Add Promotion</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

  
 <!-- Modal -->
  <div class="modal fade add-promotion-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Promotion</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
               
                <form class="modal-form">
                        <div class="row">
                        
                            <div class="col-md-8">
                                <div class="form-group row">
                                    <h6 class="col-form-label col-sm-4">Select Property:</h6>
                                        <select class="form-control promotion-area col-sm-6" id="exampleFormControlSelect1">
                                            <option>P1</option>
                                            <option>p2</option>
                                            <option>p3</option>
                                            <option>p4</option>
                                        </select>
                                    </div>
                            </div>
							
							 <div class="col-md-6">
                                    <fieldset class="form-group">
                                            <div class="row">
                                                    <h6 class="col-form-label col-sm-4">Type:</h6>
                                               <div class="col-sm-11">
                                                <div class="form-check-inline">
                                                     <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1">
                                                      <label class="form-check-label" for="gridRadios1">Percentage(%)</label>
                                                </div>
                                                   <div class="form-check-inline">
                                                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                                      <label class="form-check-label" for="gridRadios2">Amount(LKR)</label>
                                                </div>       
                                              </div>
                                        </div>
                                      </fieldset>
							 </div>
									  
							<div class="col-md-4">
                                <div class="form-group row">
                                    <input type="text" class="col-sm-11" id="Input2" placeholder="Amount">
                               </div>
                            </div>
							
						</div>
						
						  <div class="col-md-4">
                           <div class="form-group row">
                                    <h6 class="col-form-label col-sm-8">Status:</h6>
                                       <input type="text" class="col-sm-11" id="Input2" placeholder="Active/Not Active">
                                    </div>
                            </div>
						
                       <div class="row">
                            <div class="col-md-6">
                                <div class="form-group row">
                                    <input type="datetime-local" class="col-sm-11" id="Input1" placeholder="START DATE">
                                </div>   
                            </div>
                            <div class="col-md-6">
                                <div class="form-group row">
                                    <input type="datetime-local" class="col-sm-11" id="Input1" placeholder="END DATE">
                                </div>
                            </div>
							
						
                       </div>
              

                    <button type="submit" class="btn-blue modal-btn">Add Promotion</button>
                 </form>
        </div>
      </div>
    </div>
  </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>