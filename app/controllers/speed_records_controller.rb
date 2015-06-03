class SpeedRecordsController < ApplicationController
  before_action :set_speed_record, only: [:show, :edit, :update, :destroy]

  # GET /speed_records
  # GET /speed_records.json
  def index
    @speed_records = SpeedRecord.all
  end

  # GET /speed_records/1
  # GET /speed_records/1.json
  def show
  end

  # GET /speed_records/new
  def new
    @speed_record = SpeedRecord.new
  end

  # GET /speed_records/1/edit
  def edit
  end

  # POST /speed_records
  # POST /speed_records.json
  def create
    @speed_record = SpeedRecord.new(speed_record_params)

    respond_to do |format|
      if @speed_record.save
        format.html { redirect_to @speed_record, notice: 'Speed record was successfully created.' }
        format.json { render :show, status: :created, location: @speed_record }
      else
        format.html { render :new }
        format.json { render json: @speed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speed_records/1
  # PATCH/PUT /speed_records/1.json
  def update
    respond_to do |format|
      if @speed_record.update(speed_record_params)
        format.html { redirect_to @speed_record, notice: 'Speed record was successfully updated.' }
        format.json { render :show, status: :ok, location: @speed_record }
      else
        format.html { render :edit }
        format.json { render json: @speed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speed_records/1
  # DELETE /speed_records/1.json
  def destroy
    @speed_record.destroy
    respond_to do |format|
      format.html { redirect_to speed_records_url, notice: 'Speed record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speed_record
      @speed_record = SpeedRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speed_record_params
      params.require(:speed_record).permit(:ip_address, :download_speed, :upload_speed, :latency, :jitter, :hostname)
    end
end
