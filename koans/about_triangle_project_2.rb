require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  class SidesError < TriangleError 
  end
  

  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) 
        raise SidesError.new("Check the 0 values of the sides")
    end
    assert_raise(TriangleError) do triangle(3, 4, -5)
        raise SidesError.new("Check the negative values of the sides") 
    end
    assert_raise(TriangleError) do triangle(1, 1, 3)    
        raise SidesError.new("Check the repeated values of the sides")
    end
    assert_raise(TriangleError) do triangle(2, 4, 2)
        raise SidesError.new("Check the repeated values of the sides")
    end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
  
end
