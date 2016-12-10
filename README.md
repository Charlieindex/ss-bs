# SilverStripe Bootstrap 4 (Alpha 5) starter theme - Gulp

##### This is [Bootstrap 4](https://v4-alpha.getbootstrap.com/) starter theme for [SilverStripe](http://silverstripe.org/) built by [Darjan Pezer](mailto:darjan@pezer.eu).
###### Version: 2.0

### Requirements
* [SilverStripe](http://silverstripe.org/) 3.0 or above (both framework and cms)
* PHP 5.3
* [Node](https://nodejs.org/en/) and [NPM](https://www.npmjs.com/package/plugin) (Node is used for dev tasks such as compiling sass, bundling and minifying js, etc. Npm is used for package management for node components.)
* [Gulp](http://gulpjs.com/) (install gulp with command `npm install -g gulp`)

### Theme includes
* [Bootstrap](https://v4-alpha.getbootstrap.com/) v4.0.0-alpha.5 (Sass)
* [jQuery](https://jquery.com/) 3.0.0

### Installation Instructions

 * Install with composer `composer require darianno/ss-bs` or ...

 * ... copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/ss-bs/templates`.

 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

    SSViewer::set_theme("ss-bs");

* Add the following to your `mysite/code/Page.php` file inside init() function:

    ```php
      Requirements::combine_files(
      'scripts.combined.js',
      array(
        'themes/ss-bs/javascript/jquery.min.js',
        'themes/ss-bs/javascript/tether.min.js',
        'themes/ss-bs/javascript/bootstrap.min.js',
        'themes/ss-bs/javascript/ie10-viewport-bug-workaround.js'
      )
    );
    ```

### Compiling CSS

* Install all required npm plugins with `npm install` command
* Run command `gulp watch` inside `npm` folder
* Put your CSS/SCSS files into `themes/ss-bs/sass/` and import them in `themes/ss-bs/sass/style.scss`
