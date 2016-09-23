class WelcomeController < ApplicationController
  def index
    @stored_content = StoredContent.new
  end
end
