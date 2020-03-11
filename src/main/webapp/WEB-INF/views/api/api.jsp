<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>Home</title>
		<%@ include file="/WEB-INF/views/common/head.jsp" %>
	</head>
	
	<body>
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<div class="container">
			<p class="api">
				<span>
					Application Programming Interface.
				</span>
				<br>
				<span>
					응용프로그램 프로그래밍 인터페이스.
				</span>
				<br><br>
				<span>
					프로그래밍에서, 프로그램을 작성하기 위한 일련의 부 프로그램, 
					프로토콜 등을 정의하여 상호 작용을 하기 위한 인터페이스 사양을 말한다. 
					API는 소프트웨어 컴포넌트(Function, Method, Operation으로 불리는 그것이다)의 
					기능, 입력, 출력, 그리고 이에 사용되는 자료형으로 표현된다. 
					API 자체는 어디까지나 사양(Specification)만을 정의하기 때문에 
					구현(Implementation)과는 독립적이다. 
					잘 설계된 API는 프로그램 개발을 보다 쉽게 해 준다. 
					API는 다양한 형태로 존재하며, 유닉스의 POSIX 표준, 윈도우의 MFC나 Win32, 
					C++의 표준 템플릿 라이브러리 (STL), Java SE API 등이 이에 해당한다.
				</span>
				<br><br>
				<span>
					예를 들어 그래픽 카드나 디스크 드라이브 등의 하드웨어 또는 데이터베이스를 조작할 때, 
					API는 작업을 편리하게 해준다. 
					대개 실제로는 밑바닥에서 매우 저수준으로 이러한 작업이 수행되는데, 
					API는 이러한 작업들에 대한 기능을 대상이 되는 언어에 맞게 추상화하고 프로그래머가 
					사용하기 편리하게 설계한 인터페이스 사양이다.
				</span>
				<br><br>
				<span>
					프로그램에 플러그인 형태로 설계된 API가 적용되면, 이미 작성되어 컴파일되고 
					완성된 프로그램의 수정 없이 프로그램의 기능을 추가하는 것이 가능하다. 
					인터넷 익스플로러, 파이어폭스, 크롬과 같은 웹 브라우저 프로그램의 플러그인, 
					애드온과 같은 것이 바로 이러한 형식의 플러그인 API를 사용해 구현된 것이다.
				</span>
				<br><br>
				<span>
					API가 실제 기능 구현체인 라이브러리와 함께 제공되는 경우도 있으며, 
					이 경우를 SDK(Software Development Kit)라고 한다. 
					SDK는 일반적으로 API, 라이브러리와 함께 프로그램을 개발하는데 필요한 여러 보조 프로그램을 포함한다.
				</span>
				<br><br>
				<span>
					원격의 컴퓨터에 기능을 수행할 수 있도록 해주는 SOAP 또는 RESTful 서비스에서 API는 
					그 자체로 원격 기능에 대한 사양(Specification)이 된다.
				</span>
				<br><br>
				<span>
					예를 들어 명령어 창[1]에 "Hello, World!" 라는 문자열을 출력하는 프로그램을 C언어로 작성한다고 하자. 
					당연히 텍스트로 출력하는 printf API를 사용하여 printf("Hello, World!\n"); 라고 작성하게 될 것이며, 
					이는 윈도우, 리눅스, 유닉스, OS X 모두에서 동일하게 동작하도록 C언어 API가 보장해준다. 
					프로그래머는 보다 저수준에서 어떠한 일이 일어나는지 알지 못해도, 
					이미 정의된 printf를 사용하기만 하면 편리하게 텍스트를 출력할 수 있다. 
					즉 잘 설계된 인터페이스를 사용하면 환경(플랫폼)이 달라져도 동일한 코드가 동일한 결과를 수행하며, 
					보다 편리하게 프로그래밍을 할 수 있다.
				</span>
				<br><br>
				<span>
					한마디로, API는 소스 코드 수준에서 정의되는 인터페이스다. 
					이와는 달리 기계어 이진 바이너리 수준에서 정의되는 이러한 인터페이스는 
					ABI(Application Binary Interface)라고 한다.
				</span>
				<br><br>
				<span>
					라이브러리는 실제로 동작할 수 있는 단편화된 프로그램이라는 점에서 API와 다르다. 
					라이브러리 자체는 API가 없이 존재할 수 있고, 이미 구현되어 기계어로 컴파일된 프로그램에 의해 사용될 수 있다. 
					이미 구현된 라이브러리와 프로그램 사이의 인터페이스 사양 또한 API이다. 
					API 없이 프로그램을 실행하는데 필요한 라이브러리만 배포되는 대표적인 경우로 
					"Visual C++ Runtime Library", "DirectX Runtime"이 있다.
				</span>
				<br><br>
				<span>
					유닉스는 애초에 C언어로 개발되었기 때문에, 당연히 C언어를 위한 API가 기본으로 제공된다. 
					MS-DOS는 그렇지 않았기 때문에 특정 언어를 위한 API 같은 것은 존재하지 않았고, 
					기계어(또는 어셈블리어) 수준에서 소프트웨어 인터럽트를 제공했다. 
					MS-DOS의 이러한 방식을 지금의 관점에서 보면, ABI를 정의한 것으로 볼 수 있다.
				</span>
				<br><br>
				<span>
					프레임워크는 명확하게 정의된 라이브러리가 존재한다는 점에서 API와 비슷하지만, 
					일반적인 API는 전체 제어 구조를 호출하는 쪽에서 원하는대로 진행할 수 있지만, 
					프레임워크에서는 그럴 수 없는 경우가 많다는 점이 다르다.
				</span>
			</p>
		</div>
	</body>

	<script>
		document.addEventListener("DOMContentLoaded", () => {
		    
		});
	</script>
</html>
