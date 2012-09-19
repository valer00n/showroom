class HomeController < ApplicationController
  def index
    @users = User.all
    @showcases = Showcase.all
  end
end
