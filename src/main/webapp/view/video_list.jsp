<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align: center">
		<button onclick="playPause()">播放/暂停</button>
		<button onclick="makeBig()">放大</button>
		<button onclick="makeSmall()">缩小</button>
		<button onclick="makeNormal()">普通</button>
		<br>
		<video id="video1" width="420" controls="controls" >
			<source src="../common/video/movie.mp4" type="video/mp4">
			<source src="../common/video/movie.ogg" type="video/ogg">
			您的浏览器不支持 HTML5 video 标签。
		</video>
	</div>
</body>
<script type="text/javascript">
	var myVideo = document.getElementById("video1");
	function playPause() {
		if (myVideo.paused)
			myVideo.play();
		else
			myVideo.pause();
	}

	function makeBig() {
		myVideo.width = 560;
	}

	function makeSmall() {
		myVideo.width = 320;
	}

	function makeNormal() {
		myVideo.width = 420;
	}
</script>
</html>