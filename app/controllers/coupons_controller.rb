class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  def new
  end
  def create
    @coupon = Coupon.create(coupon_code: coupon_params[:coupon_code], store: coupon_params[:store])
    redirect_to coupon_path(@coupon)
  end
  def show
    @coupon = Coupon.find(params[:id])
  end
  private
  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
