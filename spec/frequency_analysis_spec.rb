require_relative '../frequency_analysis'

describe FrequencyAnalysis do
	
	before(:each) do
		@fa = FrequencyAnalysis.new
		file = File.open("pg43929.txt")
		@doc = file.read
	end

	it "should return num results" do				
		@fa.build(@doc, 10).length.should == 10
	end	


end