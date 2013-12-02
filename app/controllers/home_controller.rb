class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def upload
    @users = User.all
  end
end
