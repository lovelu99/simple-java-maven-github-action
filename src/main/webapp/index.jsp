<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Simple Java Web App</title>
</head>
<body>

<h1>Simple Java Web App (Tomcat)</h1>

<div class="box">
  <p>Try the servlet endpoint:</p>
  <ul>
    <li>
      <a href="${pageContext.request.contextPath}/hello">
        ${pageContext.request.contextPath}/hello
      </a>
    </li>

    <li>
      <a href="${pageContext.request.contextPath}/hello?name=Aayan">
        ${pageContext.request.contextPath}/hello?name=Aayan
      </a>
    </li>
  </ul>

  <p>Example full URL:</p>

  <ul>
    <li>
      ${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/
    </li>
  </ul>
</div>

</body>
</html>
