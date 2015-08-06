class BeachAccessesController < ApplicationController
  before_action :set_beach_access, only: [:show, :edit, :update, :destroy]

  def index
    @beach_accesses = BeachAccess.all.order(created_at: :asc).paginate(page: params[:page], per_page: 9)
  end

  def new
    @ba = current_admin.beach_accesses.build
  end

  def edit
  end

  def show
        @ba = BeachAccess.find(params[:id])
  end

  def create
    @ba = current_admin.beach_accesses.build(beach_access_params)

    respond_to do |format|
      if @ba.save
        format.html { redirect_to @ba, notice: 'Beach access was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @ba.update(beach_access_params)
        format.html { redirect_to @ba, notice: 'Beach access was successfully updated.' }
        format.json { render :show, status: :ok, location: @ba }
      else
        format.html { render :edit }
        format.json { render json: @ba.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ba.destroy
    respond_to do |format|
      format.html { redirect_to beach_accesses_url, notice: 'Beach access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def homepage
  end

  def about
  end

  def contact
  end
  

  private

  def set_beach_access
    @ba = BeachAccess.find(params[:id])
  end

  def beach_access_params
    params.require(:beach_access).permit(:image, :location, :unmetered, :metered, :shower, :bench, :bench_number)
  end
end
