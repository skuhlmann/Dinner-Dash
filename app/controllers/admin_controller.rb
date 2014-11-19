class AdminController < ApplicationController

  def index
    @products = Item.all[0..4]
    render :dashboard, layout: "admin"
  end

  def menu
    render :menu_manager
  end
end
