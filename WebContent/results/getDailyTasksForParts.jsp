<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul>
<c:forEach var="task" items="${tasks}">
	<c:if test="${task.IMPORTANCE == 1}">
		<li class="part important">
	</c:if>
	<c:if test="${task.IMPORTANCE == 0}">
		<li class="part">
	</c:if>
	${task.DAILY_TASK}
	<c:if test="${task.FINISHER_ID != null}">
		<span class="assignDetail" id="${task.FINISHER_ID}" style="float: right;">${task.FINISHER_NAME}</span>
	</c:if>
	<c:if test="${task.FINISHER_ID == null}">
		<i class="fa fa-edit" onclick="activateTask(this)" style="display: none;"></i>
		<span class="assignDetail unfinished " id="${task.ASSIGN_DETAIL}" style="float: right; display: none;">${task.ASSIGN_DETAIL}</span>
		<i class="fa fa-edit" onclick="activateAssign(this)" style="float: right; display: none;"></i>
	</c:if>
		</li>
</c:forEach>
</ul>