require 'rails_helper'

RSpec.describe "agencies/new", type: :view do
  before(:each) do
    assign(:agency, Agency.new(
      :name => "MyString",
      :status => "MyString",
      :state => false,
      :logo => "MyString"
    ))
  end

  it "renders new agency form" do
    render

    assert_select "form[action=?][method=?]", agencies_path, "post" do

      assert_select "input[name=?]", "agency[name]"

      assert_select "input[name=?]", "agency[status]"

      assert_select "input[name=?]", "agency[state]"

      assert_select "input[name=?]", "agency[logo]"
    end
  end
end
