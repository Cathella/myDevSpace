require 'rails_helper'

RSpec.describe "links/edit", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      user: nil,
      title: "MyString",
      describe: "MyText",
      source: "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input[name=?]", "link[user_id]"

      assert_select "input[name=?]", "link[title]"

      assert_select "textarea[name=?]", "link[describe]"

      assert_select "input[name=?]", "link[source]"
    end
  end
end
