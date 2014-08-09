class AccountRecordsController < ApplicationController
  before_action :set_account_record, only: [:show, :edit, :update, :destroy]

  # GET /account_records
  # GET /account_records.json
  def index
    @account_records = AccountRecord.all
  end

  # GET /account_records/1
  # GET /account_records/1.json
  def show
  end

  # GET /account_records/new
  def new
    @account_record = AccountRecord.new
  end

  # GET /account_records/1/edit
  def edit
  end

  # POST /account_records
  # POST /account_records.json
  def create
    @account_record = AccountRecord.new(account_record_params)

    respond_to do |format|
      if @account_record.save
        format.html { redirect_to @account_record, notice: 'Account record was successfully created.' }
        format.json { render :show, status: :created, location: @account_record }
      else
        format.html { render :new }
        format.json { render json: @account_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_records/1
  # PATCH/PUT /account_records/1.json
  def update
    respond_to do |format|
      if @account_record.update(account_record_params)
        format.html { redirect_to @account_record, notice: 'Account record was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_record }
      else
        format.html { render :edit }
        format.json { render json: @account_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_records/1
  # DELETE /account_records/1.json
  def destroy
    @account_record.destroy
    respond_to do |format|
      format.html { redirect_to account_records_url, notice: 'Account record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_record
      @account_record = AccountRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_record_params
      params.require(:account_record).permit(:account_id, :amount, :date, :description, :record_type)
    end
end
