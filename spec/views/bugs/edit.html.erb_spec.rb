require 'rails_helper'

RSpec.describe "bugs/edit", type: :view do
  before(:each) do
    @bug = assign(:bug, Bug.create!(
      user: nil,
      title: "MyString",
      body: "MyText"
    ))
  end

  it "renders the edit bug form" do
    render

    assert_select "form[action=?][method=?]", bug_path(@bug), "post" do

      assert_select "input[name=?]", "bug[user_id]"

      assert_select "input[name=?]", "bug[title]"

      assert_select "textarea[name=?]", "bug[body]"
    end
  end
end
