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
