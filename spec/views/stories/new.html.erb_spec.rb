require 'rails_helper'

RSpec.describe "stories/new", type: :view do
  before(:each) do
    assign(:story, Story.new(
      address: "MyString",
      body: "MyText"
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input[name=?]", "story[address]"

      assert_select "textarea[name=?]", "story[body]"
    end
  end
end
