class WelcomeController < ApplicationController
  def index
    flash[:notice]="welcome my lord"
  end
end
