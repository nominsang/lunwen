class AlternativeTitlesController < ApplicationController
  before_action :set_alternative_title, only: %i[ show edit update destroy ]

  # GET /alternative_titles or /alternative_titles.json
  def index
    @alternative_titles = AlternativeTitle.all
  end

  # GET /alternative_titles/1 or /alternative_titles/1.json
  def show
  end

  # GET /alternative_titles/new
  def new
    @alternative_title = AlternativeTitle.new
  end

  # GET /alternative_titles/1/edit
  def edit
  end

  # POST /alternative_titles or /alternative_titles.json
  def create
    @alternative_title = AlternativeTitle.new(alternative_title_params)

    respond_to do |format|
      if @alternative_title.save
        format.html { redirect_to alternative_title_url(@alternative_title), notice: "Alternative title was successfully created." }
        format.json { render :show, status: :created, location: @alternative_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alternative_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternative_titles/1 or /alternative_titles/1.json
  def update
    respond_to do |format|
      if @alternative_title.update(alternative_title_params)
        format.html { redirect_to alternative_title_url(@alternative_title), notice: "Alternative title was successfully updated." }
        format.json { render :show, status: :ok, location: @alternative_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alternative_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternative_titles/1 or /alternative_titles/1.json
  def destroy
    @alternative_title.destroy

    respond_to do |format|
      format.html { redirect_to alternative_titles_url, notice: "Alternative title was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative_title
      @alternative_title = AlternativeTitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alternative_title_params
      params.require(:alternative_title).permit(:language_id, :title)
    end
end
