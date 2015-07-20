# Operators

## Objectives

1. Use the ternary operator (`?:`).
2. Review using comparison operators and boolean operators.
3. Practice implementing flow control using `if`, `elsif`, and `else` statements.

## Reviewing Operations

In this lab, we'll be combining our knowledge of operators (like comparison and boolean operators) with our new understanding of flow control using `if`, `elsif`, and `else` statements. 

This lab will require you to use the comparison operators (`>`, `<`, `==`, etc.) and boolean operators that you learned about in the previous unit.

This lab will require you to use a new operator that you haven't been introduced to before: the ternary operator.

## The Ternary Operator `?:`

The ternary operator (`?:`) is another type of comparison operator that is used in the context of `if` and `else` statements. Let's take this `if`/`else` statement pair and express it with a ternary operator instead: 

```ruby
age = 1

if age < 2
	"baby"
else
	"not a baby"
end 
```

Remember that if the condition associated with the `if` statement returns `true`, then the code underneath the conditional line will execute. If it fails however, then the code underneath the `else` will execute. In the above example, the value of the `age` variable is `1`; since this is less than `2`, the conditional will evaluate as `true` and will then return the string `"baby"`. 

Let's take a look at the same code using the ternary operator: 

```ruby
age = 1

age < 2 ? "baby" : "not a baby"
```

How does this work? In the above statement, the code before the `?` ("question mark") is evaluated as a boolean expression. If it returns true, the code on the left side of the `:` ("colon") will run, otherwise the code on the right will will run. 

It's a way of expressing on `if` and an `else` statement together on one line in this format:

```ruby
conditional ? action_if_true : action_if_false
```
## Why Use the Ternary Operator?

The ternary operator has a few things going for it. First of all, as Rubyists, we like to think about design. Is our code needlessly complex? Are our methods too long? Is our code self-explanatory––i.e., can someone reading it easily understand what it does? These are good questions to keep in mind as you learn to build more and more complicated programs. In fact, Ruby is a language that lends itself particularly well to elegant design. There are many design patterns that you'll learn about later on in this course, but for now, just keep the above questions in mind. 

Our first implementation of our are-you-a-baby? program required six lines of code. Using the ternary operator, we were able to implement the same behavior in only two lines! That's a great piece of refactoring!

**A Note on Usage:** *We use the ternary operator in a case like the one here when the* `if` *&* `else` *statement pair that we would otherwise construct is* **very simple.** *If your situation requires* `if` *and* `elsif` *statements, then the switching is too complex for the ternary operator making it inappropriate to use.*

## Instructions

1. Fork and clone this lab. 
2. Run the test suite in your terminal and check out the error messages and expectations in the spec file. You'll be coding your solutions in `lib/operations.rb`.
3. The first method, `unsafe?` will take in an argument of a speed and return true if the speed is unsafe and false if it is safe. 
  * Use an `if`/`else` statement pair to build the `unsafe?` method. It should return `true` if the speed is either below `40` or above `60`. *Going 30 mph on the freeway would be unsafe, as would going 95 mph. Going 50 miles per hour, however, would return `false` as that's within the "safe" range.*
4.  Build the method `not_safe?` that is a version of your previous `unsafe?` method but use the ternary operator (`?:`) instead of an `if`/`else` statement pair.

**A Debugging Reminder:** You can interact with your methods by typing `require 'pry'` at the top of your file and then placing the line `binding.pry` inside the method that you want to play around with. Then, when you run the test suite using `learn` in your terminal, your program will freeze when it hits the binding and you'll be able to explore your method inside your console.

## Resources

* [Ruby Operators](http://www.techotopia.com/index.php/Ruby_Operators)
* [Stack Overflow - Ternary Operators](http://stackoverflow.com/a/4252945)
