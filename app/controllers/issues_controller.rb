class IssuesController < ApplicationController
  before_action :set_product

  # GET /issues
  # GET /issues.json
  def index
    @issues = @product.issues
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
    @issue = @product.issues.find(params[:id])
  end

  # GET /issues/new
  def new
    @issue = @product.issues.build
    respond_to do |format|
      format.html
      format.json { render json: @issue }
    end
  end

  # GET /issues/1/edit
  def edit
    @issue = @product.issues.find(params[:id])
  end

  # POST /issues
  # POST /issues.json
  def create
    create_params = issue_params.merge({ customer_id: current_customer.id })
    @issue = @product.issues.create(create_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to [@issue.product, @issue], notice: 'Issue was successfully created.' }
        format.json { render json: @issue, status: :created, location: @issue }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    @issue = @product.issues.find(params[:id])
    respond_to do |format|
      update_params = issue_params.merge({ customer_id: current_customer.id })
      if @issue.update_attributes(update_params)
        format.html { redirect_to [@issue.product, @issue], notice: 'Issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue = @product.issues.find(params[:id])
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to product_issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:product_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def issue_params
    params.require(:issue).permit(:status, :comment, :severity)
  end
end
