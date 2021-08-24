def caesar_cipher(string, shift = 1)
  converted_array = string.chars.map {|char| char.ord}
  shifted_array = converted_array.map do |num|
    if num >= 65 && num <= 90
      if shift.positive?
        if num + shift > 90
          (num + shift) - 26
        else
          num + shift
        end
      else
        if num + shift < 65
          num + shift + 26
        else
          num + shift
        end
      end
    elsif num >= 97 && num <= 122
      if shift.positive?
        if num + shift > 122
          num + shift - 26
        else
          num + shift
        end
      else
        if num + shift < 97
          num + shift + 26
        else
          num + shift
        end
      end
    else
      num
    end
  end
  shifted_string = shifted_array.map! {|num| num.chr}.join('')
  puts "You entered '#{string}'."
  puts "Encrypted by a factor of #{shift} shifts: #{shifted_string}"
end

puts "Enter a phrase"
string = gets.chomp
puts "How many places would you like to shift?"
shift = gets.chomp.to_i

caesar_cipher(string, shift)



