require 'rails_helper'

RSpec.describe "cogs/new", type: :view do
  before(:each) do
    assign(:cog, Cog.new(
      :name => "MyString",
      :size => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new cog form" do
    render

    assert_select "form[action=?][method=?]", cogs_path, "post" do

      assert_select "input[name=?]", "cog[name]"

      assert_select "input[name=?]", "cog[size]"

      assert_select "input[name=?]", "cog[color]"
    end
  end
end
