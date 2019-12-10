def say_hi()
    puts "Enter your first name "
    first_name = gets.chomp
    puts "Enter your last name "
    last_name = gets.chomp

    puts "Hello #{first_name} #{last_name}"
end

say_hi
################################################
def swap(a , b)
    temp = a
    a = b
    b = temp
    
    puts "a is now #{a} and b is #{b}"
end 

swap(1 , 2)
swap("first" , "second")
################################################
def max_num(num1 , num2)
    num1.to_i unless num1.to_i < num2.to_i
    num2.to_i
end 

puts max_num(33 , 58)
puts max_num(3 , 0)

################################################
def is_palindrome(word)
    return word.upcase.reverse == word.upcase
end

puts is_palindrome("radar")

###############################################
def word_counter(sentence)
        puts "Sentence has #{sentence.split(" ").count} words."
end

word_counter("The quick brown fox jumps over the lazy dog")
