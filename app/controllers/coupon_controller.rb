class CouponController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find_by(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupons_path(@coupon)
  end

end
