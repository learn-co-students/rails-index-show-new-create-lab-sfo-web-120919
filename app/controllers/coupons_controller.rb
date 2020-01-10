class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def  new

    end

    def create
        coupon = Coupon.create(coupon_code:params[:coupon][:coupon_code],store:params[:coupon][:store])
        redirect_to action: "show", id: coupon.id
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def update
        @coupon = Coupon.find(params[:id])
        byebug
        @coupon.update(coupon_code:params[:coupon_code],store:params[:store])
        redirect_to action: "index"
    end

    def destroy
        @coupon = Coupon.find(params[:id])
        @coupon.destroy
        redirect_to action: "index"
    end

    def edit
        @coupon = Coupon.find(params[:id])
    end

end