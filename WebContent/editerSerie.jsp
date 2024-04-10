<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
<div class="card">
<div class="card-header">
Modification des Series
</div>
<div class="card-body">
<form action="update.do" method="post">
<div hidden class="form-group">
<label class="control-label">ID Serie :</label>
<input type="text" name="id" class="form-control"
value="${serie.idS}"/>
</div>
<div class="form-group">
<label class="control-label">Nom Serie :</label>
<input type="text" name="nom" class="form-control"
value="${serie.nomS}"/>
</div>
<div class="form-group">
<label class="control-label">Nombre de saison</label>
<input type="text" name="nbS" class="form-control" value="${serie.nbS}"/>
</div>
<div class="form-group">
	<select name="genre" class="form-control">
		<option value="${serie.genre.idG}" selected>${serie.genre.nomG}</option>
			<c:forEach items="${GModel.genres}" var="g">
				<c:if test="${g.idG != serie.genre.idG}">
					<option value="${g.idG}">${g.nomG}</option>
				</c:if>
			</c:forEach>
	</select>
</div>
<div>
<button type="submit" class="btn btn-primary">Modifier</button>
</div>
</form>
</div>
</div>
</div>
</body>
</html>