module Vipergen
	# Cosntants
	class Generator

	end

	# File manager class
	class FileManager
		# Constants
		LANGUAGES = ["swift", "objc"]
		TEMPLATES = ["default", "fetchedresultscontroller"]

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
			return "templates/#{template}/#{language}/"
		end

		# Returns an array with files in a given path
		# @return Array with the files in a given path
		def self.files_in_path(path)
			return Dir.glob("#{path}**/*")
		end
	end

	# File Reader class
	class Reader
		# Read the content of a file in a given path and return it as an String
		def self.write_string_to_path(path)

		end
	end

	class Writter
		# Write  a String into a file in a given path
		# @return String with the read file
		def self.string_from_file_in_path(path)

		end
	end
end