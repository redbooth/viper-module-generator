module Vipergen
	# Cosntants
	class Generator
		# Main method that generate the VIPER files structure
		def self.generate_viper(template, language, name, path)
			byebug
			puts "Generating VIPER-Module"
			path_from = Vipergen::FileManager.path_from(template, language)
			path_to = Vipergen::FileManager.destination_viper_path(path, name)
			Vipergen::FileManager.copy(path_from, path_to)
			files = Vipergen::FileManager.files_in_path(path_to)
		end

		# Rename all the files in the files array
		# - It renames the name of the file 
		# - It renames the content of the file
		def self.rename_files(files, name)
			files.each do |file|
				rename_file(file, name)
			end
		end

		# Rename a given file
		# - It renames the name of the file
		# - It renames the content of the file
		def self.rename_file(file, name)
			new_path = file.sub("VIPER", name)
			Vipergen::FileManager.move(file, new_path)
			rename_file_content(file, name)
		end

		# Rename the file content
		# @return: An String with the every VIPER replaced by 'name'
		def self.rename_file_content(file, name)
			# Reading content
			file = File.open(file, "rb")
			content = file.read

			# Replacing content
			contet = content.stub("VIPER", name)

			# Saving content
			File.open(file, "w+") do |file|
   				file.write(content)
			end
		end
	end
end