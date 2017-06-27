require 'spec_helper'

RSpec.describe Actor do
  let(:actor) { Actor.new }

  context "An actor has expected behavior to work with Stenomancer callback." do
    it "responds to draw()" do
      expect(actor).to respond_to(:draw)
    end
  end

  it "by default it's role attribute is 'player'" do
    expect(actor).to have_attributes(role: "player")
  end

end
