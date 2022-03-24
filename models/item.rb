# frozen_string_literal: true

# Item class is a blueprint for input, with attrs as label, id, parent_id
class Item
  attr_reader :label, :id, :parent_id

  def initialize(label, id, parent_id)
    @label = label&.strip
    @id = id&.strip
    @parent_id = parent_id&.strip
  end

  def to_s
    "+ #{label}"
  end
end
