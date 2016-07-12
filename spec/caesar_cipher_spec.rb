require 'caesar_cipher'

describe '#caesar_cipher' do

  it "preserves capitalization" do
    expect(caesar_cipher("HeLlO", 10)).to eql("RoVvY")
  end

  it "accommodates a negative shift value" do
    expect(caesar_cipher("Hello, world!", -5)).to eql("Czggj, rjmgy!")
  end

  it "accommodates a shift values above 26" do
    expect(caesar_cipher("Hello, world!", 30)).to eql("Lipps, asvph!")
  end

  it "ignores special characters" do
    expect(caesar_cipher("#$%^&@*!}!", 25)).to eql("#$%^&@*!}!")
  end

  context "given an empty string" do
    it "returns an empty string" do
      expect(caesar_cipher("", 17)).to eql('')
    end
  end

  context "given a shift of zero" do
    it "returns the original string" do
      expect(caesar_cipher("Hello, world!", 0)).to eql("Hello, world!")
    end
  end

  context "given 'What a string!' and a shift of 5" do
    it "returns 'Bmfy f xywnsl!'" do
      expect(caesar_cipher("What a string!", 5)).to eql('Bmfy f xywnsl!')
    end
  end

end
