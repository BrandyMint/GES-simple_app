class WelcomeController < ApplicationController

  before_filter RubyCAS::GatewayFilter, :only => :index
  before_filter RubyCAS::Filter, :except => :index

  def index
  end

  def logout
    RubyCAS::Filter.logout(self)
  end
end
