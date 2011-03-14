class MergeSorter
  def sort(elements)
    return elements if elements.size < 2

    midpoint_index = elements.size / 2
    left = elements[0...midpoint_index]
    right = elements[midpoint_index..-1]

    merge(sort(left), sort(right))
  end

  def merge(list_1, list_2, merged = [])
    return merged if list_1.empty? and list_2.empty?

    smaller_item = get_smaller_list(list_1, list_2).shift
    merged.push(smaller_item)

    merge(list_1, list_2, merged)
  end

  def get_smaller_list(list_1, list_2)
    if list_1.empty?
      list_2
    elsif list_2.empty?
      list_1
    else
      [list_1, list_2].min
    end
  end
  private :get_smaller_list

end
