class TweettsController < ApplicationController
  before_action :set_tweett, only: [:show, :edit, :update, :destroy]

  # GET /tweetts
  # GET /tweetts.json
  def index
    @tweetts = Tweett.all.order("created_at DESC")
    @tweett = Tweett.new
  end

  # GET /tweetts/1
  # GET /tweetts/1.json
  def show
  end

  # GET /tweetts/new
  def new
    @tweett = Tweett.new
  end

  # GET /tweetts/1/edit
  def edit
  end

  # POST /tweetts
  # POST /tweetts.json
  def create
    @tweett = Tweett.new(tweett_params)

    respond_to do |format|
      if @tweett.save
        format.html { redirect_to root_path, notice: 'Tweett was successfully created.' }
        format.json { render :show, status: :created, location: @tweett }
      else
        format.html { render :new }
        format.json { render json: @tweett.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweetts/1
  # PATCH/PUT /tweetts/1.json
  def update
    respond_to do |format|
      if @tweett.update(tweett_params)
        format.html { redirect_to @tweett, notice: 'Tweett was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweett }
      else
        format.html { render :edit }
        format.json { render json: @tweett.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweetts/1
  # DELETE /tweetts/1.json
  def destroy
    @tweett.destroy
    respond_to do |format|
      format.html { redirect_to tweetts_url, notice: 'Tweett was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweett
      @tweett = Tweett.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweett_params
      params.require(:tweett).permit(:tweett)
    end
end
