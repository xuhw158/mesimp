<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="content_left">
	<div class="content_left_head">
		<label>产业调查</label>
	</div>
	<div class="content_left_menus">
		<ul>
			<li>
				<a href="${basePath}/sunrvey/industry/compNum" <c:if test="${menu == 'compNum' }">class="active"</c:if>>企业数量</a>
			</li>
			<li>
				<a href="${basePath}/sunrvey/industry/num" <c:if test="${menu == 'num' }">class="active"</c:if>>产业数量</a>
			</li>
		</ul>
	</div>
	<div class="content_left_bottom"></div>
</div>