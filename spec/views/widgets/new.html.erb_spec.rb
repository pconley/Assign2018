require 'rails_helper'

RSpec.describe "widgets/new", type: :view do
  before(:each) do
    assign(:widget, Widget.new(
      :name => "MyString",
      :size => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do

      assert_select "input[name=?]", "widget[name]"

      assert_select "input[name=?]", "widget[size]"

      assert_select "input[name=?]", "widget[color]"
    end
  end
end
