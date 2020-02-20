class CouponsController < ApplicationController

  def index
    @coupon = Coupons.all
  end

  def new

  end

  def create
    @coupon = Coupons.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupons_path(@coupon)
  end



end
