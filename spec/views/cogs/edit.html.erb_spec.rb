require 'rails_helper'

RSpec.describe "cogs/edit", type: :view do
  before(:each) do
    @cog = assign(:cog, Cog.create!(
      :name => "MyString",
      :size => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit cog form" do
    render

    assert_select "form[action=?][method=?]", cog_path(@cog), "post" do

      assert_select "input[name=?]", "cog[name]"

      assert_select "input[name=?]", "cog[size]"

      assert_select "input[name=?]", "cog[color]"
    end
  end
end
