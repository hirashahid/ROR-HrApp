class HomeController < ApplicationController
  def index
    @title = 'Hello World'
    @subtitle = 'I am learning rails'
  end 
end