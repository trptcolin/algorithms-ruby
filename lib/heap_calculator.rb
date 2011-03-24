class HeapCalculator
  def parent(index)
    if index < 1
      nil
    else
      (index - 1) / 2
    end
  end

  def left_child(index)
    index * 2 + 1
  end

  def right_child(index)
    left_child(index) + 1
  end
end
