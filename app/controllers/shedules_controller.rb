class ShedulesController < ApplicationController
  before_action :set_shedule, only: [:show, :edit, :update, :destroy]

  # GET /shedules
  # GET /shedules.json
  def index
    if user_signed_in?
      @schedule = Shedule.find_by(user_id: current_user.id)
      @disciplines = @schedule.disciplines
    else
      redirect_to '/'
    end
  end

  # GET /shedules/1
  # GET /shedules/1.json
  def show
    if user_signed_in?
      @schedule = Shedule.where(users_id: current_user.id)
      @disciplines = @schedule.disciplines
    else
      redirect_to '/'
    end

  end

  # GET /shedules/new
  def new
    @shedule = Shedule.new
  end

  # GET /shedules/1/edit
  def edit
  end

  # POST /shedules
  # POST /shedules.json
  def create
    @shedule = Shedule.new(shedule_params)

    respond_to do |format|
      if @shedule.save
        format.html { redirect_to @shedule, notice: 'Shedule was successfully created.' }
        format.json { render :show, status: :created, location: @shedule }
      else
        format.html { render :new }
        format.json { render json: @shedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shedules/1
  # PATCH/PUT /shedules/1.json
  def update
    respond_to do |format|
      if @shedule.update(shedule_params)
        format.html { redirect_to @shedule, notice: 'Shedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @shedule }
      else
        format.html { render :edit }
        format.json { render json: @shedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shedules/1
  # DELETE /shedules/1.json
  def destroy
    @shedule.destroy
    respond_to do |format|
      format.html { redirect_to shedules_url, notice: 'Shedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shedule
      @shedule = Shedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shedule_params
      params.require(:shedule).permit(:day, :pair_number, :type_of_lesson, :type_of_discipline)
    end
end
