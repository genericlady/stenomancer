require "spec_helper"

RSpec.describe Abilities::Drawable do
  let(:klass) { Class.new { extend Abilities::Drawable } }

  it "Is a module to be used as a namespace for all contractual behavior." do
    expect(Abilities::Drawable.class).to eq(Module)
  end

  context "Will raise an error for specified behavior," do
    it "raises a NoMethod error when draw() is invoked." do
      expect {klass.draw}.to raise_error(
        NoMethodError, "You must implement an instance method of draw()")
    end
  end

end
