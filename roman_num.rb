### Old School Roman Numeral Maker Program (does not use IV, IX, etc.)

# def numeral_maker(num)
#   ('M' * (num / 1000))         +
#   ('D' * ((num % 1000) / 500)) +
#   ('C' * ((num % 500) / 100))  +
#   ('L' * ((num % 100) / 50))   +
#   ('X' * ((num % 50) / 10))    +
#   ('V' * ((num % 10) / 5))     +
#   ('I' * ((num % 5) / 1))
# end

# p numeral_maker(9757)
# p numeral_maker(16)
# p numeral_maker(1)
# p numeral_maker(0)

### New School Roman Numeral Maker Program



def new_numeral_maker(num)
  i = 'I' * ((num % 5) / 1)
  v = 'V' * ((num % 10) / 5)
  x = 'X' * ((num % 50) / 10)
  l = 'L' * ((num % 100) / 50)
  c = 'C' * ((num % 500) / 100)

  four_error = 'IIII'
  nine_error = 'VIIII'
  forty_error = 'XXXX'
  ninety_error = 'LXXXX'
  four_hundred_error = 'CCCC'

  # hundreds
  if c == four_hundred_error
    print('DC')
  else
    print(c)
  end

  # tens
  if l + x == ninety_error
    print('XC')
  elsif x == forty_error
    print('XL')
  else
    print(x)
  end

  # ones and teens
  if v + i == nine_error
    print('IX')
  elsif i == four_error
    print('IV')
  else
    print(v + i)
  end
end

# Change range to test desired arguments:
(400..441).each { |n| puts new_numeral_maker(n) }
