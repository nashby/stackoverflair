module Stackoverflair
	class Flair		
		
		THEMES = ["default", "clean", "dark", "hotdog"]
	
		def self.put
		  return "You can use only these themes: #{themes}" unless THEMES.include? Stackoverflair::defaults[:theme] 
			"<a href='http://stackoverflow.com/users/#{Stackoverflair::defaults[:id]}'>
<img src='http://stackoverflow.com/users/flair/#{Stackoverflair::defaults[:id]}.png?theme=#{Stackoverflair::defaults[:theme]}' width='#{Stackoverflair::defaults[:width]}' height='#{Stackoverflair::defaults[:height]}' alt='#{set_default_alt}' title='#{set_default_title}'></a>"
		end
		
		def self.set_default_alt
			Stackoverflair::defaults[:alt] ||= "profile for #{Stackoverflair::defaults[:name]} at Stack Overflow, Q&amp;A for professional and enthusiast programmers "
		end
		
		def self.set_default_title
			Stackoverflair::defaults[:title] ||= "profile for #{Stackoverflair::defaults[:name]} at Stack Overflow, Q&amp;A for professional and enthusiast programmers "	
		end
		
		def self.themes
			THEMES.join(', ')
		end
		
	end
end