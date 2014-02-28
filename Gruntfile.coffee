module.exports = (grunt) -> 
	grunt.initConfig(

		sass:                              
			dist:                            
				options:                       
					style: 'expanded'
					banner: '/* 2urn */'
				files:
					'css/foundation.css': 'css/foundation.sass'
					'css/bootstrap.css': 'css/bootstrap.sass'

		watch:
			styles:
				files: 'css/*.sass'
				tasks: ['sass']
				options:
					debounceDelay: 250
	)

	grunt.loadNpmTasks('grunt-contrib-sass')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.registerTask('default', ['watch'])
