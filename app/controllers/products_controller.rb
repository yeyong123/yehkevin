class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
		@cart = current_cart
		unless params[:t]
			@products = Product.order("id desc").paginate(page: params[:page], per_page: 24)
		else 
			@products = Product.where("list_id = ?", params[:t]).order("id desc").paginate(page: params[:page], per_page: 24)
		end
		@products.each do |product|
			product.pictures.build
		end
	end

	def search
		@cart = current_cart
		begin
			@products = Product.where("title like ? or number like ?", 
																'%'+params[:q]+'%','%'+params[:q]+'%').order("id desc").paginate(page: params[:page], per_page: 12)
			if @products.empty?
				flash[:notice] =  "没有这个产品，返回重新搜索"
				redirect_to products_path
			else
				render 'index'
			end
		end
	end
  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
		8.times{@product.pictures.build}
		@product.videos.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
