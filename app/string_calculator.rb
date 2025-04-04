class StringCalculator
  def initialize()
  end

  def add(string)
    sum = 0
    if string.empty?
      return sum # ? If string is empty return '0'
    end

    if string.include?(",,")
      raise "Invalid argument : #{string}"
    end

    # ? If string not empty move ahead with the summation
    numbers = string.split(",")
    sum = numbers.map(&:to_i).sum

    return sum
  end
end
