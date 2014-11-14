---
tags: ternary, ||=, operators
language: ruby
resources: 3
---

# Operations

## Objectives

Get familiar with: 

* passing arguments to methods
* passing multiple arguments to a method
* manipulating arguments within the methods
* returning the desired values from a method

## Instructions

**Note: Remember to delete comments, otherwise the spec won't pass!**

To complete this lab, you will be adding code to `lib/operations.rb`. The tests are written in order so get the first to pass before continuing on to the second, etc.

* Use a if/else block to build an `unsafe?` method that accepts a speed and returns either `true` or `false`. It returns `true` if the speed is below 40 or above 60. 
  * Going 30 mph on the freeway would be unsafe, as would going 95 mph. 
  * Going 50 miles per hour, however, would return `false` as that's within the "safe" range.
* Build the method `not_safe?` that is a version of your previous `unsafe?` method but with a [ternary operator](http://www.codecademy.com/glossary/ruby/ternary-operator) instead of an if/else block.
* Build a method named `sum_machine` that takes two parameters and sums them, along with every integer that falls between them, together. Incoporate the `+=` [shorthand assignment operator](http://www.techotopia.com/index.php/Ruby_Operators#Ruby_Assignment_Operators).
  * For instance, `sum_machine(3, 7)` should return `25` (3 + 4 + 5 + 6 + 7) while sum_machine(5, 1) should return `15` (1 + 2 + 3 + 4 + 5).
* Once all the tests are passing, you can interact with the methods you wrote by typing `ruby bin/runner.rb` into your terminal from the root of this directory. This will run the file `runner.rb`. This file calls on the method `call` in `lib/cli.rb`. In another lab, you'll be building a CLI so familarize yourself with the way they work by looking at the code in `lib/cli.rb`. A good place to start would be the `call` method so take a look at that method and the methods it relies on. 

## Resources

* [Ruby Operators](http://www.techotopia.com/index.php/Ruby_Operators)
* [Stack Overflow](http://stackoverflow.com/) - [The += or "Plus Equals" Operator](http://stackoverflow.com/a/4252945)
* [Ruby Inside](http://www.rubyinside.com/) - [The ||= or "Or Equals" Operator](http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html)
* [Stack Overflow](http://stackoverflow.com/) - [Ternary Operators](http://stackoverflow.com/a/4252945)
