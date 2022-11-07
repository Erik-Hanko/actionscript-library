# actionscript-library
custom library for actionscript

**HOW TO INCLUDE FILE:**__

include "[file_path]/actionscript-library/functions.as";


**_DOCUMENTATION:_**

syntax(); // prints out the syntax to the console

print(string); // returns a trace

random(1, 10); // returns an int

remove_whitespace(string); // returns a string without any whitespaces before/after

remove_spaces(string); // returns a string without any spaces inbetween

remove_extra_spaces(string); // returns a string that replaces multiple spaces with a single space

prime_factorize(int) // returns an array of every prime factor in number inputted

factorial(int); // returns an int

squared(number); // returns a number

cubed(number); // returns a number

decimal(number, x); // returns x amount of decimal places

random_card(); // returns random card from an array

dice_roll(); // returns random dice roll from an array

even(); // returns a boolean

interval_check(); // returns boolean based on if number is within start/end values

radian_to_degree(number); // returns a number

degree_to_radian(number); // returns a number

inch_to_cm(number) // returns a number

array_sum(array); // returns a number

array_avg(array); // returns a number

array_max(array); // returns a number

random_number_picker(start_num, end_num, amount); // returns an array with random numbers based on argument inputs

password_gen(password_length); // returns a string different characters with a length of user parameter input"

twofactor(length); // returns a string of just numbers with a length of user parameter input

encrypt(word:String,key:int); // encrypts user input word with the key

decrypt(word:String,key:int); // decrypts user input word with the key, if key is not the same as encrypted key, output will be weird

scramble_name(array); // returns an array with a scrambled name

delayed_call(function, ms) // delays a function call by x ms

eval(string) // returns a calculated math problem from a string to a number