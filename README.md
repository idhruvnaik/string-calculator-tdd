# String Calculator

A simple String Calculator implementation using Ruby and RSpec

## Objective

The goal of this project is to build a calculator that can take a string of numbers with various delimiters and return their sum.

---

## Features

- Returns `0` for an empty string
- Accepts a single number and returns it as an integer
- Accepts two or more numbers separated by commas and returns their sum
- Handles newline (`\n`) as a delimiter along with commas
- Supports custom delimiters specified in the format `//[delimiter]\n[numbers]`
- Throws an error when encountering invalid input (like double commas)
- Throws an error when negative numbers are passed

---

## Usage

```bash
git clone git@github.com:idhruvnaik/string-calculator-tdd.git
cd string-calculator-tdd

bundle install

rspec

You can use the `add` method from the `StringCalculator` class to calculate the sum from a given string.

```ruby
calculator = StringCalculator.new
calculator.add("1,2") # => 3
calculator.add("//;\n1;2") # => 3
calculator.add("1\n2,3") # => 6
