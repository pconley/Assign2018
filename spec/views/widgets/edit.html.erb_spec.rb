require 'rails_helper'

RSpec.describe "widgets/edit", type: :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :name => "MyString",
      :size => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input[name=?]", "widget[name]"

      assert_select "input[name=?]", "widget[size]"

      assert_select "input[name=?]", "widget[color]"
    end
  end
end
