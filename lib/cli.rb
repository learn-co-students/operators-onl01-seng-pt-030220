require_relative '../lib/operations.rb'
require 'json'

# please do not add code or remove code from
# this file

METHODS = {
  "unsafe?"     => { :arg => "number",          :ex => "unsafe?(95)"     },
  "not_safe?"   => {:arg => "number",           :ex => "not_safe?(50)"   },
  "sum_machine" => {:arg => "number,number",    :ex => "sum_machine(4,6)"},
}

# the call method calls on three other methods
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
  METHODS.each_with_index do |(name, info), i| 
    puts "#{i + 1}. #{name}"
    puts "  Argument(s): #{info[:arg]}"
    puts "  Example:     #{info[:ex]}"
  end
end

# the main method calls on itself, making
# it recursive
# to read up on recursive methods, go to
# http://stackoverflow.com/a/6418144/2890716
def main
  print "Type the method followed by argument(s) in parenthesis or type q to quit: "
  user_input = gets.chomp.strip
  evaluate_user_input(user_input)
  main
end

def evaluate_user_input(user_input)
  method_name = user_input[/(.*?)\s*\(/, 1]
  if METHODS.keys.include?(method_name)
    args = user_input[/\(([^)]+)\)/, 1]
    process_method(method_name, args)
  elsif user_input.downcase == "q" || user_input.downcase =~ /exit/
    puts "Goodbye!"
    exit
  else
    puts"Method name not recognized."
  end
end

def process_method(method_name, args)
  if method_name == "unsafe?" || method_name == "not_safe?"
    puts send(method_name, args.to_i).inspect
  else
    first_arg, second_arg = args.split(",").map(&:to_i)
    puts send(method_name, first_arg, second_arg).inspect
  end
end
