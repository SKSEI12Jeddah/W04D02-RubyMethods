[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Methods

## Lesson Objectives

- Identify specific differences between Ruby and JavaScript in the following areas... 
  - Methods (Functions)
- Advanced Ruby argument discussion

## Blocks

Any code surrounded by curly braces is a block.

```ruby
2.times {
  print "Hey!"
}
```

With blocks, you can group a set of instructions together so that they can be passed around your program.

The curly braces can also be traded for the words `do` and `end`, which is nice if your block is longer than one line.

```ruby
loop do
  print "Hey!"
end
```

## Methods

As stated before, everything in Ruby is an object so there is no distinction in this language between functions and methods. Under the hood, even seemingly stand-alone functions are in fact associated with an object. The convention, however, is to call these methods.

**We use the word `method` in Ruby, never `function`. If we do, it's mostly out of habit.**

A method is made up of a few components. Take a look at the following method.

```ruby
def double( number )
   doubled_number = number * 2
   return doubled_number
end

double( 3 )
# => 6

double 3
# => 6
```

This method has several components to point out:

 - def - the Ruby equivalent of function
 - double - the method name in the above example
 - number - the argument name in the above example
 - end - closes the method

Passing arguments in Ruby works fairly similar to how it does in JS. They get passed as comma separated values after the method name.

```ruby
def hello(name, greeting, small_talk, punctuation)
  "#{greeting} #{name}, #{small_talk}#{punctuation}"
end
```

Lets think back to the behaviors of arguments in JS. Remember how lenient it is?

In Ruby, if you specify a number of arguments, the function must take that number of arguments. No more, No less. 

### Less
```ruby
$ hello("Jamie", "Hark", "frickin' cold eh")

=> ArgumentError: wrong number of arguments (given 3, expected 4)
```

### More
```ruby
$ hello("Jamie", "Hark", "frickin' cold eh", ".", "Forsooth, ye yonder pilgrim is quite the bespoke son of a tailors daughter, ai?")

=> ArgumentError: wrong number of arguments (given 5, expected 4)
```

SIDENOTE: Ruby's errors are amazing. Use them!

There are some fun ways to play with arguments and define further behavior:

<br>

In Ruby, returns are implicit by design. Ruby will always assume that the last line of the method will be returned.
<br>
<br>


```ruby
def api_call(err, data)
  return err if err

  # Do Stuff
end
```

### Everything is an Expression

```ruby
def add(a, b)
  a + b
end

add(1, 2) # => 3

add(1, 2, 3)
# > ArgumentError: wrong number of arguments (given 3, expected 2)
```

Notice we do not need the keyword ```return```. The last line hit by the method will always be the return value. This is called an implicit return.

### Predicate Methods (?)

This is similar to adding the bang to the end of a method. Predicate methods using `?` returns a boolean value.

```ruby
  5.odd?
  # true
  5.even?
  # false
  something = "A thing"
  # => "A thing"
  something.nil?
  # => false
```

## Ruby Code Style Guide

The Ruby community is very opinionated about styling.  As you are starting out, you MUST follow [these rules](https://github.com/bbatsov/ruby-style-guide).

Here are the most important rules

**Casing**

* All variables and methods must use `snake_case`
* All classes and modules must use `CamelCase`
* All constants (besides classes and modules) must use `SCREAMING_SNAKE_CASE`

**Blocks**

* A single line block must use `{` and `}`
* A multi-line must use `do` and `end`

**Methods**

* A method should end with a `?` if an only if it always returns a boolean
  * These are called _predicate methods_
* A method ending in `!` should be a _dangerous_ version of the method
  * _dangerous_ means either that it can mutate the object _or_ that can raise an error
* Do not use parens when calling a method without args


# Labs

### Write a method that accepts a first and a last name from the user and then says Hello to a full name 

-------

### Write a method that swaps the values of two variables around and prints the new values

------
### Find-max
#### Specs
Implement a Ruby method max that finds the maximum/highest number between two numbers
This method should take two arguments (a, b), both Integers, and return another Integer, the highest number.
`max(3, 9)` should return 9

`max(5, 1)` should return 5

>Key Learning Points
* Methods
* Conditionals
* Method Parameters vs. Arguments

----------

### A Palindrome is a word or phrase which reads the same backward or forward, such as madam or kayak.

#### Specs
Implement a Ruby method palindrome? that checks if a given word is a palindrome
This method should take one argument (word), a String, and return a Boolean (true of false), telling us if the given word is a `palindrome` or not
You can assume the one argument is a single word
It should not be affected by capital letters
`palindrome("racecar")` should return true

`palindrome("samar")` should return false

> Key Learning Points
String methods
return statement in methods
Predicate methods (methods that return true or false)
------

### Word-counter

#### Specs
Implement a Ruby method word_counter that counts the number of words in a given sentence
This method should take one argument (sentence), a String, and return an Integer representing the number of words in the sentence
`word_counter("The quick brown fox jumps over the lazy dog")` should return 9

`word_counter("Bonjour Je suis Samar")` should return 4

------



