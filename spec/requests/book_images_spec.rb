require 'rails_helper'

RSpec.describe "BookImages", type: :request do
  describe "GET /book_images" do
    it "works! (now write some real specs)" do
      get book_images_path
      expect(response).to have_http_status(200)
    end
  end
end
