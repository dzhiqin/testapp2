class WelcomeController < ApplicationController
  def index
    flash[:notice]="welcome my lord"
    @user = User.first
  end
end
