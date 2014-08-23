require 'spec_helper'

describe Vipergen::FileManager do
	context "when generating path" do
		it "should return nil if no valid template" do
			valid_template = Vipergen::FileManager.is_template_valid("asdgas")
			expect(valid_template).to be(false)
		end
		it "should return nil if no valid language" do
			valid_template = Vipergen::FileManager.is_template_valid("asdgas")
			expect(valid_template).to be(false)
		end
		it "should return nil if no valid language when getting path" do
			path = Vipergen::FileManager.path_from("default", "asgass")
			expect(path).to be(nil)
		end
		it "should return nil if no valid template when getting path" do
			path = Vipergen::FileManager.path_from("asga", "swift")
			expect(path).to be(nil)
		end
		it "should return the path if a valid language and template is passed" do
			path = Vipergen::FileManager.path_from("default", "swift")
			expect(path).to eq("templates/default/swift/")
		end

		it "should append the name to the given user path" do
			to_path = Vipergen::FileManager.destination_viper_path("path/", "pepito")
			expect(to_path).to eq("path/pepito")
		end
	end
	context "copying a folder to a diferent place" do
		before (:each) do
			Dir.mkdir 'foo'
			Dir.mkdir 'foo/subfoo'
		end

		it "should copy a given folder properly" do
			Vipergen::FileManager.copy('foo','test_foo')
			expect(File.directory?('test_foo/subfoo')).to eq(true)
		end

		after (:each) do
			FileUtils.rm_rf('foo')
			FileUtils.rm_rf('test_foo')
		end
	end
end

describe Vipergen::Generator do
	context "when renaming file content" do 
		before (:each) do
			File.open("test.txt", 'w') {|f| f.write("I'm a #{Vipergen::REPLACEMENT_KEY} file") }
		end

		it "should rename every VIPER word to the given name" do
			Vipergen::Generator.rename_file_content("test.txt","RENAMED")
			file = File.open("test.txt", "rb")
			content = file.read
			expect(content).to eq("I'm a RENAMED file")
		end

		after (:each) do
			FileUtils.rm('test.txt')
		end
	end

	context "when renaming file" do
		before (:each) do
			File.open("#{Vipergen::REPLACEMENT_KEY}test.txt", 'w') {|f| f.write("I'm a #{Vipergen::REPLACEMENT_KEY} file") }
		end

		it "every file should be renamed in rename_files" do
			expect(Vipergen::Generator).to receive(:rename_file)
			Vipergen::Generator.rename_files(["#{Vipergen::REPLACEMENT_KEY}file.txt"], "pepito")
		end

		it "should raise a SyntaxError exeption if there's a file in the template without the proper name" do
			expect(Vipergen::Generator).to raise(SyntaxError)
			Vipergen::Generator.rename_files(["asgasgs.txt"], "pepito")
		end

		it "should rename the VIPER in name to the given name" do
			file = "#{Vipergen::REPLACEMENT_KEY}test.txt"
			name = "RENAMED"
			Vipergen::Generator.rename_file(file, name)
			expect(File.exist? "RENAMEDtest.txt").to eq(true)
		end

		it "should rename the file content after the file name rename" do
			file = "#{Vipergen::REPLACEMENT_KEY}test.txt"
			name = "RENAMED"
			expect(Vipergen::Generator).to receive(:rename_file_content)
			Vipergen::Generator.rename_file(file, name)
		end

		after (:each) do
			File.delete "#{Vipergen::REPLACEMENT_KEY}test.txt" if File.exist? "#{Vipergen::REPLACEMENT_KEY}test.txt"
			File.delete "RENAMEDtest.txt" if File.exist? "RENAMEDtest.txt"
		end
	end
end