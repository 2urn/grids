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
			compass:
				files: 'css/compass-sass/*.sass'
				tasks: ['compass']
				options:
					debounceDelay: 250

		compass:
			dist:
				options:
					sassDir: 'css/compass-sass'
					cssDir: 'css/compass-css'

	)

	grunt.loadNpmTasks('grunt-contrib-compass')
	grunt.loadNpmTasks('grunt-contrib-sass')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.registerTask('default', ['watch'])
