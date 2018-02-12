require 'rails_helper'

RSpec.describe "agencies/show", type: :view do
  before(:each) do
    @agency = assign(:agency, Agency.create!(
      :name => "Name",
      :status => "Status",
      :state => false,
      :logo => "Logo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Logo/)
  end
end
