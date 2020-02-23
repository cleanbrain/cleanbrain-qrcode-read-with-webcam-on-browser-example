<%--
  Created by IntelliJ IDEA.
  User: NANDSOFT
  Date: 2020-02-13
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="js/jquery-3.3.1_min.js"></script>
    <script src="js/instascan.min.js"></script>
</head>
<body>
<video autoplay></video>
<script>
    let scanner = new Instascan.Scanner({video: document.querySelector('video')});
    scanner.addListener('scan', function (content) {
        alert(content);
    });
    Instascan.Camera.getCameras().then(function (cameras) {
        if (cameras.length > 0) {
            scanner.start(cameras[0]);
        } else {
            console.error('No cameras found.');
        }
    }).catch(function (e) {
        console.error(e);
    });
</script>
</body>
</html>