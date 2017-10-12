class GreenhousesController < ApplicationController
  before_action :set_greenhouse, only: [:show, :edit, :update, :destroy]

  # GET /greenhouses
  # GET /greenhouses.json
  def index
  	@action_entries = ActionEntry.all
    @greenhouse = Greenhouse.first
  end

  

end
