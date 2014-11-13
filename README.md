---
tags: ternary, ||=, operators
language: ruby
resources: 3
---

# Operations

## Objectives

### Part One
* Get familiar with passing arguments to methods.
* Get familiar with passing multiple arguments to a method.
* Feel at ease when manipulating arguments within the methods.
* Get comfy returning the desired values from a method.

### Part Two
* Build a command-line interface, or CLI, that interacts with the methods you build above.

## Instructions

**Remember to delete comments, otherwise the spec won't pass!**

### Part One

When working on this section, you will be adding code to `lib/operations.rb`. Remember to delete the comments from each method to get every test to pass! The tests are written in order so get the first to pass before continuing on to the second, etc.

1. Use a if/else block to build a the `unsafe?` method that accepts a speed and returns either `true` or `false`. It returns `true` if the speed it's given is below 40 or above 60. 
  * So going 30 mph on the freeway would be unsafe, as would going 95 mph. 
  * Going 50 miles per hour, however, would return `false` as that's within the "safe" range.
2. Build the method `not_safe?` that is a version of your previous `unsafe?` method but with a [ternary operator](http://stackoverflow.com/a/4252945) instead of an if/else block.
3. Build a method named `sum_machine` that takes two parameters and sums them, along with every integer that falls between them, together. Incoporate the `+=` [shorthand operator](http://stackoverflow.com/a/7638536/2890716).
  * For instance, `sum_machine(3, 7)` should return `25` (3 + 4 + 5 + 6 + 7) while sum_machine(5, 1) should return `15` (1 + 2 + 3 + 4 + 5).
4. Make a method `square` that will accept an array. It will square each element in the array and return a value of `0` if the element is `nil`. Avoid using the method `#compact`, but do use the `||=` [operator](http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html).
  * For instance, `square([6, 10])` should return `[36, 100]` while `square([2, 4, nil, 5])` should return `[4, 16, 0, 25]`.

### Part Two

Once all the tests for part one are passing, it's time to make a CLI. To do this, you'll be adding and uncommenting code in `lib/cli.rb`. 

To see what the interaction is like, type `ruby bin/runner.rb` into your terminal from the root of this directory. 

Just like Part One, this section is test driven and the tests are written in order of increasing difficulty, so get them to pass in order. Some code has been written out to help you so follow the instructions in the comments.

## Resources
* [Stack Overflow](http://stackoverflow.com/) - [The += or "Plus Equals" Operator](http://stackoverflow.com/a/4252945)
* [Ruby Inside](http://www.rubyinside.com/) - [The ||= or "Or Equals" Operator](http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html)
* [Stack Overflow](http://stackoverflow.com/) - [Ternary Operators](http://stackoverflow.com/a/4252945)
