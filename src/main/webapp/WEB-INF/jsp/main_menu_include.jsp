<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:fmt="http://java.sun.com/jsp/jstl/fmt" version="2.1">
	<jsp:directive.page contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="false"
		language="java" isThreadSafe="false" isErrorPage="false"
		import="nl.mineleni.cbsviewer.util.AvailableLayersBean" />

	<fmt:setBundle basename="LabelsBundle" />

	<jsp:scriptlet>AvailableLayersBean layers = new AvailableLayersBean();
			request.setAttribute("layers", layers.getLayers());</jsp:scriptlet>

	<div class="nokmenu">
		<h2 class="subtitel">Kaartkeuze</h2>

		<ul>
			<c:forEach items="${layers}" var="layer">
				<li><c:url value="/index.jsp" var="adreslink">
						<c:param name="gevonden" value="${adres}" />
						<c:param name="xcoord" value="${adres.xCoord}" />
						<c:param name="ycoord" value="${adres.yCoord}" />
						<c:param name="straal" value="${adres.radius}" />
						<c:param name="coreonly" value="${param.coreonly}" />
						<c:param name="mapid" value="${layer.id}" />
					</c:url> <a href="${fn:escapeXml(adreslink)}" name="${layer.id}">Toon
						${layer.name}</a> <c:if test="${not empty layer.metadata}">
						(<a href="${layer.metadata}" name="Metadata voor ${layer.name}"
							class="metadata">metadata</a>)
					</c:if></li>
			</c:forEach>
		</ul>

	</div>

</jsp:root>