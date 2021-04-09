require 'rails_helper'

RSpec.describe "upvotes/index", type: :view do
  before(:each) do
    assign(:upvotes, [
      Upvote.create!(
        solution: nil,
        user: nil,
        score: 2
      ),
      Upvote.create!(
        solution: nil,
        user: nil,
        score: 2
      )
    ])
  end

  it "renders a list of upvotes" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
