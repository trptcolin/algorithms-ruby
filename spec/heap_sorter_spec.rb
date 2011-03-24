require 'heap_sorter'

describe HeapSorter do
  it_behaves_like "a sorter"

  describe "max_heapify" do
    it "starting at topmost node" do
      elements = [0, 5, 4, 3, 2, 1]
      subject.max_heapify(elements, 6, 0)
      elements.should == [5, 3, 4, 0, 2, 1]
    end

    it "starting at an internal node" do
      elements = [6, 1, 2, 3, 4, 5]
      subject.max_heapify(elements, 6, 1)
      elements.should == [6, 4, 2, 3, 1, 5]
    end
  end

  describe "build_max_heap" do
    it "starting with a sorted list" do
      elements = [0, 1, 2, 3, 4, 5]
      subject.build_max_heap(elements)
      elements.should == [5, 4, 2, 3, 1, 0]
    end
  end
end
