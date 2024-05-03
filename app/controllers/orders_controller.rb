class OrdersController < ApplicationController
  before_action :find_order, only: [:show]

  def create
    @auto_glasses = AutoGlass.where(id: params[:auto_glass_ids])
    @order = Order.new()
    @order.customer = current_customer
    @order.save!
    redirect_to order_path(@order)
  end

  def show
  end

  private
  
  def find_order
    @order = Order.find(params[:id])
  end
end
