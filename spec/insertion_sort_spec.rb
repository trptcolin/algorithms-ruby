require 'insertion_sort'

describe InsertionSorter do
  it_behaves_like "a sort"

  describe "insert_element_into_sorted_left_side" do
    it "for a short list with no shifts" do
      elements = [1]
      subject.insert_element_into_sorted_left_side(elements, 2, 0)
      elements.should == [1, 2]
    end

    it "for a short list with one shift" do
      elements = [2]
      subject.insert_element_into_sorted_left_side(elements, 1, 0)
      elements.should == [1, 2]
    end

    it "for a list with many shifts" do
      elements = ['b', 'c', 'd', 'e']
      subject.insert_element_into_sorted_left_side(elements, 'a', 3)
    end
  end
end
