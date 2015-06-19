# require 'pry'


class Calc
  def nav(a, b, c, meth)
    if meth == "quad"
      quad(a, b, c)
    elsif meth == "pythag"
      pythag(a, b, c)
    end
  end
  
  
  def quad(a, b, c)
    if a == ""
      return "Error please enter value for a"
    else
      af = a.to_f
      bf = b.to_f
      cf = c.to_f
    end
    d = bf ** 2 - (4 * af * cf)
    if d < 0
#       xi1 = (-b + Math.sqrt(-d)) / 2 * a
#       xi2 = (-b - Math.sqrt(-d)) / 2 * a
#       if xi1 != xi2
#         "x = #{xi1}i and #{xi2}i"
#       elsif xi1 == xi2
#         "x = #{xi1}i"
#       end
      #binding.pry
      "There are no real x-intercepts."
    else
      x1 = (-bf + Math.sqrt(d)) / 2 * af
      x2 = (-bf - Math.sqrt(d)) / 2 * af
      
      if x1 != x2
        "x = #{x1} and #{x2}"
      elsif x1 == x2
        "x = #{x1}"
      end
     
    end
    
  end
  
  def pythag(a, b, c)
    a + b + c
  end
      
end


# Test = Calc.new
# puts Test.quad(1, 3, 10)
