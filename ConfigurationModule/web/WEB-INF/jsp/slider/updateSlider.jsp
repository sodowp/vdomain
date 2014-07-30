<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/7/23 0023
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/css/bootstrap.min.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/jQuery.js"></script>
    <style>
        .mainBody
        {
            font: 100% '微软雅黑';
            margin: 20px auto;
        }
        .textComment
        {
            width:340px;
            overflow:auto;
            word-break:break-all;
        }
        .btn
        {
            border: none;
            background: #34495e;
            color: white;
            font-size: 16.5px;
            text-decoration: none;
            text-shadow: none;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            -webkit-transition: 0.25s;
            -moz-transition: 0.25s;
            -o-transition: 0.25s;
            transition: 0.25s;
            -webkit-backface-visibility: hidden;
        }
        .titlelabel
        {
            font-weight:bold;
            font-size: 18px;
            color: rgba(0, 0, 0, 0.6);
        }
    </style>
    <title>修改轮播图</title>
</head>

<body>
<form id="sliderForm"  action="${pageContext.request.contextPath}/slider/updateSliderDo.cfg" method="post" >
<p><label class="titlelabel">修改轮播图</label></p>
    <div style="margin:20px auto;margin-left:30px;">
        <p><label>轮播图类型 ID:${param.sliderId}</label></p>
        <input type="hidden" id="id" name="id" value="${param.sliderId}"/>
        <p>
        <div style="font-size:12px;">
        <input name="sliderType" type="radio" value="头部轮播图" checked="true"/>头部轮播图 &nbsp;&nbsp;
        <input name="sliderType" type="radio" value="案例轮播图"/>案例轮播图 &nbsp;&nbsp;
        <input name="sliderType" type="radio" value="合作伙伴轮播图"/>合作伙伴轮播 &nbsp;&nbsp;
    </div>
    </p>

    <p>
        <label>轮播图指向链接</label>
        <input id="targetUrl" name="targetUrl" type="text" style="width:250px;" value="${tSlider.targetUrl}">
    </p>
    <p>
        <label>选择图片</label>
        <input id="imgUrl" name="imgUrl" type="hidden" value="${tSlider.imgUrl}">
        <img style="width:350px;height:200px;"/>
    </p>
    <p><button style="margin-left:260px;" class="btn">选择图片</button></p>
    <p><label>轮播图介绍</label><textarea id="imgDesc"  name="imgDesc" class="textComment">${tSlider.imgDesc}</textarea></p>
    <p style="margin-left:65px;">
        <button class="btn" type="button" onclick="doUpdate()">提交</button>
        <button class="btn" type="button" onclick="back()">返回</button></p>
</div>
</form>
</body>
<script language="JavaScript">
    function doUpdate()
    {
        var form=$("#sliderForm");
        form.submit();
    }
    function back()
    {
        window.location.href="${pageContext.request.contextPath}/slider/sliderMgr.cfg";
    }
</script>
</html>
