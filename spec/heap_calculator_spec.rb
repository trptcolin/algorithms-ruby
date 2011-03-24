require 'heap_calculator'

describe HeapCalculator do
  describe "parent" do
    it "has no parent at the root" do
      subject.parent(0).should == nil
    end

    it "gets the parent from the left" do
      subject.parent(1).should == 0
    end

    it "gets the parent from the right" do
      subject.parent(2).should == 0
    end

    it "gets a higher parent from the left" do
      subject.parent(3).should == 1
    end

    it "gets a higher parent from the right" do
      subject.parent(4).should == 1
    end
  end

  describe "left_child" do
    it "for the root" do
      subject.left_child(0).should == 1
    end

    it "for a higher node" do
      subject.left_child(2).should == 5
    end
  end

  describe "right_child" do
    it "for the root" do
      subject.right_child(0).should == 2
    end

    it "for a higher node" do
      subject.right_child(2).should == 6
    end
  end
end
