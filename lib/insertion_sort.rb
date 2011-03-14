class InsertionSorter
  def sort(elements)
    elements.each_with_index do |element, index|
      insert_element_into_sorted_left_side(elements, element, index - 1)
    end
    return elements
  end

  def insert_element_into_sorted_left_side(elements, element_to_be_inserted, i)
    while more_shifts_necessary?(elements, element_to_be_inserted, i)
      shift_right(elements, i)
      i -= 1
    end
    elements[i + 1] = element_to_be_inserted
  end

  def more_shifts_necessary?(elements, element_to_be_inserted, i)
    i >= 0 and elements[i] > element_to_be_inserted
  end
  private :more_shifts_necessary?

  def shift_right(elements, i)
    elements[i + 1] = elements[i]
  end
  private :shift_right
end

