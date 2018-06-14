<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<style type="text/css">
	tbody>tr>td>a{
		display: block;
	}
</style>

 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
	<ul class="nav nav-pills">
	  <li role="presentation"><a href="index.jsp">Home</a></li>
	  <li role="presentation" class="active"><a href="list.do">List</a></li>
	  <li role="presentation"><a href="#">Login</a></li>
	</ul>
	<div class="jumbotron">
	  <h1>Hello, world!</h1>
	  <p>...</p>
	  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- content start -->
				<ol class="breadcrumb">
				  <li><a href="index.jsp">Home</a></li>
				  <li class="active">List</li>
				</ol>
				<h1>List page</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>���</th>
							<th>�̸�</th>
							<th>��¥</th>
							<th>�ݾ�</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${alist }" var="bean">
						<tr>
							<td><a href="detail.do?idx=${bean.sabun }">${bean.sabun }</a></td>
							<td><a href="detail.do?idx=${bean.sabun }">${bean.name }</a></td>
							<td><a href="detail.do?idx=${bean.sabun }">${bean.nalja }</a></td>
							<td><a href="detail.do?idx=${bean.sabun }">${bean.pay }</a></td>
						</tr>
					</c:forEach>					
					</tbody>
				</table>
				<a class="btn btn-primary" href="add.do" role="button">�Է�</a>
				<!-- content end -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<p class="text-center text-uppercase">Copyright &copy; ��Ʈķ�� All rights reserved.</p>
			</div>
		</div>
	</div>
</body>
</html>