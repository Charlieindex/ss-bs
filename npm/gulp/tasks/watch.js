/**
 * Watch for file changes and run tasks.
 *
 * Tasks:
 * - Compress image and SVG files
 * - Puts to destination
 * - Success/error message
 */

'use strict';

module.exports = function(gulp, $, config, messages) {
  gulp.task('watch', function() {
  	// Watch for .scss files
  	gulp.watch(config.sass.src, ['styles']);
  	// Watch for new images
    gulp.watch(config.images.src, ['images']);
    // Watch for min css
    gulp.watch(config.css.src, ['minify-css']);
  });
};
