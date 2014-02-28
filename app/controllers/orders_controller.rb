# encoding: utf-8
class OrdersController < ApplicationController
  def create
    @order = Order.create(params[:order])
    if @order.save
      OrderMailer.order_mail(@order).deliver
      flash[:success] = "Спасибо! Ваш заказ оформлен!"
      redirect_to root_url
    else
      render 'pages/order'
    end
  end
end
