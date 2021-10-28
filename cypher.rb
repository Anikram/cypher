#!/usr/bin/env ruby
#encoding: utf-8

require "Digest"
# require_relative "methods.rb"

algorithms = {
  'md5' => Digest("MD5"),
  'sha1'=> Digest("SHA1"),
}
if (ARGV[0] && ARGV[1]) then
  puts "#{ARGV[0]} #{algorithms[ARGV[0]].hexdigest(ARGV[1])}"
else
  puts "Enter string to cypher:\n"

  user_input = STDIN.gets.chomp.gsub(/[ +]/, '_')   

  puts "Choose Algorithm:
  1. MD5
  2. SHA1
  ?"
  user_option = STDIN.gets.chomp.to_i
  while user_option do
      if user_option == 1
        puts "MD5: \n" + Digest::MD5.hexdigest(user_input) + "."
        break
      elsif user_option == 2
        puts "SHA1:\n" + Digest::SHA1.hexdigest(user_input) + "."
        break
      else
        puts "Выберите метод шифрования из списка."
      end
    end
end