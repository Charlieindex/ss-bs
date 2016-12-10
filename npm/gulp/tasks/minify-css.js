/**
 * Task to minify css
 *
 */

module.exports = function(gulp, $, config, messages) {

  var cleanCSS = require('gulp-clean-css');
  var sourcemaps = require('gulp-sourcemaps');
  var rename = require('gulp-rename');

  gulp.task('minify-css', function() {
    return gulp.src(config.css.src)
      .pipe(sourcemaps.init())
      .pipe(cleanCSS())
      .pipe(rename({
        suffix: '.min'
      }))
      .pipe(sourcemaps.write())
      .pipe(gulp.dest(config.css.dest));
  });
};