require 'rails_helper'

RSpec.describe "solutions/new", type: :view do
  before(:each) do
    assign(:solution, Solution.new(
      bug: nil,
      user: nil,
      body: "MyText"
    ))
  end

  it "renders new solution form" do
    render

    assert_select "form[action=?][method=?]", solutions_path, "post" do

      assert_select "input[name=?]", "solution[bug_id]"

      assert_select "input[name=?]", "solution[user_id]"

      assert_select "textarea[name=?]", "solution[body]"
    end
  end
end
