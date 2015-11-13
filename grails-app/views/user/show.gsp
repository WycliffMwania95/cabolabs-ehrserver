<%@ page import="com.cabolabs.security.User" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="admin">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
  </head>
  <body>

    <div class="row">
      <div class="col-lg-12">
      <h1><g:message code="default.show.label" args="[entityName]" /></h1>
      </div>
    </div>
    
    <div class="row">
      <div class="col-lg-12">
	     <g:if test="${flash.message}">
	        <div class="message" role="status">${flash.message}</div>
	     </g:if>
	      
	     <div class="control-group">
	       <label><g:message code="user.username.label" default="Username" /></label>
	       <div><g:fieldValue bean="${userInstance}" field="username"/></div>
	     </div>
	     <div class="control-group">
	       <label><g:message code="user.organizations.label" default="Organizations" /></label>
	       <div>
	         <g:select name="organizations" from="${userInstance.organizationObjects}" optionValue="${{it.name +' ('+ it.uid +')'}}" optionKey="uid" size="5" />
	       </div>
	     </div>
	     <div class="control-group">
	       <label><g:message code="user.accountExpired.label" default="Account Expired" /></label>
	       <div><g:formatBoolean boolean="${userInstance?.accountExpired}" /></div>
	     </div>
	     <div class="control-group">
	       <label><g:message code="user.accountLocked.label" default="Account Locked" /></label>
	       <div><g:formatBoolean boolean="${userInstance?.accountLocked}" /></div>
	     </div>
	     <div class="control-group">
	       <label><g:message code="user.enabled.label" default="Enabled" /></label>
	       <div><g:formatBoolean boolean="${userInstance?.enabled}" /></div>
	     </div>
	     <div class="control-group">
	       <label><g:message code="user.passwordExpired.label" default="Password Expired" /></label>
	       <div><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></div>
	     </div>
	     <g:form url="[resource:userInstance, action:'delete']" method="DELETE">
	       <fieldset class="buttons">
	         <g:link class="edit btn btn-default btn-md" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
	         <%--
	          <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
	         --%>
	       </fieldset>
	     </g:form>
      </div>
    </div>
  </body>
</html>