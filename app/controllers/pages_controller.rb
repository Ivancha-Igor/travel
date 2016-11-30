class PagesController < ApplicationController
  def home
    @placements = Placement.all
  end
end
