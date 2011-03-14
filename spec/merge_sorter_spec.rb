require 'merge_sorter'

describe MergeSorter do
  it_behaves_like "a sorter"

  describe "merge" do
    it "empty lists" do
      subject.merge([], []).should == []
    end

    it "one-element lists in reverse order" do
      subject.merge([2], [1]).should == [1, 2]
    end

    it "larger lists" do
      subject.merge([1, 3, 5, 7], [2, 4, 6, 8]).should == [1, 2, 3, 4, 5, 6, 7, 8]
    end
  end
end
