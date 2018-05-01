class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
    render :index
  end

  @order_items = OrderItem.all
  @order_item = OrderItem.new

  def new
    @order_item = OrderItem.new
    render :new
  end

  def update
    @item = OrderItem.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "Order \##{@item.id} was successfully updated!"
      redirect_to cart_path
    else
      render :edit
    end
  end

  def edit
    @order_items = OrderItem.all
    @item = OrderItem.find(params[:id])
    render :edit
  end
  # def edit
  #   @user = User.find(params[:id])
  # end
  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
