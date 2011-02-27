%w[view_helpers flair].each do |file|
  require File.join(File.dirname(__FILE__), "stackoverflair", file)
end
module Stackoverflair
	@defaults = {
		:id => '',
		:name => '',
		:theme => :default,
		:width => "666",
		:height => "58",
		:alt => "fuck",
		:title => false
	}
	
	def self.defaults
		@defaults
	end
end