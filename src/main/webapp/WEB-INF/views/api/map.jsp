<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>Home</title>
		<%@ include file="/WEB-INF/views/common/head.jsp" %>
	</head>
	
	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="container">
			<div class="apiSearch">
				<input id="address" type="text" value="경인로">
				<input id="btnFind" type="button" value="주소찾기">
				<div id="list" class="list"></div>
			</div>
			<div id="map" class="map"></div>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
	
	<script>
		/* jshint esversion : 6 */
		document.addEventListener("DOMContentLoaded", () => {
			setAsdieMenu();
			getKakaoMap();
			findAddress();
		});
	
		const setAsdieMenu = () => {
			
		} 
		
		const getKakaoMap = (lat, lon) => {
			if(!lat && !lon) {
				lat = 33.450701;
				lon = 126.570667;
			}
			const container = document.getElementById('map');
			const options = {
				center: new kakao.maps.LatLng(lat, lon),
				level: 3
			};
	
			const map = new kakao.maps.Map(container, options);
		}
		
		const findAddress = () => {
			const address = document.getElementById("address");
			const btnFind = document.getElementById("btnFind");
			
			btnFind.addEventListener("click", () => {
				const list = document.getElementById("list");
				while(list.hasChildNodes()) {
					list.removeChild(list.firstChild);
				}
				
				$.ajax({
		            type: "GET",
		            url: "https://dapi.kakao.com/v2/local/search/address.json?query=" + address.value,
		            dataType: 'json',
		            beforeSend: function (xhr) {
		                xhr.setRequestHeader("Authorization", "KakaoAK " + kakaoRestKey);
		            },
		            success: function (data) {
		                const documents = data.documents;
		                if(documents.length > 0) {
		                	const addUl = document.createElement('ul');
		                	addUl.setAttribute("class", "address")
		                	for(let i in documents) {
			                	const addLi = document.createElement('li');
			                	addLi.appendChild(document.createTextNode(documents[i].address_name));
			                	addLi.setAttribute("id", i)
			                	addUl.appendChild(addLi);
			                	addLi.addEventListener("click", () => {
			                		const x = documents[i].x;
			                		const y = documents[i].y;
			                		getKakaoMap(y, x);
			                	});
			                }
		                	list.appendChild(addUl);
		                }
		            },
		            error: function (jqXHR, textStatus, errorThrown) {
		                console.log(jqXHR);
		                console.log(textStatus);
		                console.log(errorThrown);
		            }
		        });
			});
		}
	</script>
</html>
