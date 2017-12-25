<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="myjs.js"></script>
<script type="text/javascript">
	/*  获取页面上的元素 */
	window.onload = function() {
		var nameElement = document.getElementsByName("username")[0];
		//创建失去焦点事件
		nameElement.onblur = function() {
			//调用封装好的方法,获取对象
			var xmlhttp = getXMLHttpRequest();
			//建立个连接,其实open是三个参数,第三个是否请求异步,默认是请求异步就不写了
			xmlhttp.open("get",
					"${pageContext.request.contextPath}/CkNameServlet?username="
							+ nameElement.value);
			//发送请求
			xmlhttp.send();
			//处理请求信息,当客户端是4且响应状态码为200时,证明正常
			//onreadystatechange这个方法是处理请求信息的
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {
					if (xmlhttp.status == 200) {
						//都正常,然后获取得到页面上的需要提示的数据
						var msg = document.getElementById("msg");
						//获得响应的文本内容,  获得响应的xml文件是responseXML
						if (xmlhttp.responseText == "true") {
							//使用innerHTML    
							msg.innerHTML = "用户名不可用";
						} else {
							msg.innerHTML = "用户名可以用";
						}
					}
				}
			}
		}
	}
</script>

<!-- 		创建ajax的对象,来实现异步请求
	window.onload=function(){
		alert("111");
		var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
	}else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	alert(xmlhttp);
	} 
 -->

</head>
<body>




	用户名:
	<input type="text" name="username" />
	<span id="msg">请填写用户名</span>
	<br />密码:
	<input type="password" name="password" />




</body>




</html>