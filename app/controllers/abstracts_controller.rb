class AbstractsController < ApplicationController
  before_action :set_abstract, only: %i[ show edit update destroy ]

  # GET /abstracts or /abstracts.json
  def index
    @abstracts = Abstract.all
  end

  # GET /abstracts/1 or /abstracts/1.json
  def show
  end

  # GET /abstracts/new
  def new
    @abstract = Abstract.new
  end

  # GET /abstracts/1/edit
  def edit
  end

  # POST /abstracts or /abstracts.json
  def create
    @abstract = Abstract.new(abstract_params)

    respond_to do |format|
      if @abstract.save
        format.html { redirect_to abstract_url(@abstract), notice: "Abstract was successfully created." }
        format.json { render :show, status: :created, location: @abstract }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abstract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abstracts/1 or /abstracts/1.json
  def update
    respond_to do |format|
      if @abstract.update(abstract_params)
        format.html { redirect_to abstract_url(@abstract), notice: "Abstract was successfully updated." }
        format.json { render :show, status: :ok, location: @abstract }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abstract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abstracts/1 or /abstracts/1.json
  def destroy
    @abstract.destroy

    respond_to do |format|
      format.html { redirect_to abstracts_url, notice: "Abstract was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abstract
      @abstract = Abstract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abstract_params
      params.require(:abstract).permit(:language_id, :content)
    end
end
