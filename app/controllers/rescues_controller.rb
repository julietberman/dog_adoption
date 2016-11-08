class RescuesController < ApplicationController
  def index
    @rescues = Rescue.all
  end
end
