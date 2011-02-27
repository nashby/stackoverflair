%w[view_helpers flair].each do |file|
  require File.join(File.dirname(__FILE__), "stackoverflair", file)
end
module Stackoverflair
	@defaults = {
		:id => "",
		:name => "",
		:theme => "default",
		:width => "208",
		:height => "58",
		:alt => false,
		:title => false
	}
	
	def self.defaults
		@defaults
	end
end