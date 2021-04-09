require 'rails_helper'

RSpec.describe "bugs/new", type: :view do
  before(:each) do
    assign(:bug, Bug.new(
      user: nil,
      title: "MyString",
      body: "MyText"
    ))
  end

  it "renders new bug form" do
    render

    assert_select "form[action=?][method=?]", bugs_path, "post" do

      assert_select "input[name=?]", "bug[user_id]"

      assert_select "input[name=?]", "bug[title]"

      assert_select "textarea[name=?]", "bug[body]"
    end
  end
end
