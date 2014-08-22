require 'spec_helper'

describe Vipergen::FileManager do
	context "when generating path generator" do
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
	end

	context "getting files from the path" do
		context "default" do
			context "swift" do
				#TODO: Pending
			end
			context "objc" do
				it "should return 11 files" do
					path = Vipergen::FileManager.path_from("default", "swift")
					files = Vipergen::FileManager.files_in_path("../../../#{path}")
					expect(files.count).to eq(11)
				end
			end
		end
	end
end