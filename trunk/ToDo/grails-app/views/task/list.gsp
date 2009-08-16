<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
    <meta name="layout" content="main"/>
  </head>
  <body>
    <g:each in="${tasks}" var="task">
      <g:link action="edit" id="${task.id}">${task}</g:link>
      <g:link action="delete" id="${task.id}">Delete</g:link>
      <br/>
    </g:each>
  </body>
</html>
