<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>Home</title>
		<%@ include file="/WEB-INF/views/common/head.jsp" %>
	</head>
	
	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="container">
			<%@ include file="/WEB-INF/views/common/aside.jsp" %>
			<div id="map" class="map"></div>
		</div>
	</body>
	
	<script>
		/* jshint esversion : 6 */
		document.addEventListener("DOMContentLoaded", () => {
			setAsdieMenu();
			getKakaoMap();
		});
	
		const setAsdieMenu = () => {
			
		} 
		
		const getKakaoMap = () => {
			let lat = 33.450701, 
				lon = 126.570667;
			const container = document.getElementById('map');
			const options = {
				center: new kakao.maps.LatLng(lat, lon),
				level: 3
			};
	
			const map = new kakao.maps.Map(container, options);
		}
		
		
	</script>
</html>
