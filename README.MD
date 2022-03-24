# MarketBoomer Take home Project

This source code is implemented to solve the problem that is sent to test by MarketBoomer. It reads the text file as input and print to the console screen as output.

Run the code online:

Visit repl [https://replit.com/@trungledev/MrkBoomerAssignment#main.rb]() and click play

## Approach:

First read each line from the sample.txt file without header row, then split it by comma and assign it to a hash whose key is the parent_id, value is an array of items read from the file.

After that, implement the printer service using the recursive function to print nested child items.

## Source Code:

- Models - item.rb: Item class is a blueprint for input, with attrs as label, id, parent_id
- Services:

  - Reader: Read the file given by the arg path, then pre-process input into a hash with key is parent_id, and childs is a list of items
  - Printer: Printer gets the input as result from reader, then print result to the screen as hierachy -> output
- main.rb: The execute file

## How to run the code:

- Install ruby 2.7.2
- Clone the project & Change dir to root of the source code
- Run command to see the output print out the terminal `SAMPLE_INPUT_PATH=./samples/sample_1.txt bundle exec ruby main.rb`
- Update `SAMPLE_INPUT_PATH` ENV value to change input file dir.
