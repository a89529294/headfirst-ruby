class ListWithCommas
  attr_accessor :items

  def join
    return items[0] if items.length == 1

    last_item = "and #{items.last}"
    other_items = items.slice(0, items.length - 1).join(', ')
    delimiter = items.length > 2 ? ',' : ''
    "#{other_items}#{delimiter} #{last_item}"
  end
end

three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']

p three_subjects.join
