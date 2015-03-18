<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrapswatch.css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css"
	type="text/css" />
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#sport').multiselect({
			buttonWidth : '450px',
			dropRight : true
		});
	});
</script>
<style type="text/css">
.modalBlock {
	display: block;
	position: relative;
}
</style>
</head>
<body>

	<div id="wrapper">


		<%@ include file="Sidebar.jsp"%>

		<div class="row">
			<div class="modal modalBlock">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Details for the current Stream:</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="#">
								<fieldset>
									<!-- Text input-->
									<table class="table table-bordered" id="tblData">
									<tbody>
									<tr>
									<td><label class="col-sm-4 control-label" for="textinput">Number_Of_Streams:</label></td>
									<td><label class="col-sm-2 control-label" for="textinput">1</label></td>
									</tr>
									<tr>
									<td><label class="col-sm-4 control-label" for="textinput">Method_Of_Joining:</label></td>
									<td><label class="col-sm-2 control-label" for="textinput">Time_Stamp</label></td>
									</tr>
									<tr>
									<td><label class="col-sm-4 control-label" for="textinput">Table_Name:</label></td>
									<td><label class="col-sm-2 control-label" for="textinput">Temperature_Humidity</label></td>
									</tr>
									<tr>
									<td><label class="col-sm-4 control-label" for="textinput">Source_Path:</label></td>
									<td><label class="col-sm-2 control-label" for="textinput" align="center">D://temp</label></td>
									</tr>
									<tr>
									<td><label class="col-sm-4 control-label" for="textinput">Destination_Path:</label></td>
									<td><label class="col-sm-2 control-label" for="textinput" align="center">E://temp</label></td>
									</tr>
									<tr>
									<td colspan="2">
									<table align="center" border="1">
									<tr><td><h5><b>Attribute_Name</h5>
									</td>
									<td><h5><b>Data_Type</h5></td>
									</tr>
									<tr><td>Timestamp
									</td>
									<td>DateTime</td>
									</tr>
									<tr><td>Temperature
									</td>
									<td>Float</td>
									</tr>
									<tr><td>Humidity
									</td>
									<td>Float</td>
									</tr>
									</table>
									
								</td>
								</tr>
								
									</tbody>
									</table>
								</fieldset>
							</form>
						</div>
						
					</div>
				</div>
			
			</div>
		</div>
	</div>



</body>
</html>