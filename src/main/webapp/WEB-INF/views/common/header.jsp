<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div>
		<a href="/">MSC LOGO</a>
	</div>

	<div class="menubar">
		<ul>
			<li><a href="/">HOME</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul></li>
			<li><a href="/api">API</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul></li>
			<li><a href="/board">BOARD</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul></li>
			<li><a href="#">ABOUT US</a>
				<ul>
					<li><a href="/api/map">MAP</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
					<li><a href="#">BLANK</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="menuUtil"></div>
</header>

<section class="subMenu">
	<a href="/api"> 
		<img src="/img/icon/ic_manual.png"> 
		<span>ABOUT API</span>
	</a>
	<a href="/api/map">
		<img src="/img/icon/ic_map.png"> 
		<span>MAP</span>
	</a>
</section>

<script>
	document.addEventListener("DOMContentLoaded", () => {
		const pathName = getUrlLocation('pathname');
		const subMenu = document.querySelector('.subMenu');
		if(pathName === '/') {
			subMenu.style.display = 'none';
		} else {
			const groupName = pathName.split('/')[1];
			const pageName = pathName.split('/')[2];
			getMenuList(groupName, pageName);
		}

		
	});

	const getMenuList = async (groupName, pageName) => {
	    const menuList = await ajaxCall('/getSubMenu');

	    for(let i in menuList) {
			
		}
	    
		console.log(menuList);
	}
</script>