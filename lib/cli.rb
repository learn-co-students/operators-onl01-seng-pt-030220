require_relative '../lib/operations.rb'

SINGLE_INT_ARG = ["unsafe?", "not_safe?"]
DOUBLE_INT_ARG = ["sum_machine"]
ARRAY_ARG = ["square"]

def call
  welcome_message
  print_methods
  main
end

def welcome_message
  puts "Welcome!"
end

def print_methods
  methods = SINGLE_INT_ARG + DOUBLE_INT_ARG + ARRAY_ARG
  puts "All Methods:"
  methods.each {|n| puts "#{n}" }
end

def main
  puts "Type the name of the method you would like to use, type q to quit:"
  method_name = gets.chomp.strip
  if SINGLE_INT_ARG.include?(method_name)
    single_int_arg(method_name)
  elsif DOUBLE_INT_ARG.include?(method_name)
    double_int_arg(method_name)
  elsif ARRAY_ARG.include?(method_name)
    array_arg(method_name)
  elsif method_name.downcase == "q"
    "Goodbye!"
    exit
  else
    puts "Method name not recognized."
    main
  end
end

def single_int_arg(method_name)
  puts "Type a number to give to #{method_name}:"
  number = gets.chomp.strip.to_i
  puts send(method_name, number)
end

def double_int_arg(method_name)
  puts "Type two numbers, separated by commas, to pass to #{method_name} as the first and second arguments:"
  args = gets.chomp.strip.gsub(" ", "")
  first, second = args.split(",").map(&:to_i)
  puts send(method_name, first, second)
end

def array_arg(method_name)  
  puts "Type numbers, separated by commas, that you would like to pass to #{method_name}:"
  num_array = gets.chomp.strip.gsub(" ", "").split(",").map(&:to_i)
  puts send(method_name, num_array).inspect
end
