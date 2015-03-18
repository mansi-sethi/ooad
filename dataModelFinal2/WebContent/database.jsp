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
							<h4 class="modal-title">Please fill up the form</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="addTable.jsp">
								<fieldset>
									<div class="form-group">
										<label class="col-sm-4 control-label" for="textinput">Database Name</label>
										<div class="col-sm-8">
											<input type="text" placeholder="Database Name"
												class="form-control">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-sm-4 control-label" for="textinput">Number Of Streams</label>
										<div class="col-sm-8">
											<input type="text" placeholder="Number of streams"
												class="form-control">
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-sm-4 control-label" for="textinput">Method Of Joining</label>
										<div class="col-sm-8">
											<label class="col-sm-8 control-label" for="textinput">Fixed Number Of Data Items</label>
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-sm-4 control-label" for="textinput">Number Of data Items</label>
										<div class="col-sm-8">
											<input type="text" placeholder="Number Of Data Items" class="form-control">
										</div>
									</div>
								</fieldset>
								<div class="modal-footer">
							<input type="reset" class="btn btn-default" /> 
							<input type="submit" class="btn btn-primary" />
						</div>
							</form>
						</div>
						
					</div>
				</div>
			
			</div>
		</div>
	</div>



</body>
</html>