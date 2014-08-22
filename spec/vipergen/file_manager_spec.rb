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
	context "when generating viper structure" do

	end

	context "when renaming file content" do 

	end
end