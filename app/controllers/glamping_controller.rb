class GlampingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:destroy_glamping]

  def index; end

  def list_glampings
    @glampings_name = Glamping.pluck(:name, :glamping_type, :image)
    render json: @glampings_name
  end

  def list_glampings_details
    @item = Glamping.find_by(id: params[:id])
    render json: @item
  end

  def destroy_glamping
    @item = Glamping.find_by(id: params[:id])
    @item.destroy

    # this line will send a 204 status code, which tells the browser that
    # the request was successful but there’s no content to return
    head :no_content
  end
end
