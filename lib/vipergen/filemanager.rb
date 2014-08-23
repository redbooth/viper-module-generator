module Vipergen
	# File manager class
	class FileManager
		# Constants
		LANGUAGES = ["swift", "objc"]
		TEMPLATES = ["default", "fetchedresultscontroller"]
		REPLACEMENT_KEY = "VIPER"
		
		# Returns if the template is valid by the VIPER generator 
		def self.is_template_valid(template)
			return TEMPLATES.include? template
		end

		# Returns if the language is valid by the VIPER generator
		def self.is_language_valid(language)
			return LANGUAGES.include? language
		end

		# Return the path if valid template and language
		# @return String with valid path 
		def self.path_from(template, language)
			return nil if !is_language_valid(language) || !is_template_valid(template)
			return File.join(Vipergen::DirUtils.templates_dir, template, language)
		end

		# Returns an array with files in a given path
		# @return Array with the files in a given path
		def self.files_in_path(path)
			return Dir["#{path}**/*"].select {|f| File.file?(f)}
		end

		# Returns the destination viper path 
		# @return Destination root path
		def self.destination_viper_path(path, name)
			return File.join(path,name)
		end

		# Copy a system item to another place
		def self.copy(from, to)
			FileUtils.mkdir_p (to)
			FileUtils.copy_entry(from, to)	
		end

		# Move a system item to another place
		def self.move(from, to)
			FileUtils.move(from, to)
		end

	end
end