class CouponsController < ApplicationController

  def index
    @coupon = Coupons.all
  end



end
