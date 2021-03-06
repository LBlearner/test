<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//项目的发布路径，例如:  /rabc
	String path = request.getContextPath();
	/*
	全路径，形式如下: http://127.0.0.1:8001/rbac/
	request.getScheme()      ——> http 获取协议
	request.getServerName()  --> 127.0.0.1 获取服务名
	request.getServerPort()  --> 8001 获取端口号
	path                     --> /rbac 获取访问的路径 路
	*/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- 
	<base/>标签解决路径问题
	参考文章:http://www.cnblogs.com/muqianying/archive/2012/03/16/2400280.html
--%>
<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		 <title>Title</title>
</head>
<body>
${message }

<button type="button" id="close">关闭窗口</button>

<script type="text/javascript" src="resource/admin/js/jquery.js"></script>
<script src="resource/admin/plugin/layer/layer.js" type="text/javascript"></script>
<script type="text/javascript">
    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
    
    $("#close").on("click",function () {
        //parent.$('#rightFrame')[0].contentWindow.$("#add").text('我被改变了');
        parent.$('#rightFrame')[0].contentWindow.location.reload(true);

        parent.layer.close(index);
    })
</script>
</body>
</html>