<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <h3 class="panel-title">User information:</h3>
            </div>
            <div class="panel-body">
                <form:form id="userRegisterForm" cssClass="form-horizontal" modelAttribute="user" method="post" action="saveUser">
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="name" >Name</form:label> </div>
                        <div class="col-xs-6">
                            <form:hidden path="id" value="${userObject.id}"/>
                            <form:input cssClass="form-control" path="name" value="${userObject.name}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <form:label path="age" cssClass="control-label col-xs-3">Age</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="age" value="${userObject.age}"/>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="isAdmin">Privileges</form:label></div>
                        <div class="col-xs-6"><div class="checkbox"><label>
                            <c:choose>
                                <c:when test="${userObject.isAdmin==true}">
                                    <form:checkbox path="isAdmin" value="${userObject.isAdmin}" checked="checked"></form:checkbox>
                                </c:when>
                                <c:otherwise>
                                    <form:checkbox path="isAdmin" value="${userObject.isAdmin}"></form:checkbox>
                                </c:otherwise>
                            </c:choose>
                            Has it admin privileges?
                        </label></div></div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-4">
                            </div>
                            <div class="col-xs-4">
                                <input type="submit" id="saveUser" class="btn btn-primary" value="Save" onclick="return submitUserForm();"/>
                                <input type="button" class="btn btn-primary" onclick="location.href='getAllUsers'" value="Return to homepage" >
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>
    
                </form:form>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="<c:url value="/resources/js/userFormCheck.js"/>"></script>

</body>
</html>