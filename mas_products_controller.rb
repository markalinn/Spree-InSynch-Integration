module Spree
  class MasProductsController < BaseController
    respond_to :json
   
    def show
      @mas_product = MasProduct.find_by_ItemNumber(params[:id])
      render :json => @mas_product.to_json
    end
  end
end
