/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-05-06 02:36:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class scan_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("    <title>HTML5 GetUserMedia Demo</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("    <style>\n");
      out.write("    \tbody {\n");
      out.write("    \t\ttext-align: center;\n");
      out.write("    \t\tmargin: 0;\n");
      out.write("    \t}\n");
      out.write("    \t.hide {\n");
      out.write("    \t\tdisplay: none;\n");
      out.write("    \t}\n");
      out.write("    \t.toast {\n");
      out.write("    \t\tposition: fixed;\n");
      out.write("    \t\tbottom: 150px;\n");
      out.write("    \t\tleft: 50%;\n");
      out.write("    \t\tbackground: rgba(35,35,35,0.8);\n");
      out.write("    \t\tcolor: #fff;\n");
      out.write("    \t\tpadding: 5px 15px;\n");
      out.write("    \t\ttransform: translate(-50%, 50%);\n");
      out.write("    \t\tborder-radius: 5px;\n");
      out.write("    \t}\n");
      out.write("    \tvideo {\n");
      out.write("    \t\twidth: 100vw;\n");
      out.write("    \t}\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<video autoplay=\"autoplay\"></video>\n");
      out.write("<canvas id=\"canvas1\" height=\"320px\" class=\"hide\"></canvas>\n");
      out.write("<img class=\"hide\" src=\"\" alt=\"\" id=\"img\" />\n");
      out.write("<div></div>\n");
      out.write("<span class=\"toast hide\" id=\"toast\">\n");
      out.write("\t\n");
      out.write("</span>\n");
      out.write("<button id=\"scan\">扫一扫</button>\n");
      out.write("<script src=\"http://www.jq22.com/demo/jQueryQrcode201709202327/analyticCode.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("<script src=\"http://www.jq22.com/demo/jQueryQrcode201709202327/llqrcode.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    var video = document.querySelector('video');\n");
      out.write("    var audio, audioType;\n");
      out.write("\n");
      out.write("    var canvas1 = document.getElementById('canvas1');\n");
      out.write("    var context1 = canvas1.getContext('2d');\n");
      out.write("    var stream;\n");
      out.write("    \n");
      out.write("    // 兼容不同浏览器内核\n");
      out.write("    // 老的浏览器可能根本没有实现 mediaDevices，所以我们可以先设置一个空的对象\n");
      out.write("\tif (navigator.mediaDevices === undefined) {\n");
      out.write("\t  navigator.mediaDevices = {};\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t// 一些浏览器部分支持 mediaDevices。我们不能直接给对象设置 getUserMedia \n");
      out.write("\t// 因为这样可能会覆盖已有的属性。这里我们只会在没有getUserMedia属性的时候添加它。\n");
      out.write("\tif (navigator.mediaDevices.getUserMedia === undefined) {\n");
      out.write("\t  navigator.mediaDevices.getUserMedia = function(constraints) {\n");
      out.write("\t\n");
      out.write("\t    // 首先，如果有getUserMedia的话，就获得它\n");
      out.write("\t    var getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia;\n");
      out.write("\t\n");
      out.write("\t    // 一些浏览器根本没实现它 - 那么就返回一个error到promise的reject来保持一个统一的接口\n");
      out.write("\t    if (!getUserMedia) {\n");
      out.write("\t      \treturn Promise.reject(new Error('getUserMedia is not implemented in this browser'));\n");
      out.write("\t    }\n");
      out.write("\t\n");
      out.write("\t    // 否则，为老的navigator.getUserMedia方法包裹一个Promise\n");
      out.write("\t    return new Promise(function(resolve, reject) {\n");
      out.write("\t      \tgetUserMedia.call(navigator, constraints, resolve, reject);\n");
      out.write("\t    });\n");
      out.write("\t  }\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("    window.URL = window.URL || window.webkitURL || window.mozURL || window.msURL;\n");
      out.write("\n");
      out.write("\tvar exArray = [];\n");
      out.write("    navigator.mediaDevices.enumerateDevices()\n");
      out.write("    .then(function(sourceInfos) {\n");
      out.write("        for (var i = 0; i != sourceInfos.length; ++i) {\n");
      out.write("            var sourceInfo = sourceInfos[i];\n");
      out.write("            //这里会遍历audio,video，所以要加以区分\n");
      out.write("            if (sourceInfo.kind === 'video') {\n");
      out.write("                exArray.push(sourceInfo.deviceId);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    })\n");
      out.write("\t.catch(function(err) {\n");
      out.write("\t  \talert(err.name + \": \" + err.message);\n");
      out.write("\t});\n");
      out.write("\n");
      out.write("    function getMedia() {\n");
      out.write("        if (navigator.mediaDevices.getUserMedia) {\n");
      out.write("            navigator.mediaDevices.getUserMedia({\n");
      out.write("            \taudio: false,\n");
      out.write("            \tvideo: {\n");
      out.write("        \t\t\tfacingMode: { exact: \"environment\" }\n");
      out.write("        \t\t}\n");
      out.write("            }).then(function(stream) {\n");
      out.write("\t\t\t  \tsuccessFunc(stream)\n");
      out.write("\t\t\t})\n");
      out.write("\t\t\t.catch(function(err) {\n");
      out.write("\t\t\t  \terrorFunc(err)\n");
      out.write("\t\t\t});\n");
      out.write("        }\n");
      out.write("        else {\n");
      out.write("            alert('Native device media streaming (getUserMedia) not supported in this browser.');\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    // 初始就加载摄像头，不加定时会出现显示的前置摄像头（大概因为打开摄像头也要时间）\n");
      out.write("    /*setTimeout(function() {\n");
      out.write("\t\tgetMedia();\n");
      out.write("    }, 500);*/\n");
      out.write("\t\n");
      out.write("    function successFunc(stream) {\n");
      out.write("        //alert('Succeed to get media!');\n");
      out.write("        if (video.mozSrcObject !== undefined) {\n");
      out.write("            //Firefox中，video.mozSrcObject最初为null，而不是未定义的，我们可以靠这个来检测Firefox的支持\n");
      out.write("            video.mozSrcObject = stream;\n");
      out.write("        }\n");
      out.write("        else {\n");
      out.write("            video.src = window.URL && window.URL.createObjectURL(stream) || stream;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    function errorFunc(e) {\n");
      out.write("        alert('Error！'+e);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\tvar getImgTiming = null;\n");
      out.write("    // 将视频帧绘制到Canvas对象上,Canvas每60ms切换帧，形成肉眼视频效果\n");
      out.write("    function drawVideoAtCanvas(video,context) {\n");
      out.write("        window.setInterval(function () {\n");
      out.write("            context.drawImage(video, 0, 0,240,320);\n");
      out.write("        }, 3000);\n");
      out.write("        // 定时进行图片转换成二维码\n");
      out.write("        getImgTiming = window.setInterval(function () {\n");
      out.write("            getImg();\n");
      out.write("        }, 1000);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    // vedio播放时触发，绘制vedio帧图像到canvas\n");
      out.write("\tvideo.addEventListener('play', function () {\n");
      out.write("\t    drawVideoAtCanvas(video, context1);\n");
      out.write("\t}, false);\n");
      out.write("    \n");
      out.write("    // 转化图片\n");
      out.write("    function getImg() {\n");
      out.write("    \tvar dataURL = canvas1.toDataURL(\"image/png\");\n");
      out.write("    \t// 加载文件\n");
      out.write("    \tdocument.getElementById('img').src = dataURL;\n");
      out.write("    \tgetUrl(document.getElementById('img'), 'img-url');\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    // 获取二维码地址\n");
      out.write("    function getUrl(e,param){\n");
      out.write("        analyticCode.getUrl(param,e,function(text,imgSrc){\n");
      out.write("        \t// 判断是否解析成功\n");
      out.write("        \tif (text == 'error decoding QR Code') {\n");
      out.write("        \t\tdocument.getElementById('toast').innerHTML = '请对准二维码';\n");
      out.write("        \t\tdocument.getElementById('toast').classList.remove('hide');\n");
      out.write("        \t} else {\n");
      out.write("        \t\tdocument.getElementById('toast').innerHTML = '识别成功';\n");
      out.write("        \t\tdocument.getElementById('toast').classList.remove('hide');\n");
      out.write("        \t\t// 如果成功，请求接口、取消定时解析图片\n");
      out.write("        \t\tsetTimeout(function () {\n");
      out.write("        \t\t\tdocument.getElementById('toast').classList.add('hide');\n");
      out.write("        \t\t\tclearInterval(getImgTiming);\n");
      out.write("        \t\t}, 3000);\n");
      out.write("\t            e.nextElementSibling.innerHTML = text;\n");
      out.write("\t            e.previousElementSibling.src = imgSrc;\n");
      out.write("        \t}\n");
      out.write("        });\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    // 点击扫一扫\n");
      out.write("    document.getElementById('scan').onclick = function() {\n");
      out.write("    \tgetMedia();\n");
      out.write("    };\n");
      out.write("</script>\n");
      out.write("</body>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
