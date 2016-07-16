# Using the SilverStripe Bootstrap Starter (ssbs) theme

 * Copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/ssbs/templates`.

 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

		SSViewer::set_theme("ssbs");

* Add the following to your `mysite/code/Page.php` file inside init() function:

		Requirements::block(SAPPHIRE_DIR .'/thirdparty/jquery/jquery.js');
