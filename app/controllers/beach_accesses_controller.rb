class BeachAccessesController < ApplicationController
  before_action :set_beach_access, only: [:show, :edit, :update, :destroy]

  def index
    @beach_accesses = BeachAccess.all
  end

  def new
    @ba = BeachAccess.new
  end

  def edit
  end

  def show
  end

  def create
    @ba = BeachAccess.new(beach_access_params)

    respond_to do |format|
      if @ba.save
        format.html { redirect_to @ba, notice: 'Beach access was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  end

  def destroy
  end

  def homepage
  end

  private

  def set_beach_access
    @ba = BeachAccess.find(params[:id])
  end

  def beach_access_params
    params.require(:beach_access).permit(:image, :location, :unmetered, :metered, :shower, :bench, :bench_number)
  end
end
