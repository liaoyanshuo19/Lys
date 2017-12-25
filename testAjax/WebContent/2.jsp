<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	change1 = function() {
		aa.innerHTML = "<input type='button' value='登陆' />";
	}
	change2 = function() {
		aa.innerHTML = "二弟";
	}
</script>


<script type="text/javascript">
	/* 声明一个变量 */
	var city;
	/* 声明一个变量并赋值 */
	var city1 = 100;
</script>
</head>
<body>

	<span id="aa">网上</span>
	<br />
	<a href="#" onclick="change1()">地上</a>
	<a href="#" onclick="change2()">天上</a>

	<br /><br /><br /><br /><br />
	
	<!-- 输入的是city1  value值是100  一开始写的是汉字和英文,他们都不是对象,所以找不到 -->
	<textarea name="text"  onchange=alert(city1) ></textarea>
	


</body>
</html>