<header class="header">
  <nav class="navbar navbar-light bg-faded">
  	<div class="container">
	    <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#navbar-header" aria-controls="navbar-header" aria-expanded="false" aria-label="Toggle navigation"></button>
	    <div class="collapse navbar-toggleable-xs" id="navbar-header">
	      <a class="navbar-brand" href="$BaseHref">$SiteConfig.Title</a>
	      <% include Navigation %>
				<% if $SearchForm %>
	      <div class="form-inline float-xs-right">
	        $SearchForm
	      </div>
				<% end_if %>
	    </div>
	  </div>
  </nav> <!-- /navbar -->
</header>
