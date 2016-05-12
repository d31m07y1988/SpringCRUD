<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JavaRush internship - CRUD</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="<c:url value="/resources/css/mystyle.css" />" rel="stylesheet">
</head>
<body class="margin20">
<div class="container myrow-container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div align="center">
                <h3 class="panel-title"><b>Java Rush internship (student: Shakirov)</b> </h3></br>
                <div class="btn-group">
                    <input type="button" class="btn btn-default" onclick="location.href='/'" value="Homepage" />
                    <input type="button" class="btn btn-default" onclick="location.href='createUser'" value="Add new user" />
                </div>
            </div>

        </div>
        <div class="panel-body">
            <c:if test="${empty userList}">
                There are no Users
            </c:if>
            <c:if test="${not empty userList}">
            
            	<form action="searchUser">
            		<div class="row">
                        <div class="col-xs-6"><input type='text' class="form-control" name='searchName' id='searchName' title="enter username"/></div>
                        <div class="col-xs-4"><input class="btn btn-default" type='submit' value='Search'/></div>
                        <div class="col-xs-2 small text-right">Total count:<c:out value="${count}"/></div>
					</div>
            	</form>         	
            	            	
                <table class="table table-hover table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>isAdmin</th>
                        <th>Creating date</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="usr">
                        <tr>
                        	<th><c:out value="${usr.id}"/></th>
                        	<th><c:out value="${usr.name}"/></th>
                        	<th><c:out value="${usr.age}"/></th>
                        	<th><c:out value="${usr.isAdmin}"/></th>
                            <th><c:out value="${usr.createdDate}"/></th>
                        	<th>
                                <div class="btn-group">
                                <input type="button" class="btn btn-info" onclick="location.href='editUser?id=<c:out value='${usr.id}'/>'" value="Edit" />
                                <input type="button" class="btn btn-info" onclick="location.href='deleteUser?id=<c:out value='${usr.id}'/>'" value="Delete" />
                                </div>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div align="center">
                <tag:paginate max="10" offset="${offset}" searchName="${searchName}" count="${count}" uri="${uri}" next="&raquo;" previous="&laquo;" />
                </div>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <%-- <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
     --%>

</body>
</html>