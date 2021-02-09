class PagesController < ApplicationController
  
  def welcome
    @gossips = Gossip.all
  end
end

