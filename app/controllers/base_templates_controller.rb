class BaseTemplatesController < ApplicationController
  before_action :set_base_template, only: [:show, :edit, :update, :destroy]

  # GET /base_templates
  # GET /base_templates.json
  def index
    @base_templates = BaseTemplate.all
  end

  # GET /base_templates/1
  # GET /base_templates/1.json
  def show
  end

  # GET /base_templates/new
  def new
    @base_template = BaseTemplate.new
  end

  # GET /base_templates/1/edit
  def edit
  end

  # POST /base_templates
  # POST /base_templates.json
  def create
    @base_template = BaseTemplate.new(base_template_params)

    respond_to do |format|
      if @base_template.save
        format.html { redirect_to @base_template, notice: 'Base template was successfully created.' }
        format.json { render :show, status: :created, location: @base_template }
      else
        format.html { render :new }
        format.json { render json: @base_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_templates/1
  # PATCH/PUT /base_templates/1.json
  def update
    respond_to do |format|
      if @base_template.update(base_template_params)
        format.html { redirect_to @base_template, notice: 'Base template was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_template }
      else
        format.html { render :edit }
        format.json { render json: @base_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_templates/1
  # DELETE /base_templates/1.json
  def destroy
    @base_template.destroy
    respond_to do |format|
      format.html { redirect_to base_templates_url, notice: 'Base template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_template
      @base_template = BaseTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_template_params
      params.require(:base_template).permit(:html_file, :background, :logo, :img_1, :img_2, :img_3, :img_4, :img_5, :text_1, :text_2, :text_3, :text_4, :text_5, :text_6, :text_7, :text_8, :text_9, :text_10)
    end
end
