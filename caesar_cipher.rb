puts "Enter a password"
password = gets.chomp
shift = 5

def caesar_cipher(password, shift)
  shifted_string = ""

  password.each_char do |char|
    if char =~ /[a-z]/
      shifted_string += ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      shifted_string += ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      shifted_string += char
    end
  end

  shifted_string
end

# Call the Caesar cipher method
encrypted_password = caesar_cipher(password, shift)

puts "Here is your password: #{encrypted_password}"
