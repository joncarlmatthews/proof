# proof v0.1

proof is a command line tool that answers programming related questions.

You type a question and proof will use the StackOverflow API to find the first correctly answered question based on your term.

Written by: [Jon Matthews](https://github.com/joncarlmatthews)

Date: 25/02/2014

## Installation

1. Download
2. cd into `build` directory
3. `$ chmod +x proof`
4. Add proof to your $PATH if you wish
5. Done!

## Asking a question

````usage: proof [search term]````

````$ ./proof how to iterate over NSArray````

Example output:

	The generally-preferred code for 10.5+/iOS.

	for (id object in array) {
	    // do something with object
	}

	This construct is used to enumerate objects [...]

It's a good idea to pipe the output through less so you can scroll through long answers:

	$ ./proof how to iterate over NSArray | less
