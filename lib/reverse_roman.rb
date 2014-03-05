def reverse_roman(numeral)
  numeral_values = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  result = 0
  characters = numeral.split('')

  characters.each_with_index do |character, index|
    if index < (characters.length - 1) && numeral_values[character] < numeral_values[characters[index+1]]
      value = numeral_values[character] * -1
    else
      value = numeral_values[character]
    end
    result += value
  end
  result
end

puts reverse_roman('CDMLIIID')
