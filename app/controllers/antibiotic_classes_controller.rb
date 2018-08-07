class AntibioticClassesController < ApplicationController
  before_action :set_antibiotic_class, only: [:show, :edit, :update, :destroy]

  # GET /antibiotic_classes
  # GET /antibiotic_classes.json
  def index
    @antibiotic_classes = AntibioticClass.all
  end

  # GET /antibiotic_classes/1
  # GET /antibiotic_classes/1.json
  def show
  end

  # GET /antibiotic_classes/new
  def new
    @antibiotic_class = AntibioticClass.new
  end

  # GET /antibiotic_classes/1/edit
  def edit
  end

  # POST /antibiotic_classes
  # POST /antibiotic_classes.json
  def create
    @antibiotic_class = AntibioticClass.new(antibiotic_class_params)

    respond_to do |format|
      if @antibiotic_class.save
        format.html { redirect_to @antibiotic_class, notice: 'Antibiotic class was successfully created.' }
        format.json { render :show, status: :created, location: @antibiotic_class }
      else
        format.html { render :new }
        format.json { render json: @antibiotic_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /antibiotic_classes/1
  # PATCH/PUT /antibiotic_classes/1.json
  def update
    respond_to do |format|
      if @antibiotic_class.update(antibiotic_class_params)
        format.html { redirect_to @antibiotic_class, notice: 'Antibiotic class was successfully updated.' }
        format.json { render :show, status: :ok, location: @antibiotic_class }
      else
        format.html { render :edit }
        format.json { render json: @antibiotic_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antibiotic_classes/1
  # DELETE /antibiotic_classes/1.json
  def destroy
    @antibiotic_class.destroy
    respond_to do |format|
      format.html { redirect_to antibiotic_classes_url, notice: 'Antibiotic class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_antibiotic_class
      @antibiotic_class = AntibioticClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def antibiotic_class_params
      params.require(:antibiotic_class).permit(:class_name)
    end
end
