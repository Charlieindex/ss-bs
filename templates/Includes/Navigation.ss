<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
	<li class="$LinkingMode<% if Children %> dropdown<% end_if %>">
		<a href="<% if Children %>javascript:void(0);<% else %>$Link<% end_if %>" class="<% if Children %>dropdown-toggle<% end_if %>"<% if Children %> data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"<% end_if %>>$MenuTitle.XML <% if Children %><span class="caret"></span><% end_if %></a>
		<% if Children %>
			<ul class="dropdown-menu">
				<% loop Children %>
					<li><a href="$Link">$MenuTitle.XML</a></li>
				<% end_loop %>
			</ul>
		<% end_if %>
	</li>
	<% end_loop %>
</ul>