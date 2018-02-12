require 'rails_helper'

RSpec.describe "Cogs", type: :request do
  describe "GET /cogs" do
    it "works! (now write some real specs)" do
      get cogs_path
      expect(response).to have_http_status(200)
    end
  end
end
