class MyLambda
  def can_output_string_of_text
    @lamb = lambda { 'This is a string of text!' }
    @lamb.call
  end

  def incrementor(number)
    @lamb = lambda { |x| x + 1 }
    @lamb.call(number)
  end

  def joined(str1, str2)
    @my_lambda = lambda { str1 + str2 }
    @my_lambda.call
  end
end
