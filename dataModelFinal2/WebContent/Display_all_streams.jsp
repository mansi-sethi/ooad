<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	
	function stream() {
		$('#sub_id').submit();
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
							<h4 class="modal-title">Select Stream</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" id="sub_id" method="post" enctype="multipart/form-data" action="getAllStreamsData">
								<fieldset>
									<div class="form-group">

										<label class="col-sm-2 control-label" for="select">Select Stream:</label>
										 <div class="col-lg-8">
											<select class="form-control" name="streams" onchange="stream();">
												<option default="Choose Option">Choose Option</option>
												<s:iterator value="streamList" status="status">
													<option value="<s:property value="streamName"/>">
														<s:property value="streamName"/>
													</option>
												</s:iterator>
											</select>
										</div>
									</div>
									<div class="form-group">
									<table class="table table-hover" >
										<% int i=0; %>
											<tr>
											<th>Serial Number</th>
											<th>Attribute Name</th>
											<th>DataType</th>
											 </tr>
											<s:iterator value="streamListData" status="status">
												<tr><%i=i+1;%>
													<td><%=i%></td>
													<td><s:property value="Attribute" /></td>
													<td><s:property value="Datatype" /></td>
												 </tr>
											</s:iterator>
										</table>

									</div>
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