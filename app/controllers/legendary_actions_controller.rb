class LegendaryActionsController < ApplicationController
  before_action :set_legendary_action, only: [:show, :edit, :update, :destroy]

  # GET /legendary_actions
  # GET /legendary_actions.json
  def index
    @legendary_actions = LegendaryAction.all
  end

  # GET /legendary_actions/1
  # GET /legendary_actions/1.json
  def show
  end

  # GET /legendary_actions/new
  def new
    @legendary_action = LegendaryAction.new
  end

  # GET /legendary_actions/1/edit
  def edit
  end

  # POST /legendary_actions
  # POST /legendary_actions.json
  def create
    @legendary_action = LegendaryAction.new(legendary_action_params)

    respond_to do |format|
      if @legendary_action.save
        format.html { redirect_to @legendary_action, notice: 'Legendary action was successfully created.' }
        format.json { render :show, status: :created, location: @legendary_action }
      else
        format.html { render :new }
        format.json { render json: @legendary_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legendary_actions/1
  # PATCH/PUT /legendary_actions/1.json
  def update
    respond_to do |format|
      if @legendary_action.update(legendary_action_params)
        format.html { redirect_to @legendary_action, notice: 'Legendary action was successfully updated.' }
        format.json { render :show, status: :ok, location: @legendary_action }
      else
        format.html { render :edit }
        format.json { render json: @legendary_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legendary_actions/1
  # DELETE /legendary_actions/1.json
  def destroy
    @legendary_action.destroy
    respond_to do |format|
      format.html { redirect_to legendary_actions_url, notice: 'Legendary action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legendary_action
      @legendary_action = LegendaryAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legendary_action_params
      params.require(:legendary_action).permit(:name, :description, :attack_bonus, :damage_dice)
    end
end
