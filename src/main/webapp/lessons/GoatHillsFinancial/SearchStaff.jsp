<%@ page contentType="text/html; charset=ISO-8859-1" language="java" 
	import="org.owasp.webgoat.session.*, org.owasp.webgoat.lessons.GoatHillsFinancial.GoatHillsFinancial" 
	errorPage="" %>
	<div id="lesson_search">
			<% 
			WebSession webSession = ((WebSession)session.getAttribute("websession"));
			String searchedName = htmlUtils.htmlEscape(request.getParameter(GoatHillsFinancial.SEARCHNAME));
			if (searchedName != null)
			{
			%>
				Employee <%=searchedName%> not found.
			<%
			}
			%>
				<form id="form1" name="form1" method="post" action="<%=webSession.getCurrentLesson().getFormAction()%>">
			    	<label>Name
					<input class="lesson_text_db" type="text" name="<%=GoatHillsFinancial.SEARCHNAME%>"/>
		        </label>
				<br>
				<input type="submit" name="action" value="<%=GoatHillsFinancial.FINDPROFILE_ACTION%>"/>
			</form>
	</div>