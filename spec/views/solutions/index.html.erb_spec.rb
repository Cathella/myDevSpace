require 'rails_helper'

RSpec.describe "solutions/index", type: :view do
  before(:each) do
    assign(:solutions, [
      Solution.create!(
        bug: nil,
        user: nil,
        body: "MyText"
      ),
      Solution.create!(
        bug: nil,
        user: nil,
        body: "MyText"
      )
    ])
  end

  it "renders a list of solutions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
