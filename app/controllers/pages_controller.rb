class PagesController < ApplicationController

  def show
    @dsc = Discount.find_by_position(1)
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])
    render params[:slug] if controller_view_exists?(params[:slug])
  end

  def order
  end
  
  private

  def view_exists?(view)
    File.exists? Rails.root.join("app", "views", view)
  end

  def controller_view_exists?(name)
    view_exists?("#{params[:controller]}/#{name}.html.erb")
  end

  def layout_exists?(name)
    view_exists?("layouts/#{name}.html.erb")
  end
end
