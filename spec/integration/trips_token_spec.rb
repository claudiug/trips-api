require 'spec_helper'
describe "Trip token" do
    it "should return 200 data with valid token" do
      create_token = ApiKey.create!
      get 'trips', auth_token: create_token.auth_token.to_s
      response.should be_success
    end

    it "should return 401 data with invalid token" do
      get 'trips', auth_token: 'bad'
      response.code.should eq '401'
    end
  end
