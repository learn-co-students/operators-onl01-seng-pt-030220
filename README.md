---
tags: ternary, ||=, operators
language: ruby
resources: 1
---

# Operations

## Instructions

Remember to delete comments, otherwise the spec won't pass! :)

### Follow the steps below:

1. Use a if/else block to build a the `unsafe?` method that accepts a speed and returns either `true` or `false`. It returns `true` if the speed it's given is below 40 or above 60. 
  * So going 30 mph on the freeway would be unsafe, as would going 95 mph. 
  * Going 50 miles per hour, however, would return `false` as that's within the "safe" range.

2. Build the method `not_safe?` that is a version of your previous `unsafe?` method but with a ternary operator instead of an if/else block.

3. Build a method named `sum_machine` that takes two parameters and sums them, along with every integer that falls between them, together. 
  * For instance, `sum_machine(3, 7)` should return `25` (3 + 4 + 5 + 6 + 7) while sum_machine(5, 1) should return `15` (1 + 2 + 3 + 4 + 5).

4. Make a method `square` that will accept an array. It will square each element in the array and return a value of `0` if the element is not a number. Avoid using the method `#compact` but do use the ||= operator.
  * For instance, `square([2, 4, nil, 5])` should return `[4, 16, 0, 25]`

## Resources
* [Stack Overflow](http://stackoverflow.com/) - [Ternary Operators](http://stackoverflow.com/a/4252945)
