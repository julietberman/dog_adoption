class ResourcesController < ApplicationController
  def index
    @rescues = Rescue.all
  end
end
