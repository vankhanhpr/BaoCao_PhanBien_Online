<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
<script
	src="<%=request.getContextPath()%>/public/js/angularjs/angular.min.js"></script>
</head>

<body>
	<div ng-app="myApp" ng-controller="customersCtrl">
		<ul>
				<p>{{myData.MaDeTai}}</p>
				
				<ul ng-repeat="y in myData.HoiDong">
					<p>{{y.HoTen}}</p>
				</ul>
			</li>
		</ul>
	</div>
</body>
<script type="text/javascript">

	var app = angular.module('myApp', []);
	app.controller('customersCtrl', function($scope, $http) {
		$http.get("http://localhost:9080/BaoCao_PhanBien_Online/show-chi-tiet?id=1").then(function(response) {
 			$scope.myData = response.data;
 			console.log(response);
 		});
	});
</script>

</html>