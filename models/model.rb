class Calc
  def nav(a,b,c,meth)
    if meth == "quad"
      quad(a,b,c)
    elsif meth == "pythag"
      pythag(a,b,c)
    end
  end
  def quad(a, b, c)
    if a ==""
      return "Error please enter value for a"
    else
      af = a.to_f
      bf = b.to_f
      cf = c.to_f
    end
    d = bf **2 - (4 * af * cf)
    if d < 0
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
  def pythag(a,b,c)
    if a == "" && b == "" || b == "" && c == "" || c == "" && a == ""
      "You are missing one or more numbers."
    else
    if a == ""
      b= b.to_f
      c= c.to_f
      new_a = Math.sqrt(c**2 - b**2)
      "A is equal to #{new_a}."
    elsif b == ""
      a=a.to_f
      c=c.to_f
      new_b = Math.sqrt(c**2 - a**2)
      "B is equal to #{new_b}."
    else c == ""
      a=a.to_f
      b=b.to_f
      new_c = Math.sqrt(a**2 + b**2)
      "C is equal to #{new_c}."
    end
  end
end
end


Test = Calc.new
puts Test.quad(1, 3, 10)
