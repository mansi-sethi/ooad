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
<script type="text/javascript">
	$(document).ready(function() {
		$('#sport').multiselect({
			buttonWidth : '450px',
			dropRight : true
		});
	});

	$(document)
			.ready(
					function() {
						$('#btnAdd')
								.click(
										function() {

											$("#tblData tbody")
													.append(
															"<tr>"
																	+ "<td><input type='text' placeholder='Enter Column Name' class='form-control'></td>"
																	+ "<td><input type='text' placeholder='Enter Data Type' class='form-control'></td>"
																	+ "</tr>)");
										});

					});

	function get_prog() {
		var source;
		source = $("#prog : selected").text();
		alert(source);
		return source;

	}

	function finishTable() {
		//if (debugScript)
			 window.alert("Beginning of function finishTable");
			try {
				var tableElem = window.document.getElementById("tblData");
				var tableBody = tableElem.getElementsByTagName("tbody").item(0);
				var i;
				var final_att = '';
				var final_data = '';
				var howManyRows = tableBody.rows.length;
				// window.alert("text is " + howManyRows);
				for (i = 0; i < (howManyRows); i++) // skip first and last row (hence i=1, and howManyRows-1)
				{
					var thisTrElem = tableBody.rows[i];

					var thisTdElem = thisTrElem.cells[0];
					var thisTextNode = thisTdElem.childNodes[0].value;
					if (final_att == '')
						final_att = thisTextNode;
					else
						final_att = final_att + ',' + thisTextNode;

					var thisTdElem1 = thisTrElem.cells[1];
					var thisTextNode1 = thisTdElem1.childNodes[0].value;
					if (final_data == '')
						final_data = thisTextNode1;
					else
						final_data = final_data + ',' + thisTextNode1;
					}
				//window.alert("subject is " + final_sub + "fac is" + final_fac + "cre is" + final_credit );
				window.alert(final_att+"   "+final_data);
				document.getElementById("hdField_att").value = final_att;
				document.getElementById("hdField_data").value = final_data;
			} catch (ex) {
				window.alert("Error in finishTable()\n" + ex);
			}
		return;
	}
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
							<h4 class="modal-title">Please fill Information</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="newtable">
								<fieldset>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="textinput">Stream
											Name</label>
										<div class="col-sm-8">
											<input type="text" placeholder="Enter Stream Name" name="streamname"
												class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="textinput">Source
											IP Address</label>
										<div class="col-sm-8">
											<input type="text" placeholder="Source IP Address" name="sip"
												class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-10 control-label" for="textinput"
											style="color:"red"" >Please Enter DataItem In Order
											Corresponding To Stream Data</label> <br> <br>
										<table class="table table-bordered" id="tblData">
											<thead>
												<tr>
													<th style="width: 250px;">Attribute Name</th>
													<th style="width: 250px;">DataType</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="text" value="timestamp"
														class="form-control" disabled="disabled"></td>
													<td><input type="text" value="DateTime"
														class="form-control" disabled="disabled"></td>
												</tr>
												<tr>
													<td><input type="text" placeholder="Enter Column Name"
														class="form-control"></td>
													<td><input type="text" placeholder="Enter Data Type"
														class="form-control"></td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="form-group">
										<div class="col-lg-1">
											<input id="btnAdd" onclick="Add()" value="ADD ROW"
												class="btn btn-default" />
										</div>
									</div>

									<div class="modal-footer">
										<input type="submit" class="btn btn-primary" onclick="finishTable();" />
									</div>
									<input type="hidden" id="hdField_att" name="stream_att" />
									<input type="hidden" id="hdField_data" name="stream_data" /> 							</fieldset>
							</form>

						</div>
					</div>

				</div>
			</div>

		</div>
</body>
</html>