require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      user: nil,
      solution: nil,
      body: "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[solution_id]"

      assert_select "textarea[name=?]", "comment[body]"
    end
  end
end
