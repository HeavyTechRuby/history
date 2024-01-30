require 'rails_helper'

RSpec.describe "stories/show", type: :view do
  before(:each) do
    assign(:story, Story.create!(
      address: "Address",
      body: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
  end
end
