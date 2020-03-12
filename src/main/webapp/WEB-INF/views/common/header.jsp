<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	
<header>

	<div>
		<a href="/">MSC LOGO</a>
	</div>

	<div class="menubar">
		<ul>
			<li><a href="/api">API</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul>
			</li>
			<li><a href="/board">BOARD</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul>
			</li>
			<li><a href="#">ABOUT US</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<div class="menuUtil">
		<a href="/login">
			<img src="/img/icon/ic_user_white.png">
		</a>
		<sec:authorize access="isAuthenticated()">
		<form:form action="/logout" method="POST">
			<input type="image" src="/img/icon/ic_door_white.png">
		</form:form>
		</sec:authorize>
	</div>
</header>

<section class="subMenu">
	<div id="subMenu"></div>
</section>

<script>
	window.onload = () => {
		const pathName = getUrlLocation('pathname');
		const subMenu = document.querySelector('.subMenu');
		if(pathName === '/') {
			subMenu.style.display = 'none';
		} else {
			const groupName = pathName.split('/')[1];
			const pageName = pathName.split('/')[2];
			getMenuList(groupName, pageName);
		}
	}

	const getMenuList = async (groupName, pageName) => {
		const data = {groupName};
	    const menuList = await ajaxCall('/getSubMenu', data);
	    
	    for(let i in menuList) {
			const menu = menuList[i];
			const subMenu = document.getElementById('subMenu');
			const anchor = document.createElement('a');
			anchor.href = menu['url'];
			const img = document.createElement('img');
			img.src = menu['icon'];
			const span = document.createElement('span');
			span.innerText = menu['name'].toUpperCase();
			
			if(!pageName && i === '0') {
				console.log("ho");
				span.style.color = '#000';
			} else if(pageName === menu['name']) {
				console.log("hi");
				span.style.color = '#000';
			}
			
			anchor.appendChild(img);
			anchor.appendChild(span);
			subMenu.appendChild(anchor);
		}
	}
</script>