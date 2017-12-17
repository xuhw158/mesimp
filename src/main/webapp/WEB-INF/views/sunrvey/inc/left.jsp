<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="content_left">
	<div class="content_left_head">
		<label>单位清查</label>
	</div>
	<div class="content_left_menus">
		<ul>
			<li>
				<a href="${basePath}/sunrvey/company/num" <c:if test="${menu == 'num' }">class="active"</c:if> >单位清查数量</a>
			</li>
			<li>
				<a href="${basePath}/sunrvey/company/certificate" <c:if test="${menu == 'certificate' }">class="active"</c:if>>海域证书数量</a>
			</li>
			<li>
				<a href="${basePath}/sunrvey/company/coastline" <c:if test="${menu == 'coastline' }">class="active"</c:if>>用海岸线数量</a>
			</li>
			<li>
				<a href="${basePath}/sunrvey/company/shoreline" <c:if test="${menu == 'shoreline' }">class="active"</c:if>>用海岸线长度</a>
			</li>
			<li style="border:0;">
				<a href="${basePath}/sunrvey/company/belisted" <c:if test="${menu == 'belisted' }">class="active"</c:if>>上市企业数量</a>
			</li>
		</ul>
	</div>
	<div class="content_left_bottom"></div>
</div>