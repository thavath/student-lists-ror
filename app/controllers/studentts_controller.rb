class StudenttsController < ApplicationController
  before_action :set_studentt, only: [:show, :edit, :update, :destroy]

  # GET /studentts
  # GET /studentts.json
  def index
    @studentts = Studentt.search(params[:search])
  end

  # GET /studentts/1
  # GET /studentts/1.json
  def show
  end

  # GET /studentts/new
  def new
    @studentt = Studentt.new
  end

  # GET /studentts/1/edit
  def edit
  end

  # POST /studentts
  # POST /studentts.json
  def create
    @studentt = Studentt.new(studentt_params)

    respond_to do |format|
      if @studentt.save
        format.html { redirect_to @studentt, notice: 'Studentt was successfully created.' }
        format.json { render :show, status: :created, location: @studentt }
      else
        format.html { render :new }
        format.json { render json: @studentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentts/1
  # PATCH/PUT /studentts/1.json
  def update
    respond_to do |format|
      if @studentt.update(studentt_params)
        format.html { redirect_to @studentt, notice: 'Studentt was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentt }
      else
        format.html { render :edit }
        format.json { render json: @studentt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentts/1
  # DELETE /studentts/1.json
  def destroy
    @studentt.destroy
    respond_to do |format|
      format.html { redirect_to studentts_url, notice: 'Studentt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentt
      @studentt = Studentt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentt_params
      params.require(:studentt).permit(:name, :namejp, :sex, :types, :company, :level, :dayofbirth, :age, :work, :datego, :dateinput, :nationality, :zipcode, :prefecture, :city, :building, :telephone, :education, :email, :remail, :pas, :pass)
    end
end
