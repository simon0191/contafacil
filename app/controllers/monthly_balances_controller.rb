class MonthlyBalancesController < ApplicationController
  before_action :set_monthly_balance, only: [:show, :edit, :update, :destroy]

  # GET /monthly_balances
  # GET /monthly_balances.json
  def index
    @monthly_balances = MonthlyBalance.all
  end

  # GET /monthly_balances/1
  # GET /monthly_balances/1.json
  def show
  end

  # GET /monthly_balances/new
  def new
    @monthly_balance = MonthlyBalance.new
  end

  # GET /monthly_balances/1/edit
  def edit
  end

  # POST /monthly_balances
  # POST /monthly_balances.json
  def create
    @monthly_balance = MonthlyBalance.new(monthly_balance_params)

    respond_to do |format|
      if @monthly_balance.save
        format.html { redirect_to @monthly_balance, notice: 'Monthly balance was successfully created.' }
        format.json { render :show, status: :created, location: @monthly_balance }
      else
        format.html { render :new }
        format.json { render json: @monthly_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthly_balances/1
  # PATCH/PUT /monthly_balances/1.json
  def update
    respond_to do |format|
      if @monthly_balance.update(monthly_balance_params)
        format.html { redirect_to @monthly_balance, notice: 'Monthly balance was successfully updated.' }
        format.json { render :show, status: :ok, location: @monthly_balance }
      else
        format.html { render :edit }
        format.json { render json: @monthly_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthly_balances/1
  # DELETE /monthly_balances/1.json
  def destroy
    @monthly_balance.destroy
    respond_to do |format|
      format.html { redirect_to monthly_balances_url, notice: 'Monthly balance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monthly_balance
      @monthly_balance = MonthlyBalance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monthly_balance_params
      params.require(:monthly_balance).permit(:initial_balance, :final_balance, :current_balance, :account_id, :month)
    end
end
