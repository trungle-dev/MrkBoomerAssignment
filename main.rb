require_relative './models/item'
require_relative './services/printer'
require_relative './services/reader'

sample_path = './samples/sample_2.txt'

items_map = Reader.new(sample_path).call

Printer.new(items_map).call
