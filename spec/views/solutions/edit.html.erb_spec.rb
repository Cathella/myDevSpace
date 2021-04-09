require 'rails_helper'

RSpec.describe "solutions/edit", type: :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      bug: nil,
      user: nil,
      body: "MyText"
    ))
  end

  it "renders the edit solution form" do
    render

    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do

      assert_select "input[name=?]", "solution[bug_id]"

      assert_select "input[name=?]", "solution[user_id]"

      assert_select "textarea[name=?]", "solution[body]"
    end
  end
end
