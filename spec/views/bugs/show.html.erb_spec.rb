require 'rails_helper'

RSpec.describe "bugs/show", type: :view do
  before(:each) do
    @bug = assign(:bug, Bug.create!(
      user: nil,
      title: "Title",
      body: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
