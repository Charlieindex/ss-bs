/**
 * @param {Grunt} grunt
 */
module.exports = function (grunt) {
    'use strict';
    // load all grunt tasks
    grunt.initConfig({
        sass: {
            user: {
                files: {
                    'css/style.css': 'sass/style.scss',
                }
            }
        },
        cssmin: {
            options: {
                shorthandCompacting: false,
                roundingPrecision: -1
            },
            user: {
                files: {
                    'css/style.min.css': ['css/style.css']
                }
            }
        },
        concat: {
            user: {
                files:{
                    'js/app.js': [
                        'js-src/jquery/jquery-2.2.4.js',
                        'js-src/bootstrap/bootstrap.js',
                        'js-src/retinajs/retina.js',
                        'js-src/main.js'
                    ]
                }
            },
        },
        uglify: {
            options: {
                sourceMap: false,
                beautify: false,
                mangle: true,
               // screwIE8: true
            },
            user:{
                files: {
                    'js/app.min.js': ['js/app.js']
                }
            }
        },
        watch: {
            scriptsUser: {
                files: [
                    'js-src/**/*.js'
                ],
                tasks: ['concat:user', 'uglify:user'],
                options: {
                    spawn: false,
                },
            },

            cssUser: {
                files: [
                    'sass/**/*.scss',
                ],
                tasks: ['sass:user','cssmin:user'],
                options: {
                    spawn: false,
                },
            }
        }
    });

	grunt.file.setBase('./');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.registerTask('default', ['watch']);
    grunt.registerTask('all', ['sass','cssmin','concat','uglify']);
};
