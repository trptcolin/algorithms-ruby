require 'heap_calculator'

class HeapSorter
  def initialize
    @heap_calculator = HeapCalculator.new
  end

  def sort(elements)
    build_max_heap(elements)
    (elements.size - 1).downto(1) do |heap_size|
      swap(elements, 0, heap_size)
      max_heapify(elements, heap_size, 0)
    end
    elements
  end

  def build_max_heap(elements)
    heap_size = elements.size
    (heap_size / 2).downto(0) do |i|
      max_heapify(elements, heap_size, i)
    end
  end

  def max_heapify(elements, heap_size, root)
    left = @heap_calculator.left_child(root)
    right = @heap_calculator.right_child(root)

    if left < heap_size && elements[left] > elements[root]
      largest = left
    else
      largest = root
    end

    if right < heap_size && elements[right] > elements[largest]
      largest = right
    end

    if largest != root
      swap(elements, root, largest)
      max_heapify(elements, heap_size, largest)
    end
  end

  def swap(elements, a, b)
    temp = elements[a]
    elements[a] = elements[b]
    elements[b] = temp
  end
  private :swap
end
