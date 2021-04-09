require 'rails_helper'

RSpec.describe "upvotes/edit", type: :view do
  before(:each) do
    @upvote = assign(:upvote, Upvote.create!(
      solution: nil,
      user: nil,
      score: 1
    ))
  end

  it "renders the edit upvote form" do
    render

    assert_select "form[action=?][method=?]", upvote_path(@upvote), "post" do

      assert_select "input[name=?]", "upvote[solution_id]"

      assert_select "input[name=?]", "upvote[user_id]"

      assert_select "input[name=?]", "upvote[score]"
    end
  end
end
