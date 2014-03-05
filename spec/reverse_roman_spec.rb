require('rspec')
require('reverse_roman')

describe('reverse_roman') do
  it('returns the correct value of a single roman numeral') do
    reverse_roman('X').should(eq(10))
  end
  it('returns the correct value of a double roman numeral') do
    reverse_roman('XI').should(eq(11))
  end
  it('returns the correct value of roman numeral with subtraction') do
    reverse_roman('XC').should(eq(90))
  end
  it('returns the correct value of roman numeral with subtraction and three digits') do
    reverse_roman('CMLXIV').should(eq(964))
  end
  it('returns the correct value of roman numeral with subtraction and 4 digits') do
    reverse_roman('MMMCMXCIX').should(eq(3999))
  end
  it('returns the correct value of roman numeral with subtraction and 4 digits') do
    reverse_roman('MMMCCXCVII').should(eq(3297))
  end
  it('returns the correct value of roman numeral with subtraction and 4 digits') do
    reverse_roman('XXIX').should(eq(29))
  end
  it('returns the correct value of roman numeral with subtraction and 4 digits') do
    reverse_roman('MDCCLXXXIX').should(eq(1789))
  end
end
