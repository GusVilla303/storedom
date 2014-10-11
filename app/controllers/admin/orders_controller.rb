module Admin
  class OrdersController < ApplicationController
    before_action :admin_verify

    def index
      @orders = Order.all
    end

    def show
      @order = Order.find(params[:id])
    end

    private

    def admin_verify
      if params[:admin] != 'true'
        redirect_to root_path
      end
    end
  end
end
