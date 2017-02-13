class Api::V1::MocsController < ApplicationController
  respond_to :json

  def show
    respond_with Moc.find(params[:id])
  end

end
