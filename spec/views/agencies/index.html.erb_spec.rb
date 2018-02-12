require 'rails_helper'

RSpec.describe "agencies/index", type: :view do
  before(:each) do
    assign(:agencies, [
      Agency.create!(
        :name => "Name",
        :status => "Status",
        :state => false,
        :logo => "Logo"
      ),
      Agency.create!(
        :name => "Name",
        :status => "Status",
        :state => false,
        :logo => "Logo"
      )
    ])
  end

  it "renders a list of agencies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
  end
end
