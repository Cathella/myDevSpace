require 'rails_helper'

RSpec.describe "upvotes/new", type: :view do
  before(:each) do
    assign(:upvote, Upvote.new(
      solution: nil,
      user: nil,
      score: 1
    ))
  end

  it "renders new upvote form" do
    render

    assert_select "form[action=?][method=?]", upvotes_path, "post" do

      assert_select "input[name=?]", "upvote[solution_id]"

      assert_select "input[name=?]", "upvote[user_id]"

      assert_select "input[name=?]", "upvote[score]"
    end
  end
end
