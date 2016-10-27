class SessionsController < ApplicationController
  before_action :logged_in, except: :new

  def new
    render "new"
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to "/show"
    else
      redirect_to "/new"
    end
  end

  def show
    render "show"
  end


end
