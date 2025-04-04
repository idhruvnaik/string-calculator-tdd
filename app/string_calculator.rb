class StringCalculator
  def initialize(delimeter = /,|\n/)
    @delimeter = delimeter
  end

  def add(string)
    sum = 0
    if string.empty?
      return sum # ? If string is empty return '0'
    end

    # !! Validate string
    string_validator(string)

    # ? If string not empty move ahead with the summation
    string = set_delimeter(string) # * Setter method
    numbers = number_parser(string) # * Parser method
    negative_number(numbers) # !! Validation method
    answer = sum(numbers) # ** Summation method

    return answer
  end

  private

  # ? Performs the sum of given numbers
  def sum(numbers = [])
    return numbers.map(&:to_i).sum
  end

  # ? Extracts the numbers from agiven string
  def number_parser(string)
    return string.split(/#{@delimeter}/)
  end

  def negative_number(numbers)
    negative_numbers = numbers.select { |number| number.to_i < 0 }
    unless negative_numbers.empty?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end
  end

  def string_validator(string)
    if string.match?(",,")
      raise "Invalid argument : #{string}"
    end
  end

  def set_delimeter(string)
    if string.start_with?("//") # ? We enter the block, if string has // at start, so that means there's a custom delimeter
      separation = string.split("\n", 2) # ? First block with // and custom delimeter and second with numbers
      @delimeter = separation[0][2..] # ? extract the delimeter
      @delimeter = Regexp.escape(@delimeter) # ? Escape it for regex
      string = separation[1] # ? Remaining part with numbers      
    end

    return string
  end
end
