class Api::V1::MocsController < ApplicationController
  respond_to :json

  def show
    respond_with Moc.find(params[:id])
  end

  def index
    if params[:moc_name].present?
      @moc = Moc.find_by(name: params[:moc_name]);
      respond_with @moc.to_json(:include => :events)
    else
      respond_with Moc.all
    end

  end

end
