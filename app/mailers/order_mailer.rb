class OrderMailer < ActionMailer::Base
  default from: "noreply@me31.ru"

  def order_mail(order)
  	@order = order
    mail :to => AdminUser.all.map(&:email),
         :subject => "Vizov"
  end
end
