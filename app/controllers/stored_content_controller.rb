class StoredContentController < ApplicationController
  def create
    @stored_content = StoredContent.new(url: params[:url])
    @stored_content.process_and_save
    render json: @stored_content
  end

  def list
    @stored_content = StoredContent.all
    render json: @stored_content
  end
end
