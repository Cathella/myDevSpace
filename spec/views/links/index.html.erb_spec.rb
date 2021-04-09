require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        user: nil,
        title: "Title",
        describe: "MyText",
        source: "Source"
      ),
      Link.create!(
        user: nil,
        title: "Title",
        describe: "MyText",
        source: "Source"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Source".to_s, count: 2
  end
end
