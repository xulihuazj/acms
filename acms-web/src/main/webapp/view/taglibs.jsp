<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- 设置path的统一路径 --> 
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 设置图片存放的地址 -->
<c:set var="file_path" value="http://localhost:8090/assets/basic/imgfile"/>
<!--  -->
<c:set var="system" value="/ecps/console"/>
<!--  -->
<c:set var="PmsServerPath" value="http://10.1.248.131:8080/pmsV4/pms/main.do"/>
<c:set var="datePattern">
<fmt:message key="date.format"/></c:set>
  