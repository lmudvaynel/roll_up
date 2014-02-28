class OrdersController < ApplicationController

  def create
      @order = Order.create(params[:order])
      if @order.save
          OrderMailer.order_mail(@order).deliver
        redirect_to root_url
      else
        render 'pages/order'
      end
    end
end
