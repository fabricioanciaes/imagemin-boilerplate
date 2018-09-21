var gulp = require('gulp')

var cache = require('gulp-cache');
var imagemin = require('gulp-imagemin');
var imageminPngquant = require('imagemin-pngquant');
var imageminZopfli = require('imagemin-zopfli');
var imageminMozjpeg = require('imagemin-mozjpeg'); //need to run 'brew install libpng'
var imageminGiflossy = require('imagemin-giflossy');

//compress all images
gulp.task('imagemin', function () {
  return gulp.src(['originais/**/*.{gif,png,jpg,svg}'])
    .pipe(cache(imagemin([
      //png
      imageminPngquant({
        speed: 1,
        quality: 60 //lossy settings
      }),
      imageminZopfli({
        more: true
        // iterations: 50 // very slow but more effective
      }),
      //gif
      // imagemin.gifsicle({
      //     interlaced: true,
      //     optimizationLevel: 3
      // }),
      //gif very light lossy, use only one of gifsicle or Giflossy
      imageminGiflossy({
        optimizationLevel: 3,
        optimize: 3, //keep-empty: Preserve empty transparent frames
        lossy: 2
      }),
      //svg
      imagemin.svgo({
        plugins: [{
          removeViewBox: false
        }]
      }),
      //jpg lossless
      imagemin.jpegtran({
        progressive: true
      }),
      //jpg very light lossy, use vs jpegtran
      imageminMozjpeg({
        quality: 60
      })
    ])))
    .pipe(gulp.dest('comprimidas'));
});