class ProdutosController < ApplicationController
  # GET /produtos
  # GET /produtos.xml

  before_filter [:load_categorias, :load_fornecedores], :only=>[:new, :edit, :update, :create]

  def index
    @produtos = Produto.paginate :page => params[:page], :per_page => 2

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produtos }
    end
  end

  # GET /produtos/1
  # GET /produtos/1.xml
  def show
    @produto = Produto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produto }
    end
  end

  # GET /produtos/new
  # GET /produtos/new.xml
  def new
    @produto = Produto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produto }
    end
  end

  # GET /produtos/1/edit
  def edit
    @produto = Produto.find(params[:id])
  end

  # POST /produtos
  # POST /produtos.xml
  def create
    @produto = Produto.new(params[:produto])

    respond_to do |format|
      if @produto.save
        format.html { redirect_to(@produto, :notice => 'Produto was successfully created.') }
        format.xml  { render :xml => @produto, :status => :created, :location => @produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produtos/1
  # PUT /produtos/1.xml
  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        format.html { redirect_to(@produto, :notice => 'Produto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to(produtos_url) }
      format.xml  { head :ok }
    end
  end

  def buscar_produtos
    @produtos = Produto.find(:all, :order => 'nome', :conditions => ['nome LIKE ?', "%#{params[:produto]}%"])

    render :update do |page|
      page.replace_html "res_busca", :partial => "produtos/busca_produtos", :object => @produtos
    end
  end 

end

private
  def load_categorias
    @categoria = Categoria.all.collect {|c| [c.nome, c.id]}
  end
  def load_fornecedores
    @fornecedore = Fornecedore.all.collect {|c| [c.nome, c.id]}
  end

