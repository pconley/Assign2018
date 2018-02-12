require 'rails_helper'

RSpec.describe "agencies/edit", type: :view do
  before(:each) do
    @agency = assign(:agency, Agency.create!(
      :name => "MyString",
      :status => "MyString",
      :state => false,
      :logo => "MyString"
    ))
  end

  it "renders the edit agency form" do
    render

    assert_select "form[action=?][method=?]", agency_path(@agency), "post" do

      assert_select "input[name=?]", "agency[name]"

      assert_select "input[name=?]", "agency[status]"

      assert_select "input[name=?]", "agency[state]"

      assert_select "input[name=?]", "agency[logo]"
    end
  end
end
