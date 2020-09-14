class UsersController < ApplicationController

  def create
  end

  
  def show
    @user = current_user
    @sending_destination = SendingDestination.where(user_id: current_user.id)

    # 現在出品中の商品
    @saling_items = @user.saling_items
    # 売却済みの商品
    @sold_items = @user.sold_items
    # 購入した商品
    @buyer_items = @user.buyed_items
  end  

  def amount
    @user = current_user
    @sold_items = @user.sold_items
  end


  def point
    @user = current_user
    @sold_items = @user.sold_items
  end
  
end
