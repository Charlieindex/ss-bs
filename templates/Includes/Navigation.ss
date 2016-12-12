<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
  <li class="nav-item active">
    <a class="nav-link $LinkingMode" href="$Link">$MenuTitle.XML <span class="sr-only">(current)</span></a>
  </li>
  <% end_loop %>
</ul>