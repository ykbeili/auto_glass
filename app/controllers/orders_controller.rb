class OrdersController < ApplicationController
  before_action :find_order, only: [:show]

  def create
    @auto_glasses = AutoGlass.where(id: params[:auto_glass_ids])
    @order = Order.new()
    @order.customer = current_customer
    @auto_glasses.each do |auto_glass|
      order_item = OrderItem.new()
      order_item.order = @order
      order_item.auto_glass = auto_glass
      order_item.save()
    end
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
