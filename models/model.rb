class Calc
  
  def quad(a, b, c)
    d = b**2 - (4 * a * c)
    if d < 0
      "There are no real x-intercepts."
    else
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a
      
      if x1 != x2
        "x = #{x1} and #{x2}"
      elsif x1 == x2
        "x = #{x1}"
      end
     
    end
  end
end


Test = Calc.new
puts Test.quad(1, 3, 10)
