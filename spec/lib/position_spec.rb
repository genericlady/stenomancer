require "spec_helper"

RSpec.describe Position do
  let(:position) { Position.new }

  context "A position is meant to maintain an x, y coordinate that are to be 
    used with cartesian coordinates." do
    it "Has attributes for x, y and z" do
      expect(position).to have_attributes(x: 0, y: 0, z: 1)
    end
  end
end
