class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to friends_path
    else
      redirect_to new_user_session_path
      #render('index')
    end
  end
end
