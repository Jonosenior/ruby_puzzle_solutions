require 'caesar_cypher'

describe "#caesar_cypher" do
  context "given single lowercase letter" do
    it "should correctly shift letter" do
      expect(caesar_cypher("a", 15)).to eql("p")
    end
  end

  context "given single uppercase letter" do
    it "correctly encodes the input" do
      expect(caesar_cypher("P", 5)).to eql("U")
    end
  end

  context "given only numbers and punctuation" do
    it "returns the input unchanged" do
      expect(caesar_cypher("!?.,321980@}]#", 5)).to eql("!?.,321980@}]#")
    end
  end

  it "correctly loops letters at the end of the alphabet" do
    expect(caesar_cypher("WxYz", 5)).to eql("BcDe")
  end

  context "given multi-word sentence with uppercase, lowercase, punctuation and alpabet looping" do
    it "returns correctly transformed sentence" do
      expect(caesar_cypher("What a string!",5)).to eql("Bmfy f xywnsl!")
    end
  end

end
