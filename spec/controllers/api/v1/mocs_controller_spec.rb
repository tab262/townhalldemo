require 'rails_helper'

describe Api::V1::MocsController do
  before(:each) { request.headers['Accept'] = "application/vnd.townhall.v1" }

  describe "GET #show" do
    before(:each) do
      @moc = FactoryGirl.create :moc
      get :show, id: @moc.id, format: :json
    end

    it "returns the information about a reporter on a hash" do
      moc_response = JSON.parse(response.body, symbolize_names: true)
      expect(moc_response[:name]).to eql @moc.name
    end

    it { should respond_with 200 }
  end
end
