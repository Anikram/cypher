#encoding: utf-8

require "Digest"
require_relative "methods.rb"

puts "Введите строку для кодировки:\n"

user_input = STDIN.gets.chomp

puts "Какую систему шифрования выбрать:
1. MD5
2. SHA1
?"

user_option = STDIN.gets.chomp.to_i

#cls

while user_option do

  if user_option == 1
    puts "Ваша шифрованная строка в MD5: " + Digest::MD5.hexdigest(user_input) + "."
    break
  elsif user_option == 2
    puts "Ваша шифрованная строка в SHA1:" + Digest::SHA1.hexdigest(user_input) + "."
    break
  else
    puts "Выберите метод шифрования из списка."
  end
end

puts "Goodbye!"
