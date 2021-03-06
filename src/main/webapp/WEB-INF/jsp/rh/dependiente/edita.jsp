<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <title><s:message code="dependiente.edita.label" /></title>
    </head>
    <body>
        <jsp:include page="../menu.jsp" >
            <jsp:param name="menu" value="dependiente" />
        </jsp:include>

       <div id="edita-dependiente" class="content scaffold-list" role="main">
            <h1><s:message code="dependiente.edita.label" /></h1>
            <p class="well">
                <a class="btn btn-primary" href="<s:url value='/rh/dependiente'/>"><i class="icon-list icon-white"></i> <s:message code='dependiente.lista.label' /></a>
            </p>
            <c:url var="actualizaUrl" value="/rh/dependiente/actualiza" />
            <form:form commandName="dependiente" method="post" action="${actualizaUrl}">
                <form:errors path="*">
                    <div class="alert alert-block alert-error fade in" role="status">
                        <a class="close" data-dismiss="alert">×</a>
                        <c:forEach items="${messages}" var="message">
                            <p>${message}</p>
                        </c:forEach>
                    </div>
                </form:errors>
                <form:hidden path="id" />
                <form:hidden path="version" />

                <fieldset>
                    <s:bind path="dependiente.nombre">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                            <label for="nombre">
                                <s:message code="dependiente.nombre.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="nombre" maxlength="128" required="true" />
                            <form:errors path="nombre" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="dependiente.fechaNacimiento">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                            <label for="fechaNacimiento">
                                <s:message code="dependiente.fechaNacimiento.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="fechaNacimiento" maxlength="128" required="true" />
                            <form:errors path="fechaNacimiento" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="dependiente.estudios">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                            <label for="estudios">
                                <s:message code="dependiente.estudios.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="estudios" maxlength="128" required="true" />
                            <form:errors path="estudios" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="dependiente.grado">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                            <label for="grado">
                                <s:message code="dependiente.grado.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="grado" maxlength="128" required="true" />
                            <form:errors path="grado" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="dependiente.version">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                            <label for="version">
                                <s:message code="dependiente.version.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="version" maxlength="128" required="true" />
                            <form:errors path="version" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                </fieldset>

                <p class="well" style="margin-top: 10px;">
                    <button type="submit" name="actualizarBtn" class="btn btn-primary btn-large" id="actualizar" ><i class="icon-ok icon-white"></i>&nbsp;<s:message code='actualizar.button'/></button>
                    <a class="btn btn-large" href="<s:url value='/rh/dependiente/ver/${dependiente.id}'/>"><i class="icon-remove"></i> <s:message code='cancelar.button' /></a>
                </p>
            </form:form>
        </div>
        <content>
            <script>
                $(document).ready(function() {
                    $('input#nombre').focus();
                });
            </script>                    
        </content>
    </body>
</html>
