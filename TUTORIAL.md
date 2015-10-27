# Guide to Solving Operators

### `unsafe?`

After running `rspec` for the first time we see we have seven tests failing.

```bash
Operations
  #unsafe?
    returns true if speed is greater than 60 (FAILED - 1)
    Failures:

  1) Operations #unsafe? returns true if speed is greater than 60
     Failure/Error: expect(answer).to eq(true)
       
       expected: true
            got: nil

```

Our method should return `true` if the speed is greater than 60. So let's add and if statement for that.

```ruby
def unsafe?(speed)
  if speed > 60 
    true
  end
end
``` 

Our next error message is:

```bash
Operations
  #unsafe?
    returns true if speed is greater than 60
    returns true if speed is less than 40 (FAILED - 1)
    returns false if the speed is between 40 and 60 (FAILED - 2)
Failures:

  1) Operations #unsafe? returns true if speed is less than 40
     Failure/Error: expect(answer).to eq(true)
       
       expected: true
            got: nil
            
 
   2) Operations #unsafe? returns false if the speed is between 40 and 60
     Failure/Error: expect(answer).to eq(false)
       
       expected: false
            got: nil
```

Now, our method should also return `true` if the speed is less than 40. And `false` if the speed is between 40 and 60.

Because we already have an if statement, we can add an `elsif` for when the speed is less than 40 and an `else` for when the speed is between 40 and 60. 


```bash
def unsafe?(speed)
  if speed > 60 
    true
  elsif speed < 40
    true
  else
    false
  end
end
```

This makes all our test for this method pass.

### `safe?`


```bash
#not_safe?
  returns true if speed is greater than 60 (FAILED - 1)
  returns true if speed is less than 40 (FAILED - 2)
  returns false if the speed is between 40 and 60 (FAILED - 3)
  uses the ternary operator
```

In this `safe?` method we will write the same `if-statement` that we wrote in out `unsafe?` method using a ternary operator.

How would we say it in english? If the speed is less than 40 `or` greater than 60 then the method should return `true` else `false`. For `or` we will use the ruby `||` operator.


```ruby
def not_safe?(speed)
  speed < 40 || speed > 60 ? true : false
end
```
All our tests are passing.

