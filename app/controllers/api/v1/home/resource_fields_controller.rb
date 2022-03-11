class Api::V1::Home::ResourceFieldsController < Api::V1::ApplicationController

  # GET /resource_fields or /resource_fields.json
  def index
    @resource_fields = ResourceField.all
  end

  # GET /resource_fields/1 or /resource_fields/1.json
  def show
  end

  # GET /resource_fields/new
  def new
    @resource_field = ResourceField.new
  end

  # GET /resource_fields/1/edit
  def edit
  end

  # POST /resource_fields or /resource_fields.json
  def create
    @resource_field = ResourceField.new(resource_field_params)

    respond_to do |format|
      if @resource_field.save
        format.html { redirect_to resource_field_url(@resource_field), notice: "Resource field was successfully created." }
        format.json { render :show, status: :created, location: @resource_field }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resource_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_fields/1 or /resource_fields/1.json
  def update
    respond_to do |format|
      if @resource_field.update(resource_field_params)
        format.html { redirect_to resource_field_url(@resource_field), notice: "Resource field was successfully updated." }
        format.json { render :show, status: :ok, location: @resource_field }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resource_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_fields/1 or /resource_fields/1.json
  def destroy
    @resource_field.destroy

    respond_to do |format|
      format.html { redirect_to resource_fields_url, notice: "Resource field was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_resource_field
  #   @resource_field = ResourceField.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  # def resource_field_params
  #   params.require(:resource_field).permit(:name, :type)
  # end
end
