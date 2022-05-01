class HomesController < ApplicationController
  def index
    User.find_by(name: current_user)
  end
end
