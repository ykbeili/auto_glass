class HomeController < ApplicationController
    # before_action :authenticate_customer!
    def index
      @years = AutoGlass.pluck(:year).compact
      @models = AutoGlass.pluck(:model).compact
      @makes = AutoGlass.pluck(:make).compact
      @auto_glasses = AutoGlass.where(year: params[:year], make: params[:make], model: params[:model])
      puts(@auto_glasses)
      puts("auto_glasses")
    end
end
  