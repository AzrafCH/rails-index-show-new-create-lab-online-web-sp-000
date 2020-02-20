class CouponsController < ApplicationController

  def index
    @coupon = Coupons.all
  end

  def new
  end

  def show 
    @coupon = Coupons.find_by(params[:id])
  end 

  def create
    @coupon = Coupons.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupons_path(@coupon)
  end



end
