class ProductsController < ApplicationController

	def index
		@products = Product.all
		if params[:search]
			@products = Product.search(params[:search])
		else
			@products = Product.all.order('product DESC')
		end
	end

	def new
		@product = Product.new
		render :new
	end

	def search
  		@products = Product.search(params[:search])
	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			@products = Product.all
			render :index
		else
			render :show
		end
	end

	def show
		id = params[:id]
		@product = Product.find(id)
		if @product.nil?
			render 'no_product_found'
		else
			@entries = @product.entries
			render :show
		end	
	end

	private

	def product_params
		params.require(:product).permit(:product, :description, :price, :ranking)
	end
end

