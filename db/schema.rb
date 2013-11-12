# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100812000926) do

  create_table "cargos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone"
    t.string   "celular"
    t.string   "telefone_contato"
    t.string   "email"
    t.string   "sexo"
    t.string   "profissao"
    t.string   "cep"
    t.integer  "cidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_cadastro"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedores", :force => true do |t|
    t.string   "data_cadastro"
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cnpj"
    t.string   "ins_estadual"
    t.string   "telefone"
    t.string   "fax"
    t.string   "email"
    t.string   "site"
    t.string   "cep"
    t.integer  "cidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "data_entrada"
    t.boolean  "status"
    t.integer  "cargo_id"
    t.integer  "cidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "data_cadastro"
    t.string   "nome"
    t.string   "tamanho"
    t.float    "valor_compra"
    t.float    "valor_venda"
    t.integer  "quantidade"
    t.integer  "n_nota_fiscal"
    t.integer  "fornecedore_id"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cidade_id"
    t.integer  "cargo_id"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendas", :force => true do |t|
    t.integer  "produto_id"
    t.integer  "funcionario_id"
    t.integer  "cliente_id"
    t.datetime "data_venda"
    t.integer  "parcelas"
    t.integer  "quantidade"
    t.float    "valor_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
