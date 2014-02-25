# proof v0.1

Command line tool for searching StackOverflow for the first correct answer to a given question.

Written by: [Jon Matthews](https://github.com/joncarlmatthews)

Date: 25/02/2014

## Installation

1. Download
2. cd into build directory
3. chmod +x proof
4. Add proof to your $PATH if you wish
5. Done!

## Asking a question

	$ ./proof foreach loop ruby

Output should look like:

	X.each_with_index do |item, index|
	    puts "current_index: #{index}
	end
