class Produto < ActiveRecord::Base
  belongs_to :fornecedore
  belongs_to :categoria
  has_many :produto
end

