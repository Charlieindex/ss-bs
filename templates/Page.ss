<!DOCTYPE html>
<!-- SliceUp by Darjan Pezer - HTML5 & CSS3 ready! -->
<!--[if lt IE 7]><html lang="$ContentLocale" class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html lang="$ContentLocale" class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html lang="$ContentLocale" class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html lang="$ContentLocale" class="no-js"><!--<![endif]-->
<head>
  <% base_tag %>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
  $MetaTags(false)
  <title><% if $URLSegment == 'home' %>$SiteConfig.Title<% else %><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title<% end_if %></title>
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
  <% require css('themes/ssbs/css/style.min.css') %>
  <!-- favs -->
	<link rel="apple-touch-icon" sizes="180x180" href="$ThemeDir/ico/apple-touch-icon.png">
	<link rel="icon" type="image/png" href="$ThemeDir/ico/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="$ThemeDir/ico/favicon-16x16.png" sizes="16x16">
	<link rel="manifest" href="$ThemeDir/ico/manifest.json">
	<link rel="mask-icon" href="$ThemeDir/ico/safari-pinned-tab.svg" color="#272e3b">
	<meta name="theme-color" content="#ffffff">
	<!-- modernizr -->
  <script src="$ThemeDir/js/modernizr.custom.min.js"></script>
</head>
<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<!--[if lt IE 9]>
<div class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</div>
<![endif]-->
$Layout
<!-- Javascripts Below Footer -->
<% require javascript('themes/ssbs/js/app.min.js') %>
</body>
</html>
