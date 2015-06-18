class Result
  def response(name, emotion, question)
    
    if emotion == "panic"
      "calm yourself"
    elsif emotion == "cute"
      "SQUACOON"
    else
      "find the squacoon"
    end
    
    if question == "yes"
      "Please go see a doctor"
    else
      "Great"
    end
  end
end

# Test = Result.new
# puts Test.response("colette", "panic")