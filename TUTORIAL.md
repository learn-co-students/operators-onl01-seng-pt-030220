# Guide to Solving Operators

### `unsafe?`

After running `rspec` for the first time we see we have seven tests failing.

Now lets start writing `if / else` statement for the `unsafe?` method. Which will return true if the speed is either below 40 or above 60. Going 30 mph on the freeway would be unsafe, as would going 95 mph. Going 50 miles per hour, however, would return false as that's within the "safe" range.

```ruby
def unsafe?(speed)
  if speed > 60 
    true
  elsif 
    speed < 40
    true
  else
    false
  end
end
```
This makes all our test for this method pass.

### `safe?`

In this `safe?` method we will write the same `if-statement` that we wrote in out `unsafe?` method using a ternary operator.

```ruby
def not_safe?(speed)
  speed < 40 || speed > 60 ? true : false
end
```
All our tests are passing.

