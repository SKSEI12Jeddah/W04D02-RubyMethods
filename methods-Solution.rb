# Labs

#1. Write a method that accepts a first and a last name from the user and then says Hello to a full name 

def say_hi()
    puts "Enter your first name "
    first_name = gets.chomp
    puts "Enter your last name "
    last_name = gets.chomp

    puts "Hello #{first_name} #{last_name}"
end

say_hi

# 2. Write a method that swaps the values of two variables around and prints the new values

def swap(a , b)
    temp = a
    a = b
    b = temp
    
    puts "a is now #{a} and b is #{b}"
end 

swap(1 , 2)
swap("first" , "second")

#3. Find-max
# Implement a Ruby method max that finds the maximum/highest number between two numbers
# This method should take two arguments (a, b), both Integers, and return another Integer, the highest number.

def max(num1 , num2)
    num1.to_i unless num1.to_i < num2.to_i
    num2.to_i
end 

puts max(33 , 58)
puts max(3 , 0)
puts  max(3, 9) #should return 9
puts  max(5, 1) #should return 5



# 4. A Palindrome is a word or phrase which reads the same backward or forward, such as madam or kayak.
# Implement a Ruby method palindrome? that checks if a given word is a palindrome
# This method should take one argument (word), a String, and return a Boolean (true of false), telling us if the given word is a `palindrome` or not
# You can assume the one argument is a single word
# It should not be affected by capital letters

def palindrome(word)
    return word.upcase.reverse == word.upcase
end

puts palindrome("radar")
puts  palindrome("racecar") #should return true
puts  palindrome("samar") #should return false



#5. Word-counter
# Implement a Ruby method word_counter that counts the number of words in a given sentence
# This method should take one argument (sentence), a String, and return an Integer representing the number of words in the sentence

def word_counter(sentence)
    puts "Sentence has #{sentence.split(" ").count} words."
end

word_counter("The quick brown fox jumps over the lazy dog")
word_counter("The quick brown fox jumps over the lazy dog") #should return 9
word_counter("Bonjour Je suis Samar") #should return 4


# 6. Current Date and Time
# Write a ruby method that returns current date and time.

def current
    return Time.new 
end

current

#7. Get Name 
# Write a method that accepts a name from the user and then returns it. Here's the javascript: 

# const getName = () => {
#   let name = prompt("what is your name?");
#   return name;
# };
def get_name
    puts "Enter your name"
    name = gets.chomp
    return name
end

puts get_name



### 8. Reverse It 
# Write a method that reverses a string. Here's the javascript:

# const reverseIt = () => {
#   let string = "a man, a plan, a canal, frenemies!";
#   let reverse = "";
#   for (let i=0; i < string.length; i++) {
#     reverse += string[string.length - (i+1)];
#   };
#   alert(reverse);
# };

def reverse_it(sentence)
    sentence.to_s.reverse
end

puts reverse_it("hello my friends")



# 9. Multiply Array 
# Write a method that multiplies all numbers in a given array and returns the final product. Here's the javascript:

# const multiplyArray = (ary) => {
#   if (ary.length == 0) { return 1; };
#   let total = 1;
#   // let total = ary[0];
#   for (let i=0; i < ary.length; i++) {
#     total = total * ary[i];
#   };
#   return total;
# };

def multiply_array(array)
    result = 1
    array.each do |num|
        result *= num
    end
    return result
end

puts multiply_array([1,2,3])


### 10. Fizz Buzzer 
# Write a method that takes a number argument and returns "fizz" if the number is divisible by three, "buzz" if the number is divisible by five, and "fizzbuzz" if it's divisible by both. Here's the javascript:

# const fizzbuzzer = (x) => {
#   if( x%(3*5) == 0 ) {
#     return 'fizzbuzz'
#   } else if( x%3 == 0 ) {
#     return 'fizz'
#   } else if ( x%5 == 0 ) {
#     return 'buzz'
#   } else {
#     return 'archer'
#   }
# }
def fizz_buzzer(n)
    
    return "FizzBuzz"   if n % 3 == 0 && n % 5 == 0
    return "Fizz"       if n % 3 == 0
    return "Buzz"       if n % 5 == 0
    

end
puts fizz_buzzer(15)


### 11. Nth Fibonacci 
# Write a method that finds the fibonacci number at the nth position and returns it. Here is the javascript:

# const nthFibonacciNumber = () => {
#   let fibs = [1, 1];
#   let num = prompt("which fibonacci number do you want?");
#   while (fibs.length < parseInt(num)) {
#     let length = fibs.length;
#     let nextFib = fibs[length - 2] + fibs[length - 1];
#     fibs.push(nextFib);
#   }
#   alert(fibs[fibs.length - 1] + " is the fibonacci number at position " + num);
# };

def nth_fibonacci(n)

    a = [0]
  
    (n+1).times do |i|
      if i==0
        a[i] = 0
      elsif i==1
        a[i] = 1
      else
        a[i] = a[i-1] + a[i-2]
      end  
    end
  
    return a[n]
  end
  
  puts nth_fibonacci(9)


#12. Search Array 
# Write a method that searches through an array for a value and returns true or false depending on whether or not the value is present in the array. Here is the javascript:

# const searchArray = (array, value) => {
#   for(let i = 0; i < array.length-1; i++) {
#     if(array[i] == value) {
#       return true;
#       break;
#     }
#   }
#   return -1;
# };




#13. hasDupes
# Write a method that checks whether or not an array has any duplicates. Here is the javascript:

# const hasDupes = (arr) => {
#   let obj = {};
#   for (i = 0; i < arr.length; i++) {
#     if(obj[arr[i]]) {
#       return true;
#     }
#     else {
#       obj[arr[i]] = true;
#     }
#   }
#   return false;
# };

def has_dupes(arr)
    if arr.uniq.length == arr.length
        return false
      else
        return true
      end 
end

