require_relative '../lib/operations.rb'
require 'json'

METHODS = {
  "unsafe?"     => { :arg => "number",          :ex => "unsafe?(95)"     },
  "not_safe?"   => {:arg => "number",           :ex => "not_safe?(50)"   },
  "sum_machine" => {:arg => "number,number",    :ex => "sum_machine(4,6)"},
  "square"      => {:arg => "array of numbers", :ex => "square([3,5,6])" }
}

def call
  welcome_message
  print_methods
  main
end

def welcome_message
  puts "Welcome!"
end

def print_methods
  puts "All Methods:"
  METHODS.each do |name, info| 
    puts "- #{name}"
    puts "    Argument(s): #{info[:arg]}"
    puts "    Example: #{info[:ex]}"
  end
end

def main
  puts "Type a method followed by its arguments in parenthesis, type q to quit:"
  user_input = gets.chomp.strip
  method_name = user_input[/(.*?)\s*\(/, 1]
  if METHODS.keys.include?(method_name)
    args = user_input[/\(([^)]+)\)/, 1]
    process_method(method_name, args)
  elsif user_input.downcase == "q"
      puts "Goodbye!"
  else
    puts"Method name not recognized."
  end
end

def process_method(method_name, args)
  if method_name == "unsafe?" || method_name == "not_safe?"
    puts send(method_name, args.to_i)
  elsif method_name == "sum_machine"
    first, second = args.split(",").map(&:to_i)
    puts send(method_name, first, second)
  elsif method_name == "square"
    array = JSON.parse(args.gsub("nil", "0"))
    puts send(method_name, array).inspect
  end
end
