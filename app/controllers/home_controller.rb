class HomeController < ApplicationController
  before_action :authenticate_customer!

  def index
    @years = AutoGlass.distinct.order(:year).pluck(:year).compact
    @models = AutoGlass.distinct.order(:year).pluck(:model).compact
    @makes = AutoGlass.distinct.order(:make).pluck(:make).compact
    @auto_glasses = AutoGlass.where(year: params[:year], make: params[:make], model: params[:model])
  end
end
  