<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/info/layout/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/graph.css?ver=10">
<br><br><br><br><br>


<div class="index-page">
	<div class="home_contents">
		<div class="covidDecide">
			<div class="vGraph">
				<h5> ${resultList[5].startDt } 신규 확진자 : <font style="color: red;">${nowDayIncDec }</font> </h5> <br>
			 	<ul>
			 	<c:forEach items="${resultList }" var="list">
			 		 <li><span class="gTerm">${list.startDt }</span><span class="gBar" style="height:${list.weekPercent}%"><span>${list.incDec }</span></span></li>
			 	</c:forEach>
			 	</ul>
			</div>
		</div>
		
	</div>
	    <div class="home_image">
	        <img src="${pageContext.request.contextPath }/resources/img/covid19_1.jpg" id="mainImage" class="covid_gif" alt="slide" onclick="moving();"/>
	        <script>
				var myImage = document.getElementById("mainImage");
				var imageArray = [ "${pageContext.request.contextPath }/resources/img/covid19_1.jpg",
						"${pageContext.request.contextPath }/resources/img/covid19_2.jpg", "${pageContext.request.contextPath }/resources/img/covid19_3.jpg" ];
				var imageIndex = 0;
			
				function changeImage() {
					myImage.setAttribute("src", imageArray[imageIndex]);
					imageIndex++;
					if (imageIndex >= imageArray.length) {
						imageIndex = 0;
					}

				}
				setInterval(changeImage, 1500);
				
				function moving(){
					if(imageArray[imageIndex] == "${pageContext.request.contextPath }/resources/img/covid19_3.jpg"){
						window.location.href="/info/korea_info";
					}
				}
				
			</script>
	    </div>
	    <div class="news_title"><br><strong>▷코로나뉴스</strong></div>
	    <div class="news_contents">
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718548&cg_code=&act=view&nPage=1">- 코로나19 예방접종 및 국내 발생 현황(2.4.)</a> <br><br>
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718527&cg_code=&act=view&nPage=1">- 연휴 후 안전한 일상을 위해 국민행동수칙 준수 당부(2.3., 정례브리핑)</a> <br><br>
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718523&cg_code=&act=view&nPage=1">- 코로나19 예방접종 및 국내 발생 현황(2.3., 0시 기준)</a> <br><br>
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718514&cg_code=&act=view&nPage=2">- 2월 3일 부터 PCR검사는 고위험군 등 우선대상자로 실시(1.31., 정례브리핑)</a> <br><br>
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718449&cg_code=&act=view&nPage=1">- 코로나19 사망자 장례 후 화장도 가능, 애도와 추모 기회 확대</a> <br><br>
	    	<a href="https://www.kdca.go.kr/board/board.es?mid=a20501010000&bid=0015&list_no=718447&cg_code=&act=view&nPage=1">- ‘코로나19 감염관리수당’ 지급 시행</a>
	    </div> 
	</div>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>