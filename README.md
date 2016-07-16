# SilverStripe Bootstrap 3 starter theme

##### This is [Bootstrap 3](http://getbootstrap.com/) starter theme for [SilverStripe](http://silverstripe.org/) built by [Darjan Pezer](mailto:darjan@pezer.eu).
###### Current version: 1.0

### Requirements
* [SilverStripe](http://silverstripe.org/) 3.0 or above (both framework and cms)
* PHP 5.3
* [Node](https://nodejs.org/en/) and [NPM](https://www.npmjs.com/package/plugin) (Node is used for dev tasks such as compiling sass, bundling and minifying js, etc. Npm is used for package management for node components.)
* [Grunt](http://gruntjs.com/) (install grunt with command `npm install -g grunt-cli`)

### Theme includes
* [Bootstrap](http://getbootstrap.com/) 3.3.6 (Sass)
* [jQuery](https://jquery.com/) 2.2.4
* [Retina.js](https://imulus.github.io/retinajs/) 1.3.0
* [Modernizr](https://modernizr.com/) 3.3.1 custom
* [FontAwesome](http://fontawesome.io/) 4.6.3
* Favicons generated with [realfavicongenerator.net](http://realfavicongenerator.net) (put the downloads into `ico`-folder)

### Installation Instructions

 * Copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/ssbs/templates`.

 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

		SSViewer::set_theme("ssbs");

* Add the following to your `mysite/code/Page.php` file inside init() function:

		Requirements::block(SAPPHIRE_DIR .'/thirdparty/jquery/jquery.js');

### Compiling CSS and JS

* Install all required npm plugins with `npm install` command
* Run `grunt watch`
* Save your JS files into `themes/ssbs/js-src/` (new JS files include to `Gruntfile.js` after line 28)
* Put your CSS/SCSS files into `themes/ssbs/sass/` and call them in `themes/ssbs/sass/style.scss`
