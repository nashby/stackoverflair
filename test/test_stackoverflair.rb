require 'helper'

class TestStackoverflair < Test::Unit::TestCase
	
	def setup
		Stackoverflair::defaults[:id] = "336626"
		Stackoverflair::defaults[:name] = "nash"
		Stackoverflair::defaults[:theme] = "default"
		Stackoverflair::defaults[:title] = false
		Stackoverflair::defaults[:alt] = false
	end
	
  should "return the flair" do
    assert_equal "<a href='http://stackoverflow.com/users/336626'>
<img src='http://stackoverflow.com/users/flair/336626.png?theme=default' width='208' height='58' alt='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers ' title='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers '></a>", Stackoverflair::Flair.put
  end	
	
	should "change default alt" do
		Stackoverflair::defaults[:alt] = "test"
		assert_equal "<a href='http://stackoverflow.com/users/336626'>
<img src='http://stackoverflow.com/users/flair/336626.png?theme=default' width='208' height='58' alt='test' title='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers '></a>", Stackoverflair::Flair.put
	end

	should "change default title" do
		Stackoverflair::defaults[:title] = "test"
		assert_equal "<a href='http://stackoverflow.com/users/336626'>
<img src='http://stackoverflow.com/users/flair/336626.png?theme=default' width='208' height='58' alt='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers ' title='test'></a>", Stackoverflair::Flair.put
	end

	should "change default theme" do
		Stackoverflair::defaults[:theme] = "hotdog"
    assert_equal "<a href='http://stackoverflow.com/users/336626'>
<img src='http://stackoverflow.com/users/flair/336626.png?theme=hotdog' width='208' height='58' alt='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers ' title='profile for nash at Stack Overflow, Q&amp;A for professional and enthusiast programmers '></a>", Stackoverflair::Flair.put
	end	
	
	should "raise exception when use wrong theme" do
		Stackoverflair::defaults[:theme] = "wrong_theme"
		assert_equal "You can use only these themes: #{Stackoverflair::Flair.themes}", Stackoverflair::Flair.put
	end
	
end
