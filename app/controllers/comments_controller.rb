class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comment.create(params[:comment].permit(:name, :body))

    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comment.find(params[:id])
    @comment.destroy

    redirect_to product_path(@product)
  end
end
