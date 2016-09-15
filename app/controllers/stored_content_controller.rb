class StoredContentController < ApplicationController
  def store
  end

  def list
    @stored_content = StoredContent.all
    render json: @stored_content
  end
end
