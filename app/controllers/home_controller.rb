class HomeController < ApplicationController
  def index
    email = 'manish.m@directi.com'
    if user = User.where(:email => email).first
      session[:user] = user.email
      session[:user_id] = user.id
    end
  end

end
