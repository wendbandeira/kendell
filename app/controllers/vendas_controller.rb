class VendasController < ApplicationController
  # GET /vendas
  # GET /vendas.xml

  before_filter [:load_clientes, :load_funcionarios, :load_produtos], :only => [:new, :edit, :update, :create]

  def index
    @vendas = Venda.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vendas }
    end
  end

  # GET /vendas/1
  # GET /vendas/1.xml
  def show
    @venda = Venda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @venda }
    end
  end

  # GET /vendas/new
  # GET /vendas/new.xml
  def new
    @venda = Venda.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @venda }
    end
  end

  # GET /vendas/1/edit
  def edit
    @venda = Venda.find(params[:id])
  end

  # POST /vendas
  # POST /vendas.xml
  def create
    @venda = Venda.new(params[:venda])

    respond_to do |format|
      if @venda.save
        format.html { redirect_to(@venda, :notice => 'Venda was successfully created.') }
        format.xml  { render :xml => @venda, :status => :created, :location => @venda }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @venda.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendas/1
  # PUT /vendas/1.xml
  def update
    @venda = Venda.find(params[:id])

    respond_to do |format|
      if @venda.update_attributes(params[:venda])
        format.html { redirect_to(@venda, :notice => 'Venda was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @venda.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendas/1
  # DELETE /vendas/1.xml
  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy

    respond_to do |format|
      format.html { redirect_to(vendas_url) }
      format.xml  { head :ok }
    end
  end
end

private
def load_clientes
  @clientes = Cliente.all.collect { |c| [c.nome, c.id]}
end
def load_funcionarios
  @funcionario = Funcionario.all.collect { |c| [c.nome, c.id]}
end
def load_produtos
  @produto = Produto.all.collect { |c| [c.nome, c.id]}
end

