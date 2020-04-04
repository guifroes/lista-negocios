class NegociosController < ApplicationController
  before_action :set_negocio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
  # GET /negocios
  # GET /negocios.json
  def index
    @negocios = Negocio.all
    
    estados = Negocio.all.map {|n| n.estado }
    @estados = estados.uniq - ["", nil]
  end

  # GET /negocios/1
  # GET /negocios/1.json
  def show
  end

  # GET /negocios/new
  def new
    @negocio = Negocio.new
    @categorias = Categoria.all.map { |cat| [cat.nome, cat.id] }
  end

  # GET /negocios/1/edit
  def edit
    @categorias = Categoria.all.map { |cat| [cat.nome, cat.id] }
  end

  # POST /negocios
  # POST /negocios.json
  def create
    @negocio = Negocio.new(negocio_params)
    @negocio.categoria_id = params[:categoria_id]
    @negocio.user = current_user
    respond_to do |format|
      if @negocio.save
        format.html { redirect_to negocios_path, notice: 'Negócio criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /negocios/1
  # PATCH/PUT /negocios/1.json
  def update
    if is_current_user_owner(@negocio)
      respond_to do |format|
        @negocio.categoria_id = params[:categoria_id]
        if @negocio.update(negocio_params)
          format.html { redirect_to negocios_path notice: 'Negócio alterado com sucesso.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  # DELETE /negocios/1
  # DELETE /negocios/1.json
  def destroy
    if is_current_user_owner(@negocio)
      @negocio.destroy
      respond_to do |format|
        format.html { redirect_to negocios_url, notice: 'Negócio apagado com sucesso.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negocio
      @negocio = Negocio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negocio_params
      params.require(:negocio).permit(:nome, :descricao, :site, :cep, :logradouro, 
        :numero, :complemento, :bairro, :cidade, :estado, :categoria_id, :facebook, 
        :instagram, :whatsapp, :telefone, :email)
    end
end
