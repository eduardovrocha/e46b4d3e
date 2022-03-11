class Api::V1::Dashboard::ResourceActionsController < Api::V1::ApplicationController
  before_action :set_resource_action, only: %i[ show edit update destroy ]

  # GET /resource_actions or /resource_actions.json
  def index
    @resource_actions = ResourceAction.all
  end

  # GET /resource_actions/1 or /resource_actions/1.json
  def show
  end

  # GET /resource_actions/new
  def new
    @resource_action = ResourceAction.new
  end

  # GET /resource_actions/1/edit
  def edit
  end

  # POST /resource_actions or /resource_actions.json
  def create
    @resource_action = ResourceAction.new(resource_action_params)

    respond_to do |format|
      if @resource_action.save
        format.html { redirect_to resource_action_url(@resource_action), notice: "Resource action was successfully created." }
        format.json { render :show, status: :created, location: @resource_action }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resource_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_actions/1 or /resource_actions/1.json
  def update
    respond_to do |format|
      if @resource_action.update(resource_action_params)
        format.html { redirect_to resource_action_url(@resource_action), notice: "Resource action was successfully updated." }
        format.json { render :show, status: :ok, location: @resource_action }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resource_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_actions/1 or /resource_actions/1.json
  def destroy
    @resource_action.destroy

    respond_to do |format|
      format.html { redirect_to resource_actions_url, notice: "Resource action was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_resource_action
    @resource_action = ResourceAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def resource_action_params
    params.require(:resource_action).permit(:name, :class_identification)
  end
end
