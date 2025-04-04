class StringCalculator
  def initialize()
  end

  def add(string)
    sum = 0
      if string.empty?
        return sum # ? If string is empty return '0'
      end

      # !! Validate string
      string_validator(string) 

      # ? If string not empty move ahead with the summation
      numbers = number_parser(string)
      answer = sum(numbers)

      return answer
  end

  private 

  # ? Performs the sum of given numbers
  def sum(numbers = [])
    return numbers.map(&:to_i).sum
  end
  
  # ? Extracts the numbers from agiven string
  def number_parser(string)
    return string.split(/[\n,]/)
  end

  def string_validator(string)
    if string.match?(",,")
      raise "Invalid argument : #{string}"
    end
  end
end