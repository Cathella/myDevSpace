require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      user: nil,
      title: "MyString",
      describe: "MyText",
      source: "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input[name=?]", "link[user_id]"

      assert_select "input[name=?]", "link[title]"

      assert_select "textarea[name=?]", "link[describe]"

      assert_select "input[name=?]", "link[source]"
    end
  end
end
