require 'rails_helper'

RSpec.describe "bugs/index", type: :view do
  before(:each) do
    assign(:bugs, [
      Bug.create!(
        user: nil,
        title: "Title",
        body: "MyText"
      ),
      Bug.create!(
        user: nil,
        title: "Title",
        body: "MyText"
      )
    ])
  end

  it "renders a list of bugs" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
