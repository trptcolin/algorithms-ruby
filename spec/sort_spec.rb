shared_examples_for "a sorter" do
  it "for an empty list" do
    subject.sort([]).should == []
  end

  it "for a one-element list" do
    subject.sort([1]).should == [1]
  end

  it "for a reversed two-element list" do
    subject.sort([5, 3]).should == [3, 5]
  end

  it "for a short list" do
    subject.sort([1, 5, 3]).should == [1, 3, 5]
  end

  it "for a medium-sized list of strings" do
    subject.sort(['f', 'e', 'd', 'c', 'b', 'a']).should ==
      ['a', 'b', 'c', 'd', 'e', 'f']
  end
end
