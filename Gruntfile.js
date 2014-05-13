module.exports = function (grunt) {
  var expandFiles = function (glob) {
    return grunt.file.expand({
        filter: 'isFile'
    }, glob);
  };

  // Project configuration.
  grunt.initConfig({
      jasmine_node: {
        options: {
          forceExit: true,
          match: '.',
          matchall: false,
          extensions: 'coffee',
          specNameMatcher: 'spec',
          jUnit: {
            report: true,
            savePath : "./build/reports/jasmine/",
            useDotNotation: true,
            consolidate: true
          }
        },
        all: ['spec/']
      }
  });

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-jasmine-node');

  // Default task.
  grunt.registerTask('default', ['jasmine_node']);
};