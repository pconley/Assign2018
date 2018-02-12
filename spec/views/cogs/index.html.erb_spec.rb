require 'rails_helper'

RSpec.describe "cogs/index", type: :view do
  before(:each) do
    assign(:cogs, [
      Cog.create!(
        :name => "Name",
        :size => "Size",
        :color => "Color"
      ),
      Cog.create!(
        :name => "Name",
        :size => "Size",
        :color => "Color"
      )
    ])
  end

  it "renders a list of cogs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
