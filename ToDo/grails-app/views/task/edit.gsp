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
    <g:form name="addForm" action="save" id="${task?.id}">
      Subject: <g:textField name="subject" value="${task?.subject}"/><br/>
      Due Date: <g:datePicker name="dueDate" value="${task?.dueDate?:(new Date())}"/><br/>
      Completed: <g:checkBox name="completed" value="${task?.completed}"/><br/>
      <g:submitButton name="save" value="Save" />
    </g:form>
  </body>
</html>
