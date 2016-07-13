class BillingCyclesController < ApplicationController
  before_action :set_billing_cycle, only: [:show, :edit, :update, :destroy]

  # GET /billing_cycles
  # GET /billing_cycles.json
  def index
    @billing_cycles = BillingCycle.all
  end

  # GET /billing_cycles/1
  # GET /billing_cycles/1.json
  def show
  end

  # GET /billing_cycles/new
  def new
    @billing_cycle = BillingCycle.new
  end

  # GET /billing_cycles/1/edit
  def edit
  end

  # POST /billing_cycles
  # POST /billing_cycles.json
  def create
    @billing_cycle = BillingCycle.new(billing_cycle_params)

    respond_to do |format|
      if @billing_cycle.save
        format.html { redirect_to @billing_cycle, notice: 'Billing cycle was successfully created.' }
        format.json { render :show, status: :created, location: @billing_cycle }
      else
        format.html { render :new }
        format.json { render json: @billing_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_cycles/1
  # PATCH/PUT /billing_cycles/1.json
  def update
    respond_to do |format|
      if @billing_cycle.update(billing_cycle_params)
        format.html { redirect_to @billing_cycle, notice: 'Billing cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing_cycle }
      else
        format.html { render :edit }
        format.json { render json: @billing_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_cycles/1
  # DELETE /billing_cycles/1.json
  def destroy
    @billing_cycle.destroy
    respond_to do |format|
      format.html { redirect_to billing_cycles_url, notice: 'Billing cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_cycle
      @billing_cycle = BillingCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_cycle_params
      params.require(:billing_cycle).permit(:user_id, :plan_id, :date_issued, :amount_issued)
    end
end
