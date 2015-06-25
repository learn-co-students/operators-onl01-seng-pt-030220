# Operators

## Objectives

* Learn about the ternary operator
* Review using comparison operators and boolean operators
* Practice implementing flow control using if/else statements 


## Reviewing Operations

In this lab, we'll be combining our knowledge of operators (like comparison and boolean operators) with our new understanding of flow control using `if/else` statements. 

This lab will require you to use the comparison operators (>, <, etc.) and boolean operators you learned in the previous unit. You can review them [here](https://learn.co/tracks/web-development-with-ruby-on-rails/ruby/booleans-and-math/boolean-operators). 

There's one more operator that we'll need to understand before we proceed with this lab:

## The Ternary Operator

The ternary operator is another type of comparison operator that is used in the context of `if/else` statements. An `if/else` statement without the ternary operator might look something like this: 

```ruby
age = 1

if age < 2
	"baby"
else
	"not a baby"
end 
```

Remember that if the condition after the `if` returns `true`, the code underneath the `if` will execute. Otherwise, the code underneath the `else` will execute. In the above example, the value of the `age` variable is in fact less than 2, so the above code will return `true`. 

Let's take a look at the same code using the ternary operator: 

```ruby
age = 1

age < 2 ? "baby" : "not a baby"
```

How does this work? In the above statement, the code before the `?` is evaluated as a boolean expression. If it returns true, the code on the left side of the `:` will run, otherwise the code on the right of the `:` will run. 

Think about it like this: 

```ruby
boolean_expression ? I_happen_if_boolean_expression_is_true : I_happen_if_boolean_is_false
```
## Why Use the Ternary Operator?

The ternary operator has a few things going for it. First of all, as Rubyists, we like to think about design. Is our code needlessly complex? Are our methods too long? Is our code self-explanatory––i.e., can someone reading it easily understand what it does? These are good questions to keep in mind as you learn to build more and more complicated programs. In fact, Ruby is a language that lends itself particularly well elegant design. There are many design patterns that you'll learn about later on in this course, but for now, just keep the above questions in mind. 

Our first implementation of our are-you-a-baby? program required 6 lines of code. Using the ternary operator, we were able to implement the same behavior with only 2! That's a huge improvement, from a design point of view. 


## Instructions

1. Fork and clone this lab. 
2. Run the test suite in your terminal and check out the error messages and expectations in the spec file. You'll be coding your solutions in `lib/operations.rb`.
3. The first method, `unsafe?` will take in an argument of a speed and return true if the speed is unsafe and false if it is safe. 
	* Use an `if/else` block to build the `unsafe?`. It returns `true` if the speed is below 40 or above 60. 
  * Going 30 mph on the freeway would be unsafe, as would going 95 mph. 
  * Going 50 miles per hour, however, would return `false` as that's within the "safe" range.
4.  Build the method `not_safe?` that is a version of your previous `unsafe?` method but with a [ternary operator](http://www.codecademy.com/glossary/ruby/ternary-operator) instead of an `if/else block`.

**A Debugging Reminder:** You can interact with your methods by typing `require 'pry'` at the top of your file and then placing the line `binding.pry` inside the method that you want to play around with. Then, when you run the test suite using `rspec` or `learn` in your terminal, your program will freeze when it hits the binding and you'll be able to explore your method inside your console.

## Resources

* [Ruby Operators](http://www.techotopia.com/index.php/Ruby_Operators)
* [Stack Overflow](http://stackoverflow.com/) - [Ternary Operators](http://stackoverflow.com/a/4252945)
