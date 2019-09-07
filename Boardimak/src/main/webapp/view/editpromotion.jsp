<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!doctype html>
<html lang="en"> 


<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Add Promotion</title>

<link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <link rel="stylesheet" href="assets/css/owner-promotion.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>




</head>
<body>
<div class="p-right-panel">
    <div class="p-wrapper-body">
    <h1 id="para">Edit Promotion</h1>
     
	 <div class="pf-wrapper-body">
    	<form class="form" action="add-promotion" method="post">
                        <div class="row">
                            <div class="col-md-8">
                            <input type="hidden" name="id" value="${p.id }" />
                                <div class="form-group row">
                                    <label class=" col-form-label col-sm-4" for="exampleFormControlInput1">PropertyID</label>
	    							<input type="text" class="col-sm-6 " id="Int1" placeholder="10000" name="property_id" value="${p.property_id }">
                                    </div>
                            </div>
							
						</div>
						
						<div class="row">
                            <div class="col-md-8">
                                <div class="form-group row">
                                     <label class="col-form-label col-sm-4 " for="exampleFormControlInput1">Property price</label>
	    							 <input type="text" class="col-sm-6" id="Input1" placeholder="10000" name="pro_price" value="${p.pro_price }">
                                    </div>
                            </div>
                            
                              <div class="col-md-8">
                                <div class="form-group row">
                                     <label class="col-form-label col-sm-4 " for="exampleFormControlInput1">Percentage(%)</label>
	    								<input type="text" class="col-sm-6" id="Input2" placeholder="10" name="percentage" value="${p.percentage}">
                                    </div>
                            </div>
							
						</div>
						
						   <div class="row">
                            <div class="col-md-8">
                                <div class="form-group row">
                                     <label class="col-form-label col-sm-4 " for="exampleFormControlInput1">New Price</label>
	    							<input type="text" class="col-sm-6" id="Input3" placeholder="9000" name="new_price" value="${p.new_price }">
                                    </div>
                            </div>
							
						</div>
						
						   <div class="row">
                            <div class="col-md-8">
                                <div class="form-group row">
                                     <label class=" col-form-label  col-sm-4" for="exampleFormControlInput1">Status</label>
	    							 <input type="text" class="col-sm-6" id="Input3" placeholder="Active/Not Active" name="status" value="${p.status }">
                                    </div>
                            </div>
							
						</div>
						 
						
                       <div class="row">
                            <div class="col-md-8">
                                <div class="form-group row">
                                    <label class=" col-form-label col-sm-4" for="exampleFormControlInput1">Start Date</label>
	    							<input type="datetime-local" class="col-sm-6" id="Input3" placeholder="start date" name="start_date" value="${p.start_date }">
                                </div>   
                            </div>
						
                       </div>
                       
                       <div class="row">
                        <div class="col-md-8">
                                <div class="form-group row">
                                    <label class="col-form-label col-sm-4 " for="exampleFormControlInpu">End Date</label>
	    			               <input type="datetime-local" class="col-sm-6" id="Input3" placeholder="end date" name="end_date" value="${p.end_date }">
                                </div>
                            </div>
                            </div>
              
              <br>
					<div class="row">
                        <div class="col-md-6">
                    <input type="submit" class="btn btn-primary" value="Edit Promotion" />
                    	</div>
                            </div>
                 </form>
	 </div>
    </div>
</div>
</body>
</html>