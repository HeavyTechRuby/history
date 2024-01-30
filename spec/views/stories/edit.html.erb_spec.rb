require 'rails_helper'

RSpec.describe "stories/edit", type: :view do
  let(:story) {
    Story.create!(
      address: "MyString",
      body: "MyText"
    )
  }

  before(:each) do
    assign(:story, story)
  end

  it "renders the edit story form" do
    render

    assert_select "form[action=?][method=?]", story_path(story), "post" do

      assert_select "input[name=?]", "story[address]"

      assert_select "textarea[name=?]", "story[body]"
    end
  end
end
