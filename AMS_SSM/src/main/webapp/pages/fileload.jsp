<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!-- release v4.3.6, copyright 2014 - 2017 Kartik Visweswaran -->--%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8"/>
    <title>Krajee JQuery Plugins - &copy; Kartik</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/fileupload/css/default.css">
    <link href="${pageContext.request.contextPath}/plugins/fileupload/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/plugins/fileupload/js/jquery-1.11.0.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/plugins/fileupload/js/fileinput.js" type="text/javascript"></script>
    <!--简体中文-->
    <script src="${pageContext.request.contextPath}/plugins/fileupload/js/locales/zh.js" type="text/javascript"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
    <body>
<%--            <div class="htmleaf-container">--%>

<%--                <div class="container kv-main">--%>
                    <form enctype="multipart/form-data" >
                        <label>图片上传</label>
                        <input id="file-zh" name="file-zh[]" type="file" multiple>
                    </form>
                    <hr>
                    <br>
<%--                </div>--%>

<%--            </div>--%>
    </body>
	<script>
    $('#file-zh').fileinput({
        language: 'zh',
        uploadUrl: '${pageContext.request.contextPath}/file/fileuploadDemo.do',
        // allowedFileExtensions : ['jpg', 'png','gif'],
        uploadAsync:true //是否为异步上传  同步上传
    });
    //文件上传成功时（fileuploaded）的回调函数，同步上传时无法调用
    $("#file-zh").on("fileuploaded", function(event, data, previewId, index) {
        console.log(data.response.filePath);
    });
    $(document).ready(function() {
        $("#test-upload").fileinput({
            'showPreview' : false,
            'allowedFileExtensions' : ['jpg', 'png','gif'],
            'elErrorContainer': '#errorBlock'
        });
    });
	</script>
</html>