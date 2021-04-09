require 'rails_helper'

RSpec.describe "upvotes/show", type: :view do
  before(:each) do
    @upvote = assign(:upvote, Upvote.create!(
      solution: nil,
      user: nil,
      score: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
