# frozen_string_literal: true

# Read the file given by the arg path, then pre-process input into a hash with
# key is parent_id, and childs is a list of items
class Reader
  attr_reader :result

  def initialize(path)
    @path = path
  end

  def call
    @result = {}
    File.open(@path, 'r') do |f|
      f.each_line do |line|
        label, id, parent_id = line.split(',')
        item = Item.new(label, id, parent_id)
        @result[item.parent_id] ||= []
        @result[item.parent_id] << item
      end
    end

    @result
  end
end
