class AppController < ApplicationController

  before_filter RubyCAS::Filter

  def start
  end
end
