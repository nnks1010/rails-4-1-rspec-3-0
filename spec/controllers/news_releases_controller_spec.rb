require 'rails_helper'

describe NewsReleasesController, focus: true do
  describe "GET #new" do
    # ログイン要求をすること
    it "requires login" do
      get :new
      expect(response).to require_login
    end
  end

  describe "POST #create" do
    # ログインを要求すること
    it "requires login" do
      post :create, news_release: attributes_for(:news_release)
      expect(response).to require_login
    end
  end
end
