<ul class="navbar-nav mr-auto">
  <% loop $Menu(1) %>
  <li class="nav-item $LinkingMode<% if $LinkingMode == 'current' %> active<% end_if %>">
    <a class="nav-link" href="$Link">$MenuTitle.XML <span class="sr-only">(current)</span></a>
  </li>
  <% end_loop %>
</ul>