require 'rails_helper'

RSpec.describe "cogs/show", type: :view do
  before(:each) do
    @cog = assign(:cog, Cog.create!(
      :name => "Name",
      :size => "Size",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Color/)
  end
end
