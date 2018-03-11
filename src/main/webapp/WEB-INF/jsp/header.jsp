<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid col-xs-12"
		style="background-color: #6BC27B;">
		<ul class="nav navbar-nav navbar-left col-xs-10">
			<li class="col-xs-3"><a href="/" style="padding: 0px;"><img
					class="img-responsive" style="width: 125px; height: 50px;"
					src="/resources/images/logo.jpg" alt="Logo Image"></a></li>
			<li class="col-xs-7" style="white-space: nowrap; overflow: hidden;"><a
				href="/"><b
					style="font-family: arial; font-size: 20px; color: white;">The
						Museum of Natural Drug Resources of Nepal</b></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right col-xs-2">
			<c:choose>
				<c:when test="${principal == null}">
					<li class="pull-right"><a href="/login"
						style="font-family: arial; font-size: 15px; color: white; white-space: nowrap; overflow: hidden; text-align: right;'"><span
							class="glyphicon glyphicon-log-in"></span> <span>Login</span></a></li>
				</c:when>
				<c:otherwise>
				<li class="pull-right"><a href="/logout"
						style="font-family: arial; font-size: 15px; color: white; white-space: nowrap; overflow: hidden; text-align: right;'"><span
							class="glyphicon glyphicon-log-in"></span> <span>Sign Out</span></a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</nav>


