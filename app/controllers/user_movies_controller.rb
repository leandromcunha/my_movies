class UserMoviesController < ApplicationController
  def index
    @classifications = current_user.classifications
  end
end
