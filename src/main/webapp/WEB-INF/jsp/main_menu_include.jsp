<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:fmt="http://java.sun.com/jsp/jstl/fmt" version="2.1">
	<jsp:directive.page contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="false"
		language="java" isThreadSafe="false" isErrorPage="false" />

	<fmt:setBundle basename="LabelsBundle" />

	<div class="nokmenu">
		<h2 class="subtitel">Kaartkeuze</h2>

		<ul>
			<li><c:url value="/index.jsp" var="adreslink">
					<c:param name="gevonden" value="${adres}" />
					<c:param name="xcoord" value="${adres.xCoord}" />
					<c:param name="ycoord" value="${adres.yCoord}" />
					<c:param name="straal" value="${adres.radius}" />
					<c:param name="coreonly" value="${param.coreonly}" />
					<c:param name="mapid" value="nok2010" />
				</c:url> 
				<a href="${fn:escapeXml(adreslink)}" name="nok2010">Toon NOK 2010</a>
			</li>
			<li><c:url value="/index.jsp" var="adreslink">
					<c:param name="gevonden" value="${adres}" />
					<c:param name="xcoord" value="${adres.xCoord}" />
					<c:param name="ycoord" value="${adres.yCoord}" />
					<c:param name="straal" value="${adres.radius}" />
					<c:param name="coreonly" value="${param.coreonly}" />
					<c:param name="mapid" value="nok2011" />
				</c:url>
				<a href="${fn:escapeXml(adreslink)}" name="nok2011">Toon NOK 2011</a>
			</li>
		</ul>

	</div>

</jsp:root>