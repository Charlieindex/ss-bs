<header class="header">
  <nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse fixed-top">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="$BaseHref">$SiteConfig.Title</a>
      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <% include Navigation %>
        <% if $SearchForm %>
        $SearchForm
        <% end_if %>
      </div>
    </nav>
</header>
