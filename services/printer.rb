# frozen_string_literal: true

# Printer gets the input as result from reader, then print result to the screen as hierachy -> output
class Printer
  INDENTED_WIDTH = 2

  def initialize(items_map)
    @items_map = items_map
  end

  def call
    print_list(@items_map['nil'], 0)
  end

  private

  def print_list(items, level)
    items.each do |item|
      print_node(item, @items_map[item.id], level)
    end
  end

  def print_node(node, childs, level)
    space = ' ' * INDENTED_WIDTH * level

    puts "#{space}#{node}"

    return if childs&.empty?

    level += 1
    print_list(childs, level)
  end
end
