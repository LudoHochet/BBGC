class LinksController < ApplicationController

  def create
    @link = Link.new(links_params)
  end

  private

  def links_params
    params.require(:link).permit(:text, :label, :link)
  end
end
